import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/screens/onboarding/login_screen.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';


class ForgetPasswordSuccessPage extends StatefulWidget {
  const ForgetPasswordSuccessPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordSuccessPageState createState() => _ForgetPasswordSuccessPageState();
}

class _ForgetPasswordSuccessPageState extends State<ForgetPasswordSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.pop(context),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: grey
                    ),
                    child: Center(child: Icon(Icons.clear_rounded,size: 30, color: Colors.white,)),
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: purple, width: 7.0),
                    borderRadius: BorderRadius.circular(90)),
                child: Center(
                    child: Icon(
                      Icons.check_rounded,
                      color: Colors.purple,
                      size: 150,
                    )),
              ),
            ),
            SizedBox(
              height: 61,
            ),
            Container(
                width: 290,
                child: Text(
                  "Your password has been successfully changed.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: neutral, fontSize: 14),
                )),
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen())),
                    child: FilledButton(text: "Continue"))),
            Spacer()
          ],
        ),
      ),
    );
  }
}
