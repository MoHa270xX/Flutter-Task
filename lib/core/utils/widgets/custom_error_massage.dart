import 'package:flutter/material.dart';

class CustomErrorMassage extends StatelessWidget {
  const CustomErrorMassage({super.key, required this.errmassage});
  final String errmassage;
  @override
  Widget build(BuildContext context) {
    return Text(errmassage, style: TextStyle(fontSize: 20));
  }
}
