import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Welcome to Gada Electronics",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            body:
                "Gada Electronics is your trusted \npartner in bringing cutting-edge \nelectronics to your fingertips.",
            image: Image.asset(
              "assets/images/jethalal-img-2.png",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Discover a World of Possibilities",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            body:
                "Explore a range of electronics renowned for their durability and performance.",
            image: Image.asset(
              "assets/images/jethalal-img-1.png",
              height: 300,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Customer-Centric Approach",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            body:
                " Your satisfaction is our priority. Our dedicated support team is here for you.",
            image: Image.asset(
              "assets/images/Nattubagga.png",
              height: 400,
              width: 400,
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        next: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
        done: Text(
          "Done",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(
            10.0,
          ),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black12,
          activeColor: Colors.yellow,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
