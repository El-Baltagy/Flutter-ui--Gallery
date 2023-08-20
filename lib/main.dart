import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/screens/1-splash_screen/splash_sc.dart';
import 'package:test/shared/network/local/cash_helper.dart';
import 'package:test/shared/widget/preview/utils.dart';
import '../../../controller/cubit/home/cubit.dart';
import 'package:test/shared/manager/app_theme.dart';
import 'controller/cubit/bloc_observe.dart';
import 'controller/cubit/theme/theme_cubit.dart';


 void main() async{
   WidgetsFlutterBinding.ensureInitialized();

   await CashHelper.init();
   Bloc.observer = MyBlocObserver();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => ThemeCubit()),
      BlocProvider(create: (context) => homeCubit()),

    ],
    child: const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>MaterialApp(
          title: 'test',
          debugShowCheckedModeBanner: false,
          scrollBehavior: MyCustomScrollBehavior(),
          theme: lightTheme,
          home:SplashSc()
      ) ,
    );
  }
}
