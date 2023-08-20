import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/shared/manager/app_color.dart';
import 'package:test/shared/widget/preview/utils.dart';
import '../../controller/cubit/home/cubit.dart';
import '../../controller/cubit/home/states.dart';
import '../../shared/widget/preview/entrance_fader.dart';
import '../4-over_view/over_view_sc.dart';
import '../5-photo/photo_sc.dart';
import '../6-review/review_sc.dart';



class LayOutSc extends StatelessWidget {
   LayOutSc();

  int current = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BlocBuilder<homeCubit,homeStates>(
        builder: (context, state) {
          final h=MediaQuery.of(context).size.height;
          double baseWidth = 375;
          double fem = MediaQuery.of(context).size.width / baseWidth;
          double ffem = fem * 0.97;
          return
            DefaultTabController(
              length:list.length,
              initialIndex: 0,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  NestedScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      headerSliverBuilder: (context, innerBoxIsScrolled) => [
                        SliverAppBar(backgroundColor: Colors.transparent,
                          leadingWidth: double.maxFinite,
                          expandedHeight: h*0.38,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Column(
                              children: [

                                PreferredSize( preferredSize: Size(double.infinity, 260.h),
                                  child:  EntranceFader(
                                    duration: const Duration(milliseconds: 900),
                                    delay: const Duration(seconds: 1),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(30.h, 56*fem, 20.w, 22.h),
                                      decoration: BoxDecoration (
                                        gradient: const LinearGradient (
                                          begin: Alignment(0.003, 0),
                                          end: Alignment(0, 1),
                                          colors: <Color>[Color(0x7f000000), Color(0x7f000000)],
                                          stops: <double>[0, 1],
                                        ),
                                        image: const DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/rectangle-42-bg.png',
                                          ),
                                        ),
                                        borderRadius: BorderRadius.only (
                                          bottomLeft: Radius.circular(72*fem),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [

                                          Container(
                                            // autogroupfnwkmzw (YQyQkmAHxXa5p8nWaofNWK)
                                            margin: EdgeInsets.only(bottom: 50.h,top: 10.h ),

                                            width: double.infinity,
                                            height: 100.h,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {},
                                                      child: SizedBox(
                                                        // savedproductFh9 (0:200)
                                                        width: 34*fem,
                                                        height: 34*fem,
                                                        child: Image.asset(
                                                          'assets/page-1/images/saved-product-ri3.png',
                                                          width: 34*fem,
                                                          height: 34*fem,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8*fem,
                                                    ),
                                                    InkWell(
                                                      // savedproductyt3 (0:201)
                                                      onTap: () {},
                                                      child: SizedBox(
                                                        width: 34*fem,
                                                        height: 34*fem,
                                                        child: Image.asset(
                                                          'assets/page-1/images/saved-product.png',
                                                          width: 34*fem,
                                                          height: 34*fem,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10*fem,
                                                    ),
                                                    InkWell(
                                                      // shareGcF (0:202)
                                                      onTap: () {},
                                                      child: SizedBox(
                                                        width: 34*fem,
                                                        height: 34*fem,
                                                        child: Image.asset(
                                                          'assets/page-1/images/share-uBd.png',
                                                          width: 34*fem,
                                                          height: 34*fem,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            // frame1000001266PB5 (0:203)
                                            margin: EdgeInsets.only(right: 30.h),
                                            width: 240.w,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Baked Pancakes ',
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 24*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2575*ffem/fem,
                                                    color: AppColor.whiteColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  // frame1000001181dr7 (0:205)
                                                  width: double.infinity,
                                                  height: 20.h,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      //stars
                                                      Container(
                                                        // frame1000001180Mn7 (0:206)
                                                        width: 115*fem,
                                                        height: 20*fem,
                                                        padding: EdgeInsets.only(right: 10.h),
                                                        child: Image.asset(
                                                          'assets/page-1/images/frame-1000001180.png',
                                                          width: 115*fem,
                                                          height: 20*fem,
                                                        ),
                                                      ),
                                                      //text

                                                      SizedBox(
                                                        // frame1000001203H9y (0:218)
                                                        height: double.infinity,
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              // min399 (0:219)
                                                              padding: EdgeInsets.only(right: 13*fem),
                                                              child: Text(
                                                                '8,433',
                                                                style: SafeGoogleFont (
                                                                  'SF Pro Text',
                                                                  fontSize: 16*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.2575*ffem/fem,
                                                                  color: AppColor.whiteColor,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // minm59 (0:220)
                                                              'reviews',
                                                              style: SafeGoogleFont (
                                                                'SF Pro Text',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.2575*ffem/fem,
                                                                color: AppColor.whiteColor,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),

                              ],
                            ),
                          ),
                        ),
                        SliverAppBar(
                            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            toolbarHeight: h*0.048,
                            pinned: true,
                            bottom: PreferredSize( preferredSize: Size(double.infinity, h*0.02*0.4),
                              child:  Column(
                                children: [
                                  const buildTabBar(),
                                  SizedBox(
                                    height: 10.h,
                                  )
                                ],
                              ),
                            )
                        ),
                      ],
                      body:
                      BlocBuilder<homeCubit,homeStates>(builder:
                      (context, state) {
                        final cubit=BlocProvider.of<homeCubit>(context,listen: false);
                      return  PageView.builder(
                            onPageChanged: (value) {
                              DefaultTabController.of(context).animateTo(value);
                              cubit.changIndex(value);
                            },
                            itemCount: pages.length,
                            itemBuilder: (context, index) =>pages[cubit.currentIndex]);
                      })
                  ),
                  BlocProvider.of<homeCubit>(context).currentIndex==0?
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:18*fem),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13*fem),
                      width: double.infinity,
                      height: 74*fem,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // button2aHV (0:234)
                            width: 150.w,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(12*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Book Now',
                                style: SafeGoogleFont (
                                  'SF Pro Display',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            // button2FeX (0:235)
                            width: 150.w,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: AppColor.whiteOpcColor,
                              border: Border.all(color: AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(12*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Contact',
                                style: SafeGoogleFont (
                                  'SF Pro Display',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ):
                  Container(
                    padding: EdgeInsets.fromLTRB(16*fem, 13*fem, 16*fem, 13*fem),
                    width: 375*fem,
                    height: 74*fem,
                    decoration: const BoxDecoration (
                      color: AppColor.whiteColor,
                    ),
                    child: Container(
                      // button2AUw (0:303)
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color:  AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(12*fem),
                      ),
                      child: Center(
                        child: Text(
                          BlocProvider.of<homeCubit>(context).currentIndex==1?'Upload a photo':'Write a review',
                          style: SafeGoogleFont (
                            'SF Pro Display',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
        },
      ),
    );
  }
}


List<Widget>pages = [
  const OverViewSC(),
  const PhotoSc(),
  const ReviewSc(),

];
class buildTabBar extends StatelessWidget {
  const buildTabBar({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return TabBar(
      indicatorColor: primaryColor,
      labelColor:primaryColor ,
      indicatorWeight: 2,
      unselectedLabelColor: Colors.grey,
      dividerColor: primaryColor,
      indicatorPadding:EdgeInsets.symmetric(horizontal: 10.w) ,
      indicatorSize:TabBarIndicatorSize.tab ,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      tabs: List<Widget>.generate(list.length,
              (index) => Padding(
                padding:  EdgeInsets.only(bottom: 8.h),
                child: Center(
                  child: Text(
                    list[index],
                    style: SafeGoogleFont (
                      'SF Pro Display',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff696974),
                    ),
                  ),
                ),
              )),
      onTap: (index){
        BlocProvider.of<homeCubit>(context).changIndex(index);
      },
    );
  }
}

List <String>list=[
  'Overview',
  'Photo',
  'Review',
];