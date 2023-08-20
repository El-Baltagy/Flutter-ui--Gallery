import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../shared/manager/app_assets.dart';
import '../../shared/manager/app_color.dart';
import '../../shared/manager/app_methods.dart';
import '../../shared/network/local/cash_helper.dart';
import '../../shared/widget/preview/entrance_fader.dart';
import '../3-layout/lay_out.dart';


class BoardingMoadel {
  final String image;
  final String title;
  final String body;
  final bool isFirst;

  BoardingMoadel({required this.image,this.isFirst=false,required this.title,required this.body});
}

class OnBoardingSC extends StatefulWidget {
  @override
  State<OnBoardingSC> createState() => _OnBoardingSCState();
}

class _OnBoardingSCState extends State<OnBoardingSC> {
  bool isLast=false;
  bool isfirst=true;
  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            TextButton(
                onPressed: (){
                  submit();
                },
                child: const Text('SKIP',style: TextStyle(color: primaryColor),)
            )
          ],
        ),
        body:Column(
          children: [
            const Padding(padding: EdgeInsets.all(30)),
            Expanded(
              child: PageView.builder(
                controller: boardController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>BoardingItem(list[index]) ,
                itemCount: list.length,
                onPageChanged: ( int value) {
                  setState(() {
                    if (value==list.length-1){
                      isLast=true;
                    }
                    else{isLast=false;}
                    if (value==0){
                      isfirst=true;}
                    else{isfirst=false;}
                  });

                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    !isfirst? TextButton(
                      child:  Text('PREVIOUS',style: TextStyle(color: primaryColor),),
                      onPressed: (){
                        boardController.previousPage(duration: const Duration(milliseconds: 700),
                            curve: Curves.fastLinearToSlowEaseIn);
                      },
                    ):Container(),
                    SmoothPageIndicator(
                      controller: boardController,
                       effect:  const ScrollingDotsEffect(
                          activeStrokeWidth: 2.6,
                          activeDotScale: 1.3,
                          maxVisibleDots: 5,
                         activeDotColor:primaryColor ,
                          fixedCenter: true,
                          dotColor: Colors.grey,
                          radius: 8,
                          spacing: 10,
                          dotHeight: 12,
                          dotWidth: 12,
                         ),
                      // ExpandingDotsEffect(
                      //   dotColor: Colors.grey,
                      //   activeDotColor: primaryColor,
                      //   dotHeight: 10,
                      //   expansionFactor: 4,
                      //   dotWidth: 10,
                      //   spacing: 5.0,
                      // ),
                      count: list.length,
                    ),
                    TextButton(
                      child:  Text(
                        !isLast?'NEXT':'SKIP',style: TextStyle(color: primaryColor),),
                      onPressed: (){
                        if(isLast){
                          submit();
                        }else {
                          boardController.nextPage(duration: const Duration(milliseconds: 700),
                              curve: Curves.fastLinearToSlowEaseIn);
                        }
                      },
                    ),
                  ]),
            ),
          ],
        )
    );
  }


  List<BoardingMoadel> list=[
    BoardingMoadel(
      image: AppAsset.hotel,
      isFirst: true,
      title: 'Welcome To travel App',
      body: 'All You need to Know about any hotel With Our App ' ,
    ),
    BoardingMoadel(
      image: AppAsset.boar2,
      title: 'Discover Amazing hotels',
      body: 'Discover  more than 2k hotel review' ,
    ),
    BoardingMoadel(
      image: AppAsset.boar3,
      title: 'Enjoy The moment',
      body: '' ,
    ),
  ];

  void submit() {
    CashHelper.saveData(
      key: 'onBoarding',
      value: true,
    ).then((value)
    {
      if (value) {
        GoPage.pushReplacement(context, path: LayOutSc());
      }
    });
  }

  Widget BoardingItem(BoardingMoadel moadel)=> Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: EntranceFader(
          child: Transform.rotate(
            angle:moadel.isFirst? pi / 2:0 ,
            child: Image(
              width: double.maxFinite,
              image: AssetImage(moadel.image),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(moadel.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold,fontSize: 24,color: primaryColor
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(moadel.body,
          style: const TextStyle(
              fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
    ],
  );
}
