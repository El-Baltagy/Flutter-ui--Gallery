//snak bar
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

showSnackBar(
    BuildContext context, String text,{
      int sec=2,
      Color colorText=Colors.white,
      Color backgroundColor=Colors.red
    }) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content:
      Text(text,
        style: TextStyle(color: colorText,fontSize: 17.sp),),
      duration: Duration(seconds: sec),
      backgroundColor: backgroundColor,
    ),
  );
}


class GoPage{
  static void pushReplacement(
      context, {
        required Widget path,
        var curve = Curves.fastEaseInToSlowEaseOut,
        double x=-2,
        double y=0,
      }
      ) =>
      Navigator.pushReplacement(
          context,
          _createRoute(Sc: path,curve:curve,X:x ,Y:y ));

  static void navigateAndFinish(
      context,
      widget,
      {bool Rt = false}
      ) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (route) =>Rt,
      );

  static void  push(context, {
    required Widget path,
    var curve = Curves.fastEaseInToSlowEaseOut,
    double y=0.2,
    double x=0,
  }) {
    Navigator.
    push(context,_createRoute(Sc: path,curve:curve,X:x ,Y:y ));
  }

  static _createRoute({
    required Widget Sc,
    required var curve,
    required double X,Y,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Sc,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(X,Y);
        const end = Offset.zero;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}



TextFormField buildTextFormField({
  required String labelTitle,
  Function(String)? onChange,
  String? Function(String?)? validator,
  TextEditingController? controller,
  FocusNode? focusNode,
  bool isPassword=false,
  IconData? suffix,
  IconData? prefix,
  Function(String)? onSubmit,
  Function()? suffixPressed,
  TextInputType Type=TextInputType.emailAddress,
  EdgeInsetsGeometry? padding=const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
  InputBorder? border= const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
  )
}) {
  return TextFormField(
    // textAlign: TextAlign.center,
    onFieldSubmitted: onSubmit,
    maxLength: 1,
    style: TextStyle(color: primaryColor),
    validator: validator ,
    obscureText: isPassword,
    keyboardType:Type,
    controller:controller ,
    focusNode: focusNode,
    cursorColor: primaryColor,
    onChanged: onChange,
    decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: suffixPressed, icon: Icon(suffix,color: primaryColor,)),
        prefixIcon: Icon(prefix,color: primaryColor) ,
        labelText: labelTitle,
        contentPadding:  padding,
        border: border,
        counterStyle: TextStyle(
            color: primaryColor
        ),
        labelStyle: TextStyle(
            color: primaryColor
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey,width: 1
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: primaryColor,width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    ),
  );
}


Widget myDivider({
  double height=2.0,
  Color color =primaryColor
}) => Padding(
  padding: const EdgeInsetsDirectional.only(
    end:30.0,start: 10,
  ),
  child: Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0,),
      color: color,
    ),

  ),
);