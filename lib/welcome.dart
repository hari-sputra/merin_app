import 'package:flutter/material.dart';
import 'package:merin_app/helper/const.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'src/images/menu-logo.png',
                  width: 140,
                  height: 49,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Image.asset(
                "src/images/welcome.png",
                width: 218,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 28,
                    ),
                    child: Column(
                      children: [
                        const Center(
                          child: Text("Welcome"),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "MeRin is an application where you can set the reminder to take your medicine and put your medication schedule so you would not miss it!",
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Center(
                          child: Text("Sign in with:"),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "src/icons/fb.png",
                              width: 49,
                            ),
                            const SizedBox(
                              width: 34,
                            ),
                            Image.asset(
                              "src/icons/google.png",
                              width: 49,
                            ),
                            const SizedBox(
                              width: 34,
                            ),
                            Image.asset(
                              "src/icons/apple.png",
                              width: 49,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
