import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/shared/manager/app_string.dart';
import '../../../shared/widget/divider.dart';
import '../utils.dart';


class OverViewSC extends StatelessWidget {
  const OverViewSC({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      padding: EdgeInsets.fromLTRB(18*fem, 22*fem, 12*fem, 7*fem),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame1000001233VMR (0:173)
            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 48*fem),
            width: 344*fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //about
                Container(
                  // aboutCFq (I0:173;654:13009)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                  child: Text(
                    'About',
                    style: SafeGoogleFont (
                      'SF Pro Display',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff1d2838),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 16*fem),
                  child: SizedBox(
                    // frame10000012385cT (I0:173;654:13067)
                    width: 341.98*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // anicequaintcafewithagoodviewof (I0:173;654:13008)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          constraints: BoxConstraints (
                            maxWidth: 326*fem,
                          ),
                          child: Text(
                            TravelString.aboutContent,
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.4285714286*ffem/fem,
                              color: const Color(0xff686874),
                            ),
                          ),
                        ),
                        buildDivider(fem: fem),
                      ],
                    ),
                  ),
                ),
                //list to do
                SizedBox(
                  // frame1000001258Dq9 (I0:173;654:13277)
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupbxmyxnj (YQyMuvjHNQ48d75Ld1BXMy)
                        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...ListUtils.asMap()
                                .entries
                                .map(
                                  (e) =>  buildItemUtil(fem: fem, ffem: ffem, item: e.value),
                            ).toList(),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //location
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // locationsCtf (0:175)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                child: Text(
                  'Locations',
                  style: SafeGoogleFont (
                    'SF Pro Text',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2575*ffem/fem,
                    color: const Color(0xff1d2838),
                  ),
                ),
              ),
              SizedBox(
                // frame10000012077Ew (0:176)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame10000011834fy (0:177)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                      padding: EdgeInsets.fromLTRB(5.24*fem, 11*fem, 10*fem, 9.54*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(12*fem),
                        image: const DecorationImage (
                          fit: BoxFit.cover,
                          image: AssetImage (
                            'assets/page-1/images/frame-1000001183-bg.png',
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // shareKbu (0:185)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 100.39*fem),
                            width: 32*fem,
                            height: 32*fem,
                            child: Image.asset(
                              'assets/page-1/images/share.png',
                              width: 32*fem,
                              height: 32*fem,
                            ),
                          ),
                          Container(
                            // googlelogodcb (0:178)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 233.87*fem, 0*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorAMd (0:179)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.06*fem, 6.96*fem),
                                  width: 23.28*fem,
                                  height: 24.11*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-6sy.png',
                                    width: 23.28*fem,
                                    height: 24.11*fem,
                                  ),
                                ),
                                Container(
                                  // vectorsmq (0:180)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.62*fem, 1.36*fem, 0*fem),
                                  width: 15.42*fem,
                                  height: 15.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-YCw.png',
                                    width: 15.42*fem,
                                    height: 15.5*fem,
                                  ),
                                ),
                                Container(
                                  // vectorC3R (0:181)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.62*fem, 1.39*fem, 0*fem),
                                  width: 15.42*fem,
                                  height: 15.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-RCK.png',
                                    width: 15.42*fem,
                                    height: 15.5*fem,
                                  ),
                                ),
                                Container(
                                  // vectorH4s (0:182)
                                  margin: EdgeInsets.fromLTRB(0*fem, 8.61*fem, 2.25*fem, 0*fem),
                                  width: 14.72*fem,
                                  height: 22.46*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-CSj.png',
                                    width: 14.72*fem,
                                    height: 22.46*fem,
                                  ),
                                ),
                                Container(
                                  // vectoroZ1 (0:184)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.53*fem, 6.63*fem),
                                  width: 3.38*fem,
                                  height: 22.84*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector.png',
                                    width: 3.38*fem,
                                    height: 22.84*fem,
                                  ),
                                ),
                                Container(
                                  // vectorL39 (0:183)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.62*fem, 0*fem, 0*fem),
                                  width: 14.07*fem,
                                  height: 15.51*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-tUF.png',
                                    width: 14.07*fem,
                                    height: 15.51*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame10000011993y9 (0:188)
                      margin: EdgeInsets.symmetric(horizontal: 10*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // outlinemaplocationmappointgWK (0:190)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.25*fem, 4.75*fem),
                                width: 17.5*fem,
                                height: 21.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/outline-map-location-map-point.png',
                                  width: 17.5*fem,
                                  height: 21.5*fem,
                                ),
                              ),
                              Text(
                                // riyadhsaudiarabiamGs (0:192)
                                'Riyadh, Saudi Arabia',
                                style: SafeGoogleFont (
                                  'SF Pro Display',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  color: const Color(0xff1d2838),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            // shareJGo (0:193)
                            margin: EdgeInsets.only(right: 5.w),
                            width: 35.w,
                            height: 32*fem,
                            child: Image.asset(
                              'assets/page-1/images/share-EMM.png',
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

        ],
      ),
    );
  }
}

class buildItemUtil extends StatelessWidget {
  const buildItemUtil({
    super.key,
    required this.fem,
    required this.ffem, required this.item,
  });

  final double fem;
  final double ffem;
final ItemUtil item;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(
          height: 16*fem,
        ),
        Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              item.mainText,
              style: SafeGoogleFont (
                'SF Pro Text',
                fontSize: 14*ffem,
                fontWeight: FontWeight.w400,
                height: 1.2575*ffem/fem,
                color: const Color(0xff686874),
              ),
            ),
            Spacer(),
            item.isFirst?
            RichText(
              // opening07302300HEf (I0:173;654:13014)
              textAlign: TextAlign.right,
              text: TextSpan(
                style: SafeGoogleFont (
                  'Gilroy-Medium',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.171875*ffem/fem,
                  color: const Color(0xff1d2838),
                ),
                children: [
                  TextSpan(
                    text: 'Opening',
                    style: SafeGoogleFont (
                      'SF Pro Text',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff34c759),
                    ),
                  ),
                  TextSpan(
                    text: ' 07:30AM - 10:00PM',
                    style: SafeGoogleFont (
                      'SF Pro Text',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575*ffem/fem,
                      color: const Color(0xff1d2838),
                    ),
                  ),
                ],
              ),
            ):Text(
              // about35minutesVQb (I0:173;654:13018)
              item.subMainText,

              style: SafeGoogleFont (
                'SF Pro Text',
                fontSize: 14*ffem,
                fontWeight: FontWeight.w400,
                height: 1.2575*ffem/fem,
                color: const Color(0xff1d2838),
              ),
            ),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
        SizedBox(
          height: 9*fem,
        ),
        Container(
          // rectangle462fR (I0:173;654:13016)
          width: double.infinity,
          height: 1*fem,
          decoration: const BoxDecoration (
            color: Color(0xfff1f1f5),
          ),
        ),
      ],
    );
  }
}



List <ItemUtil> ListUtils=[
  ItemUtil(mainText: 'Waiting time', isFirst: true,subMainText: ''),
  ItemUtil(mainText: 'Opening hours',subMainText: 'About 3-5 minutes'),
  ItemUtil(mainText: 'Type', subMainText: 'Coffee shop'),
  ItemUtil(mainText: 'Good for', subMainText: 'Coffee, Snack food, Take away'),

];
class ItemUtil {
  final String mainText;
  final String subMainText;
  final bool isFirst;


  ItemUtil( {
    required this.subMainText,
    this.isFirst=false,
    required this.mainText,
  });
}