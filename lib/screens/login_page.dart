import 'package:flutter/material.dart';
import 'package:toku_app/components/Button.dart';
import 'package:toku_app/components/cutsom_textfield.dart';
import 'package:toku_app/screens/Rigster_page.dart';
import 'package:toku_app/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                'LOGIN ',
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
            hintText: 'Email',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomeTextField(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: CustomeButton(
              text: 'LOGIN',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'already hava an account?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RegisterPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  ' REGISTER',
                  style: TextStyle(
                    color: Colors.blue,
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
