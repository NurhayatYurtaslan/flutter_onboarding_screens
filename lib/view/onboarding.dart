import 'package:flutter/material.dart';
import 'package:onboarding_screens/constants/colors.dart';
import 'package:onboarding_screens/constants/image.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tertiaryColor,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(walletImage),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: tertiaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(walletImage),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
