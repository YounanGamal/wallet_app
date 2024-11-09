import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/cubit/balance_cubit.dart';
import 'package:wallet_app/cubit/balance_state.dart';

class NodebookView extends StatelessWidget {
  NodebookView({super.key});

  @override
  // Widget build(BuildContext context) {
  //   return BlocConsumer<BalanceCubit, BalanceState>(
  //     builder: (context, state) {
  //       return Scaffold(
  //         backgroundColor: Colors.white,
  //         body: SafeArea(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               const SizedBox(height: 20),
  //               // Title at the top
  //               const Text(
  //                 'في اخر اسبوع',
  //                 style: TextStyle(
  //                   fontSize: 28,
  //                   fontWeight: FontWeight.bold,
  //                   color: Color(0xFF4A6FF0),
  //                 ),
  //               ),
  //               const SizedBox(height: 20),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 20),
  //                 child: Container(
  //
  //                   decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(20),
  //                     border: Border.all(color: Colors.blue, width: 1),
  //                     color: Colors.grey.shade200, // Background for the table
  //                   ),
  //                   child: Column(
  //                     children: [
  //                       Container(
  //                         decoration: BoxDecoration(
  //                           color: Colors.white,
  //                           border: Border.all(
  //                             color: Colors.blue,
  //                             width: 1,
  //                           ),
  //                           borderRadius: const BorderRadius.only(
  //                             topLeft: Radius.circular(20),
  //                             topRight: Radius.circular(20),
  //                           ),
  //                         ),
  //                         child: Row(
  //                           children: [
  //                             const Expanded(
  //                               flex: 1,
  //                               child: Padding(
  //                                 padding: EdgeInsets.all(16.0),
  //                                 child: Text(
  //                                   'فلوس',
  //                                   style: TextStyle(
  //                                     fontSize: 18,
  //                                     fontWeight: FontWeight.bold,
  //                                     color: Colors.black,
  //                                   ),
  //                                   textAlign: TextAlign.center,
  //                                 ),
  //                               ),
  //                             ),
  //                             Container(
  //                               color: Colors.blue,
  //                               height: 56,
  //                               width: 1,
  //                             ),
  //                             const Expanded(
  //                               flex: 2,
  //                               child: Padding(
  //                                 padding: EdgeInsets.all(16.0),
  //                                 child: Text(
  //                                   'عنوان',
  //                                   style: TextStyle(
  //                                     fontSize: 18,
  //                                     fontWeight: FontWeight.bold,
  //                                     color: Colors.black,
  //                                   ),
  //                                   textAlign: TextAlign.center,
  //                                 ),
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: 500, // Adjust height as needed
  //                         child: ListView.builder(
  //                           itemCount: notes.length,
  //                           itemBuilder: (context, index) {
  //                             return Container(
  //                               decoration: BoxDecoration(
  //                                 border: Border.all(
  //                                   color: Colors.blue,
  //                                   width: 1,
  //                                 ),
  //                               ),
  //                               child: Row(
  //                                 children: [
  //                                   Expanded(
  //                                     flex: 1,
  //                                     child: Padding(
  //                                       padding: const EdgeInsets.all(16.0),
  //                                       child: Text(
  //                                         '${notes[index].money}',
  //                                         textAlign: TextAlign.center,
  //                                         style: const TextStyle(fontSize: 18),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                   Container(
  //                                     color: Colors.blue,
  //                                     height: 56,
  //                                     width: 1,
  //                                   ),
  //                                   Expanded(
  //                                     flex: 2,
  //                                     child: Padding(
  //                                       padding: const EdgeInsets.all(16.0),
  //                                       child: Text(
  //                                         '${notes[index].title}',
  //                                         textAlign: TextAlign.center,
  //                                         style: const TextStyle(fontSize: 18),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             );
  //                           },
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //     listener: (context, state) {},
  //   );
  // }
  Widget build(BuildContext context) {
    return BlocConsumer<BalanceCubit, BalanceState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                // Title at the top
                const Text(
                  'في اخر اسبوع',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A6FF0),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 1),
                      color: Colors.grey.shade200, // Background for the table
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'فلوس',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.blue,
                                height: 56,
                                width: 1,
                              ),
                              const Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'عنوان',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        notes.isEmpty
                            ? Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'لا توجد بيانات',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              )
                            : SizedBox(
                                height: (notes.length * 60.0)
                                    .clamp(100, 540), // Limit max height
                                child: ListView.builder(
                                  itemCount: notes.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              color: Colors.blue, width: 1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                '${notes[index].money}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.blue,
                                            height: 56,
                                            width: 1,
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                '${notes[index].title}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}

class NoteBook {
  double money;
  String title;

  NoteBook({required this.title, required this.money});
}

List<NoteBook> notes = [];
