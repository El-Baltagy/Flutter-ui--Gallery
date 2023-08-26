import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:test/shared/manager/app_assets.dart';
import 'package:test/shared/manager/app_color.dart';

import '../../../shared/manager/app_methods.dart';
import '../2-layout/lay_out.dart';



class SplashTravelSC extends StatefulWidget {
  const SplashTravelSC({Key? key}) : super(key: key);

  @override
  State<SplashTravelSC> createState() => _SplashTravelSCState();
}

class _SplashTravelSCState extends State<SplashTravelSC> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 4,milliseconds: 500), _goNext);
  }
  _goNext() {
    // bool? _onBoarding=CashHelper.getBoolean(key:'onBoarding');
    // if (_onBoarding==null) {
    //   GoPage.navigateAndFinish(context, OnBoardingSC());
    // }  else{
      GoPage.navigateAndFinish(context, LayOutSc());
    // }

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColor.whiteColor,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 180,
            child:ColorFiltered(
              colorFilter: const ColorFilter.mode(
                  AppColor.primaryColor,
                  BlendMode.srcATop),
              child: Lottie.asset(AppAsset.animyJson,height: 130.h,width: 150.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children:  [
              const SizedBox(
                width: 70,
              ),
              DefaultTextStyle(
                style:  const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  color:AppColor.primaryColor,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Hotels App',
                      speed: const Duration(milliseconds: 250),),

                  ],

                ),
              )
            ],
          )
          ,
        ],
      ),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}