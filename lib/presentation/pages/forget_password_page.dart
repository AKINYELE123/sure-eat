import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/pages/forget_password_otp_verification.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: grey),
                    child: Center(
                        child: Icon(
                      Icons.clear_rounded,
                      size: 24,
                      color: Colors.white,
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              "Recover Password",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 297,
                child: Text(
                  "Can’t remember your password? Let’s help you find it. Enter your registered email address and an OTP will be sent to you.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9), fontSize: 14),
                )),
            SizedBox(height: 20,),
            Text("Email", style: TextStyle(color: Colors.white.withOpacity(0.7)),),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: background,
                border: Border.all(color: Colors.white.withOpacity(0.5), width: 2.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  obscureText: false,
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.white, fontSize: 12)
                  ),
                ),
              ),
            ),
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> ForgetPasswordOtpVerification())),
                    child: FilledButton(text: "Send OTP"))),
          ],
        ),
      ),
    );
  }
}
