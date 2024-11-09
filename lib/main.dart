import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/cubit/balance_cubit.dart';
import 'package:wallet_app/layout/layout_view.dart';
import 'package:wallet_app/modules/splash/splash_view.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BalanceCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:SplashView.routeName,
        routes: {
          SplashView.routeName:(context)=>SplashView(),
          LayoutView.routeName: (context) => LayoutView(),
        },
      ),
    );
  }
}
