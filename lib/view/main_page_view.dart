import 'dart:async';
import 'package:flutter/material.dart';
import 'package:onboarding_screens/constants/colors_constants.dart';
import 'package:onboarding_screens/constants/image_constants.dart';
import 'package:onboarding_screens/view/cubit/cubit.dart';
import 'package:onboarding_screens/view/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'first_page_view.dart';
part 'second_page_view.dart';
part 'third_page_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, CubitState>(
        builder: (context, state) {
          return Material(
            color: tertiaryColor,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    gradient: RadialGradient(
                        colors: [tertiaryColor, buttonColor, primaryColor],
                        center: Alignment.center,
                        radius: 0.7),
                  ),
                  child: Column(
                    children: [
                      Container(),
                      bodyWidget(state),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                        color: primaryColor,
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: tertiaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(),
                                const SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Send crypto instantly \nto your wallet",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    "Save your cyrptocurrency instantly to yout wallet!",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      // wordSpacing: 2.5,
                                      // height: 1.5,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      context.read<OnboardingCubit>().currentPage(1);
                                    },
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, //yatay bir düzelemde kendinden sonra gelen children ı aldığı değere göre hizalar
                                      children: [
                                        Text(
                                          "Next",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //
                                TextButton(
                                    onPressed: () {
                                      context.read<OnboardingCubit>().currentPage(1);
                                    },
                                    child: const Text(
                                      "Skip",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: primaryColor,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        )))
              ],
            ),
          );
        },
      ),
    );
  }

  Widget bodyWidget(CubitState state) {
    if (state.currentIndex == 0) {
      return const FirstView();
    } else if (state.currentIndex == 1) {
      return const SecondView();
    } else if (state.currentIndex == 2) {
      return const ThirdView();
    } else {
      return Container();
    }
  }
}
