import 'package:flutter/material.dart';
import 'package:wallet_app/modules/notebook_tab/nodebook_view.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
// int money =0;
MoneyModel? moneyModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(height: 80),
        const Text(
          'مرحبا',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 35),
        const Text(
          'محفظتك فيها',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
         Text(
          '${moneyModel?.money==null?1000:moneyModel!.money}',
          style: const TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          'جنيه',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        const Spacer(),
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.blue[800],
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                'مصاريفك',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'انت صرفت',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '1500',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NodebookView(),));
                },
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.white)),
                child: const Text(
                  'في اخر اسبوع',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
class MoneyModel{
  int money=0;
  MoneyModel(this.money);
}