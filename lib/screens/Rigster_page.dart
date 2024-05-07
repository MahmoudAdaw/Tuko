// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toku_app/components/Button.dart';
import 'package:toku_app/components/cutsom_textfield.dart';
import 'package:toku_app/screens/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Column(children: [
          const Spacer(
            flex: 2,
          ),
          const Text(
            'Touk App',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Row(
            children: [
              Text(
                'REGISTER ',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomeTextField(
            hintText: 'user Name',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomeTextField(
            hintText: 'Email',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomeTextField(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomeTextField(
            hintText: 'Confirme Password',
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginPage();
                  },
                ),
              );
            },
            child: CustomeButton(
              text: ' REGISTER',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'don\'t have an account?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  ' Login',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ]),
      ),
    );
  }
}
