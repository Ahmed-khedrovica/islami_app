import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/theming/app_text_styles.dart';

import '../../../core/theming/app_colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  Widget _buildImage(String path, [double width = 300]) {
    return Image.asset(path, width: width);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: AppColors.black,
      globalHeader: SafeArea(child: Image.asset('assets/images/islami_top.png')),
      pages: [
        PageViewModel(
          title: "Welcome To Islami App",
          body: "",
          image: _buildImage("assets/images/intro1.png"),
          decoration: _pageDecoration(),
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: _buildImage("assets/images/intro2.png"),
          decoration: _pageDecoration(),
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: _buildImage("assets/images/intro3.png"),
          decoration: _pageDecoration(),
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: _buildImage("assets/images/intro4.png"),
          decoration: _pageDecoration(),
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage("assets/images/intro5.png"),
          decoration: _pageDecoration(),
        ),
      ],

      done: Text("Finish", style: AppTextStyles.font16GoldBold),
      onDone: () {
        Navigator.pushReplacementNamed(context, 'home');
      },
      back: Text('Back', style: AppTextStyles.font16GoldBold),
      showDoneButton: true,
      showBackButton: true,
      controlsPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      next: Text('Next', style: AppTextStyles.font16GoldBold),
      dotsDecorator: DotsDecorator(
        size: Size(12, 10),
        activeSize: Size(22, 10),
        activeColor: AppColors.primary,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        color: AppColors.grey,
      ),
    );
  }

  PageDecoration _pageDecoration() {
    return PageDecoration(
      titlePadding: EdgeInsets.symmetric(vertical: 10),
      bodyAlignment: Alignment.bottomCenter,
      titleTextStyle: AppTextStyles.font24GoldBold,
      bodyTextStyle: AppTextStyles.font20GoldBold,
      imageFlex: 4,
    );
  }
}
