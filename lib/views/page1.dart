import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: Center(
              child: Image.asset(
                'assets/images/1.png',
                width: 400,
                height: 400,
              ),
            ),
          ),
          const Text(
            "Reading Offline",
            style: TextStyle(color: kPrimerycolor, fontSize: 30),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Reading books at anytime anywhere, save your time and data!",
              style: TextStyle(color: kPrimerycolor, fontSize: 15),
            ),
          ),
        ]),
      ),
    );
  }
}
