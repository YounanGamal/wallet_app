import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/cubit/balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit() : super(DepositState());

  double deposit = 0;
  double withdrawal = 0;

  void operation({required bool isDeposit, required double money}) {
    if (isDeposit) {
      deposit += money;
      emit(DepositState());
    } else {
      deposit -= money;
      withdrawal += money;
      emit(WithdrawalState());
    }
  }
}
