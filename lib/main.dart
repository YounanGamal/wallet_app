import 'package:flutter/material.dart';
import 'package:wallet_app/layout/layout_view.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:LayoutView.routeName ,
      routes: {
        LayoutView.routeName:(context)=>LayoutView(),
      },
    );
  }
}
