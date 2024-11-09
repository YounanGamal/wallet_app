import 'package:flutter/material.dart';
import 'package:wallet_app/modules/add_tab/add_view.dart';
import 'package:wallet_app/modules/home_tab/home_view.dart';
import 'package:wallet_app/modules/notebook_tab/nodebook_view.dart';


class LayoutView extends StatefulWidget {
  LayoutView({super.key});

  static const String routeName = 'layout';

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 1;
  List<Widget> tabs = [
    AddView(),
    HomeView(),
    NodebookView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 60, right: 60, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.add_box_outlined,
                color: currentIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(
                Icons.home_outlined,
                color: currentIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.ad_units_sharp,
                  color: currentIndex == 2 ? Colors.white : Colors.grey,
                )),
          ],
        ),
      ),
      body: tabs[currentIndex],
    );
  }
}
