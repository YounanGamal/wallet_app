import 'package:flutter/material.dart';
import 'package:wallet_app/modules/home_tab/home_view.dart';
import 'package:wallet_app/widget/custom_text_field.dart';

class AddView extends StatefulWidget {
  AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

TextEditingController? controller = TextEditingController();

class _AddViewState extends State<AddView> {
  bool isDeposit = true;
  MoneyModel? moneyModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isDeposit = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: isDeposit
                        ? Colors.grey.shade300
                        : const Color(0xFF4A6FF0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'صرف',
                          style: TextStyle(
                            fontSize: 24,
                            color:
                                isDeposit ? Colors.black : Colors.grey.shade300,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Icon(
                          Icons.remove,
                          size: 60,
                          color: isDeposit
                              ? const Color(0xFF4A6FF0)
                              : Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isDeposit = true;
                      // print(isDeposit);
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: isDeposit
                        ? const Color(0xFF4A6FF0)
                        : Colors.grey.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'إبداع',
                          style: TextStyle(
                            fontSize: 24,
                            color:
                                isDeposit ? Colors.grey.shade300 : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Icon(
                          Icons.add,
                          size: 60,
                          color: isDeposit
                              ? Colors.grey.shade300
                              : const Color(0xFF4A6FF0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
             CustomTextField(
              hintText: 'عنوان',
              fillColor: Colors.white,
              height: 55,
              width: 220,
              cursorColor: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              fillColor: Colors.black,
              height: 55,
              width: 150,
              cursorColor: Colors.white,
              keyboardType: TextInputType.number,
              hintText: '0000',
              onSaved: (newValue) {
                if (newValue != null) {
                  moneyModel?.money += int.parse(newValue);
                  print(newValue);
                  setState(() {

                  });
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
