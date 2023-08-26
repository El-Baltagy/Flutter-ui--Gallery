import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/screens/0-lay_out/home_screen.dart';
import 'package:test/screens/1-travel_app/utils.dart';
import 'package:test/shared/network/local/cash_helper.dart';
import 'package:test/shared/manager/app_theme.dart';
import 'controller/cubit/bloc_observe.dart';
import 'controller/cubit/theme/theme_cubit.dart';
import 'controller/cubit/travel/cubit.dart';


 void main() async{
   WidgetsFlutterBinding.ensureInitialized();

   await CashHelper.init();
   Bloc.observer = MyBlocObserver();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => ThemeCubit()),
      BlocProvider(create: (context) => TravelCubit()),

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
          home:const MyHomePage()
      ) ,
    );
  }
}
