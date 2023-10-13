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
              
              child: Container(

                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
                
                child: Column(
                  children: [
                    Container(),
                    Expanded(
                      child: Image.asset(walletImage),
                    )
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
                          const SizedBox(width: double.infinity,
                            child: Text(
                              "Send crypto instantly \nto your wallet",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const SizedBox(width: double.infinity,
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
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
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
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(color: primaryColor)),
                              ),
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .center, //yatay bir düzelemde kendinden sonra gelen children ı aldığı değere göre hizalar
                                children: [
                                  Text(
                                    "Skip",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: buttonColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
