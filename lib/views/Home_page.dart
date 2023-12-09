import 'package:book_store/data/signin_data.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 40),
        itemCount: signindata.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(children: [
              Text("Email: " + signindata[index].email),
              const SizedBox(
                height: 10,
              ),
              Text("Password: " + signindata[index].password)
            ]),
          );
        },
      ),
    );
  }
}
