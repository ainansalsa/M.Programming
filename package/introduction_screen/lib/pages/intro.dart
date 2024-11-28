import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import './login.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "title of first page",
          body: "here you can write the description of the page",
          image: Center(
            child: Container(
              width: 350,
              height: 350,
              child: Lottie.asset(
                "assets/lotties/laptop.json",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "title of second page",
          body: "here you can write the description of the page",
          image: Center(
            child: Container(
              width: 350,
              height: 350,
              child: Lottie.asset(
                "assets/lotties/login.json",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
      done: const Text("Login", style: TextStyle(fontWeight: FontWeight.w500)),
      showNextButton: true,
      next: Text("Next >>"),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }
}