import 'package:flutter/material.dart';

class buildDivider extends StatelessWidget {
  const buildDivider({
    super.key,
    required this.fem,
  });

  final double fem;

  @override
  Widget build(BuildContext context) {
    return Container(
      // rectangle45aBq (I0:173;654:13010)
      width: double.infinity,
      height: 1*fem,
      decoration: const BoxDecoration (
        color: Color(0xfff1f1f5),
      ),
    );
  }
}