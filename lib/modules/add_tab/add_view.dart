import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/cubit/balance_cubit.dart';
import 'package:wallet_app/cubit/balance_state.dart';
import 'package:wallet_app/modules/notebook_tab/nodebook_view.dart';
import 'package:wallet_app/widget/custom_text_field.dart';

class AddView extends StatefulWidget {
  AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

TextEditingController? controller = TextEditingController();

class _AddViewState extends State<AddView> {
  bool isDeposit = true;
  double deposit = 0;
  double withdrawal = 0;
  TextEditingController? titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<BalanceCubit>(context);
    return BlocConsumer<BalanceCubit, BalanceState>(
      builder: (context, state) {
        return Stack(
          children: [
            Row(
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
                              color: isDeposit
                                  ? Colors.black
                                  : Colors.grey.shade300,
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
                              color: isDeposit
                                  ? Colors.grey.shade300
                                  : Colors.black,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                CustomTextField(
                  controller: titleController,
                  hintText: 'عنوان',
                  fillColor: Colors.white,
                  height: 55,
                  width: 220,
                  cursorColor: Colors.black,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  fillColor: Colors.black,
                  height: 55,
                  width: 150,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.number,
                  hintText: '0000',
                  onFieldSubmitted: (money) {
                    if (isDeposit) {
                      cubit.operation(
                          isDeposit: isDeposit, money: double.parse(money));
                      notes.add(NoteBook(
                          title: titleController!.text,
                          money: double.parse(money)));
                    } else {
                      cubit.operation(
                          isDeposit: isDeposit, money: double.parse(money));
                      notes.add(NoteBook(
                          title: titleController!.text,
                          money: double.parse(money)));
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        );
      },
      listener: (context, state) {
        if (state is DepositState) {
          deposit = BlocProvider.of<BalanceCubit>(context).deposit;
        } else {
          withdrawal = BlocProvider.of<BalanceCubit>(context).withdrawal;
        }
      },
    );
  }

// Widget build(BuildContext context) {
//   return Stack(
//     children: [
//       Expanded(
//         child: Row(
//           children: [
//             Expanded(
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     isDeposit = false;
//                   });
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height,
//                   color: isDeposit
//                       ? Colors.grey.shade300
//                       : const Color(0xFF4A6FF0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'صرف',
//                         style: TextStyle(
//                           fontSize: 24,
//                           color:
//                               isDeposit ? Colors.black : Colors.grey.shade300,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Icon(
//                         Icons.remove,
//                         size: 60,
//                         color: isDeposit
//                             ? const Color(0xFF4A6FF0)
//                             : Colors.grey.shade300,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     isDeposit = true;
//                     // print(isDeposit);
//                   });
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height,
//                   color: isDeposit
//                       ? const Color(0xFF4A6FF0)
//                       : Colors.grey.shade300,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'إبداع',
//                         style: TextStyle(
//                           fontSize: 24,
//                           color:
//                               isDeposit ? Colors.grey.shade300 : Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Icon(
//                         Icons.add,
//                         size: 60,
//                         color: isDeposit
//                             ? Colors.grey.shade300
//                             : const Color(0xFF4A6FF0),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 80,
//           ),
//            CustomTextField(
//             hintText: 'عنوان',
//             fillColor: Colors.white,
//             height: 55,
//             width: 220,
//             cursorColor: Colors.black,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           CustomTextField(
//             fillColor: Colors.black,
//             height: 55,
//             width: 150,
//             cursorColor: Colors.white,
//             keyboardType: TextInputType.number,
//             hintText: '0000',
//             onFieldSubmitted:(p0) {
//               print(p0);
//             },
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//         ],
//       )
//     ],
//   );
// }
}
