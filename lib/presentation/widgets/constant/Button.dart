import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';


class FilledButton extends StatelessWidget {
   FilledButton({Key? key, required this.text}) : super(key: key);

  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: purple,
      ),
      child: Center(child: Text(text,textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
    );
  }
}

class UnfilledButton extends StatelessWidget {
  UnfilledButton({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: purple, width: 1.0),
        borderRadius: BorderRadius.circular(10),
        color: background,
      ),
      child: Center(child: Text(text,textAlign: TextAlign.center, style: TextStyle(color: purple, fontSize: 20, fontWeight: FontWeight.bold),)),
    );
  }
}
