import 'package:book_store/constants.dart';
import 'package:book_store/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:book_store/widgets/custom_switch_button.dart';
import 'package:book_store/widgets/form_sign_up_admin.dart';
import 'package:book_store/widgets/form_sign_up_customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 250,
            height: 200,
          ),
          const Center(
            child: Text(
              'SIGN UP',
              style: TextStyle(fontSize: 28),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  if (state is SignUpUser || state is SignUpInitial) {
                    return CustomSwitchButton(
                      onTap: () {
                        BlocProvider.of<SignUpCubit>(context).signUpUser();
                      },
                      color: kPrimerycolor,
                      title: 'Cutomer',
                    );
                  } else {
                    return CustomSwitchButton(
                      onTap: () {
                        BlocProvider.of<SignUpCubit>(context).signUpUser();
                      },
                      color: const Color.fromARGB(15, 255, 255, 255),
                      title: 'Cutomer',
                    );
                  }
                },
              ),
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  if (state is SignUpAdmin) {
                    return CustomSwitchButton(
                      onTap: () {
                        BlocProvider.of<SignUpCubit>(context).signUpAdmin();
                      },
                      color: kPrimerycolor,
                      title: 'Admin',
                    );
                  } else {
                    return CustomSwitchButton(
                      onTap: () {
                        BlocProvider.of<SignUpCubit>(context).signUpAdmin();
                      },
                      color: const Color.fromARGB(15, 255, 255, 255),
                      title: 'Admin',
                    );
                  }
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<SignUpCubit, SignUpState>(
            builder: (context, state) {
              if (state is SignUpInitial) {
                return const FormSignUpCustomer();
              } else if (state is SignUpAdmin) {
                return const FormSignUpAdmin();
              } else {
                return const FormSignUpCustomer();
              }
            },
          ),
        ],
      ),
    );
  }
}
