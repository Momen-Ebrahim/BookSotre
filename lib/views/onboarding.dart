import 'package:book_store/constants.dart';
import 'package:book_store/views/page1.dart';
import 'package:book_store/views/page2.dart';
import 'package:book_store/views/page3.dart';
import 'package:book_store/views/sign_in.dart';
import 'package:book_store/views/sign_in_view.dart';

import 'package:book_store/views/sign_up_view.dart';
import 'package:book_store/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  Widget content = Container();
  var _currentPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
            onPageChanged: (index) {
              setState(() {
                _currentPage = index == 2;
              });
            },
            controller: _pageController,
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ]),
        Container(
            alignment: const Alignment(0, 0.8),
            child: _currentPage
                ? Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: CustomButton(
                              color: kPrimerycolor,
                              title: "sign up",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const SignUpView(),
                                ));
                                // final pref =
                                //           await SharedPreferences.getInstance();
                                //       pref.setBool('showhome', true);
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "you have account ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (ctx) => const Signin()));
                                    // final pref =
                                    //     await SharedPreferences.getInstance();
                                    // pref.setBool('showhome', true);
                                  },
                                  child: const Text("sign in"))
                            ],
                          )
                        ]),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          child: const Text("skip",
                              style: TextStyle(color: kPrimerycolor)),
                          onTap: () {
                            _pageController.jumpToPage(2);
                          }),
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                      ),
                      GestureDetector(
                        child: const Text("next",
                            style: TextStyle(color: kPrimerycolor)),
                        onTap: () {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                      )
                    ],
                  ))
      ]),
    );
  }
}
