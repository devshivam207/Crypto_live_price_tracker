// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;
  Function()? ontap;
  bool active;

  MyButton({
    Key? key,
    required this.text,
    this.ontap,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 3.5,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: active? Colors.green : Colors.grey
      ),
      child: Center(child: Text(text,style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: active? 20 : 18,
      ),)),
    );
  }
}
