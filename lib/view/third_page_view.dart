import 'package:flutter/material.dart';
import 'package:onboarding_screens/constants/colors_constants.dart';
import 'package:onboarding_screens/constants/image_constants.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

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
                      child: Image.asset(walletImage3),
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
                              "Make transactions \nsecurely",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const SizedBox(width: double.infinity,
                            child: Text(
                              "Secure way of sending and receving cryptocurrency",
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
                                  
                                ],
                              ),
                            ),
                          ),
                          // 
                          TextButton(onPressed: (){}, child: const Text(
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
  }
}
