import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/manager/app_string.dart';
import '../../shared/widget/divider.dart';
import '../../shared/widget/preview/utils.dart';


class ReviewSc extends StatelessWidget {
  const ReviewSc({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        //build comment
        ...commentLis.asMap().entries.map((e) => BuildComment(fem: fem, ffem: ffem, comment: e.value,)).toList(),


      ],
    );

  }
}


class BuildComment extends StatelessWidget {
  const BuildComment({
    super.key,
    required this.fem,
    required this.ffem, required this.comment,
  });

  final double fem;
  final double ffem;

  final buildCommentItem comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      // group126Cbh (0:357)
      margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 0*fem),
      width: 335*fem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            // group122jrX (0:358)
            margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 14*fem),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // group121GrT (0:359)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                  width: double.infinity,
                  height: 37*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // ellipse6PAP (0:360)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 1*fem),
                        width: 36*fem,
                        height: 36*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(18*fem),
                          image:  DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              comment.photoUrl,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // group120Jo9 (0:361)
                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 126*fem, 0*fem),
                        width: 101*fem,
                        height: 36*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // madelinebushEwh (0:362)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 101*fem,
                                  height: 21*fem,
                                  child: Text(
                                    comment.name,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff1d2838),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // posted3hoursago9Hy (0:363)
                              left: 0*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 95*fem,
                                  height: 16*fem,
                                  child: Text(
                                    comment.time,
                                    style: SafeGoogleFont (
                                      'SF Pro Text',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      color: const Color(0xff686874),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame4eVd (0:364)
                        margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 6*fem),
                        padding: EdgeInsets.fromLTRB(8*fem, 5*fem, 14*fem, 2*fem),
                        width: 54*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xcc147af7),
                          borderRadius: BorderRadius.circular(8*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // 6Md (0:367)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                              child: Text(
                                comment.rating,
                                style: SafeGoogleFont (
                                  'SF Pro Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  letterSpacing: 1*fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/page-1/images/star.png',
                              height: 15*fem,
                            ),
                            // Text(
                            //   // poR (0:366)
                            //   '*',
                            //   style: SafeGoogleFont (
                            //     'Font Awesome 5 Free',
                            //     fontSize: 12*ffem,
                            //     fontWeight: FontWeight.w400,
                            //     height: 1.2575*ffem/fem,
                            //     color: const Color(0xffffffff),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // anicequaintcafewithagoodviewof (0:368)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                  constraints: BoxConstraints (
                    maxWidth: 279*fem,
                  ),
                  child: Text(
                    comment.comment,
                     style: SafeGoogleFont (
                      'SF Pro Text',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4285714286*ffem/fem,
                      color: const Color(0xff686874),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // autogroupgr1hag7 (YQyWr61Zj7KrhSfWgwGR1H)
            margin: EdgeInsets.fromLTRB(52*fem, 0*fem, 61*fem, 0*fem),
            width: double.infinity,
            height: 48*fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List<Widget>.generate(comment.images.length-1, (index)=>  Container(
                  // rectangle60JMD (0:369)
                  width: 48*fem,
                  height: 48*fem,
                  padding: EdgeInsets.only(right:10*fem ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8*fem),
                    child: Image.asset(
                      comment.images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),),
                // Container(
                //   // rectangle60JMD (0:369)
                //   width: 48*fem,
                //   height: 48*fem,
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(8*fem),
                //     child: Image.asset(
                //       'assets/page-1/images/rectangle-60-Jns.png',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 10*fem,
                // ),
                // Container(
                //   // rectangle61ChV (0:370)
                //   width: 48*fem,
                //   height: 48*fem,
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(8*fem),
                //     child: Image.asset(
                //       'assets/page-1/images/rectangle-61.png',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 10*fem,
                // ),
                // Container(
                //   // rectangle62Uf1 (0:371)
                //   width: 48*fem,
                //   height: 48*fem,
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(8*fem),
                //     child: Image.asset(
                //       'assets/page-1/images/rectangle-62-GH5.png',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 10*fem,
                // ),

                Container(
                  // group174Cqu (0:372)
                  width: 48*fem,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: const Color(0xcc000000),
                    borderRadius: BorderRadius.circular(8*fem),
                    image:  DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        comment.images.last,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'More',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'SF Pro Text',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.6666666667*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 20*fem),
            child: comment.isLast?Container():buildDivider(fem: fem),
          ),
        ],
      ),
    );
  }
}

class buildCommentItem{
  final String name;
  final String time;
  final String photoUrl;
  final String rating;
  final String comment;
  final bool isLast;
  final List<String>images;
  buildCommentItem({
    required this.name,
    required this.comment,
    required this.images,
    required this.photoUrl,
    this.isLast=false,
    required this.rating,
    required this.time,
});
}