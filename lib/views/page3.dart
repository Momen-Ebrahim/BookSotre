import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                'assets/images/3.png',
                width: 400,
                height: 400,
              ),
            ),
          ),
          const Text(
            "Create Your Library",
            style: TextStyle(color: kPrimerycolor, fontSize: 30),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Add your favourite books and topics, all latest book from your topics will appear here.",
              style: TextStyle(color: kPrimerycolor, fontSize: 15),
            ),
          ),
        ]),
      ),
    );
  }
}
