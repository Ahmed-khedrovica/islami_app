import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/theming/app_colors.dart';
import 'package:islami/features/sebha/ui/widgets/sebha_body.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.black.withAlpha(120),
                    AppColors.black.withAlpha(220),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.4],
                ),
              ),
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/images/sebha_bg.png',
              ),
            ),
          ),
          Column(
            crossAxisAlignment: .stretch,
            children: [
              Image.asset('assets/images/islami_top.png'),
              Text(
                'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16,),
              SebhaBody(),
            ],
          ),
        ],
      ),
    );
  }
}

