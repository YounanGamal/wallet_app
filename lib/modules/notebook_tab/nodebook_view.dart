import 'package:flutter/material.dart';

class NodebookView extends StatelessWidget {
  const NodebookView({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 20),

            // Table Layout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  color: Colors.grey.shade200, // Background for the table
                ),
                child: Table(
                  border: const TableBorder.symmetric(
                    inside: BorderSide(color: Colors.blue, width: 1),
                  ),
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2),
                  },
                  children: [
                    const TableRow(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'فلوس',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(
                            child: Text(
                              'عنوان',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (int i = 0; i < 10; i++) // Creates six empty rows
                      const TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(''),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(''),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
