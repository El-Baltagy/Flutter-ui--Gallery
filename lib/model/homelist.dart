import 'package:flutter/widgets.dart';
import '../screens/1-travel_app/1-splash_screen/splash_sc.dart';
import '../screens/2-introduction_animation/introduction_animation_screen.dart';
import '../screens/3-hotel_booking/hotel_home_screen.dart';
import '../screens/4-fitness_app/fitness_app_home_screen.dart';
import '../screens/5-design_course/home_design_course.dart';
import '../screens/7-food_ui/screens/onboarding_screen.dart';
import '../screens/8-learning/screens/home_screen.dart';

class HomeList {
  HomeList({
    required this.navigateScreen,
    required this.imagePath ,
  });

 final  Widget navigateScreen;
  final String imagePath;

  static List<HomeList> homeList = [

    HomeList(
      imagePath: 'assets/page-1/images/rectangle-42-bg.png',
      navigateScreen: const SplashTravelSC(),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/introduction_animation.png',
      navigateScreen: const IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/fitness_app/fitness_app.png',
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: DesignCourseHomeScreen(),
    ),

    // HomeList(
    //   imagePath: 'assets/images/background.jpg',
    //   navigateScreen: const MainSectionRSSC(),
    // ),
    HomeList(
      imagePath: 'assets/images/img-vegan-apricot-tart.jpeg',
      navigateScreen: const OnboardingFoodSc(),
    ),
    HomeList(
      imagePath: 'assets/images/img_saly24.png',
      navigateScreen: const HomeScCourses(),
    ),
  ];
}
