import 'package:flutter/material.dart';
import 'package:merin_app/components/button.dart';
import 'package:merin_app/helper/const.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'src/images/menu-logo.png',
                  width: 140,
                  height: 49,
                ),
                const SizedBox(
                  height: 22,
                ),
                Image.asset(
                  "src/images/welcome.png",
                  width: 218,
                ),
                const SizedBox(
                  height: 58,
                ),
                Text(
                  "Sign Up AS",
                  style: textStylePoppins.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                MyButton(
                  buttonText: "Patient",
                  buttonColor: primaryColor,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                MyButton(
                  buttonText: "Pharmacist",
                  buttonColor: primaryColor,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: textStylePoppins.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/signin", (route) => false);
                      },
                      child: Text(
                        "Sign In",
                        style: textStylePoppins.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
