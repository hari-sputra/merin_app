import 'package:flutter/material.dart';
import 'package:merin_app/components/button.dart';
import 'package:merin_app/helper/const.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                    height: 48,
                  ),
                  TextFormField(
                    cursorColor: primaryColor,
                    style: textStylePoppins.copyWith(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Username or E-mail',
                      hintStyle: textStylePoppins.copyWith(
                        color: primaryColor.withOpacity(.4),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          left: 25,
                        ),
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            "src/icons/email.png",
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                        borderSide: const BorderSide(
                          color: primaryColor, // warna border hijau
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                        borderSide: const BorderSide(
                          color: primaryColor, // warna border hijau
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                        borderSide: const BorderSide(
                          color:
                              primaryColor, // warna border tetap hijau ketika aktif
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  TextFormField(
                    cursorColor: primaryColor,
                    style: textStylePoppins.copyWith(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: textStylePoppins.copyWith(
                        color: primaryColor.withOpacity(.4),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          left: 25,
                        ),
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            "src/icons/lock.png",
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                        borderSide: const BorderSide(
                          color: primaryColor, // warna border hijau
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                        borderSide: const BorderSide(
                          color: primaryColor, // warna border hijau
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80.0),
                        borderSide: const BorderSide(
                          color:
                              primaryColor, // warna border tetap hijau ketika aktif
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  MyButton(
                    buttonText: "Sign In",
                    buttonColor: primaryColor,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t have an account?",
                        style: textStylePoppins.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/signup", (route) => false);
                        },
                        child: Text(
                          "Sign Up",
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
      ),
    );
  }
}
