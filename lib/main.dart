import 'package:book_store/simple_bloc_observer.dart';
import 'package:book_store/views/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'SofiaProBold'),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
