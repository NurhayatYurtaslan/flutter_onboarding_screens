import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:onboarding_screens/view/cubit/state.dart';

class OnboardingCubit extends Cubit<CubitState> {
  OnboardingCubit() :super(CubitState(0));
  
  void currentPage(int i){
    emit(CubitState(i));
  }
}