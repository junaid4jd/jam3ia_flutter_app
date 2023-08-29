import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:jam3ia_flutter_app/res/colors.dart';
import 'package:jam3ia_flutter_app/view/authentication/login_view.dart';
import 'package:jam3ia_flutter_app/view/authentication/phone_view.dart';





class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  final List<Introduction> list = [
    Introduction(
      title: 'Welcome Screen',
      subTitle: 'Welcome, join Jamzia and revolutionize the way you manage committee finances and tasks',
      imageUrl: 'assets/images/slider1.jpg',
    ),
    Introduction(
      title: 'Features Introduction',
      subTitle: 'Elevate your circle\'s potential with our suite of innovative features.',
      imageUrl: 'assets/images/slider2.jpg',
    ),
    Introduction(
      title: 'Join the Circles',
      subTitle: 'Connect, create, and catalyze change alongside dynamic circles within Jamzia\'s vibrant community.',
      imageUrl: 'assets/images/slider3.jpg',
    ),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreenOnboarding(
        backgroudColor: AppColors.whiteColor,
        introductionList: list,
        skipTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        onTapSkipButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VerifyPhoneView(),
            ), //MaterialPageRoute
          );
        },
      ),
    );
  }
}

