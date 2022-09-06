import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              const TextSpan(
                  text: "Sur", style: TextStyle(color: Colors.white, fontSize: 26) ),
              TextSpan(text: "Eat", style: TextStyle(color: purple, fontSize: 26)),
            ])),
      ),
    );
  }
}
