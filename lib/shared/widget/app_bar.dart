import 'package:flutter/material.dart';
import 'package:test/shared/manager/app_methods.dart';
import 'package:test/shared/widget/app_theme.dart';

import '../../screens/0-lay_out/home_screen.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key,  this.multiple, this.function,this.isHomeAppBar=false});

  final bool? multiple;
  final bool isHomeAppBar;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          isHomeAppBar? Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: SizedBox(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
            ),
          ):
          IconButton(onPressed: (){
            Navigator.canPop(context)?
                Navigator.of(context).pop():
                GoPage.navigateAndFinish(context, const MyHomePage());
          }, icon: Icon(Icons.arrow_back)),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Flutter UI Gallery',
                  style: TextStyle(
                    fontSize: 22,
                    color: isHomeAppBar?isLightMode ? AppTheme.darkText : AppTheme.white:
                    !isLightMode ? AppTheme.darkText : AppTheme.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
         if (isHomeAppBar) Padding(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
              color: isLightMode ? Colors.white : AppTheme.nearlyBlack,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                    borderRadius:
                    BorderRadius.circular(AppBar().preferredSize.height),
                    onTap: function,
                    child: Icon(
                      multiple! ? Icons.dashboard : Icons.view_agenda,
                      color: isLightMode ? AppTheme.dark_grey : AppTheme.white,
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}