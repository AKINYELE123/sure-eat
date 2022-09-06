import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sureat_project/presentation/pages/forget_password_reset_password.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';


class ForgetPasswordOtpVerification extends StatefulWidget {
  const ForgetPasswordOtpVerification({Key? key}) : super(key: key);

  @override
  _ForgetPasswordOtpVerificationState createState() => _ForgetPasswordOtpVerificationState();
}

class _ForgetPasswordOtpVerificationState extends State<ForgetPasswordOtpVerification> {
  TextEditingController _pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: Column(
              children: [
                Text(
                  "OTP Verification",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: 300,
                    child: Text(
                      "We just sent a unique code to your mail su****@gmail.com. Kindly enter in the code below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 14,
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                _pinCodeWidget(),
                SizedBox(
                  height: 151,
                ),
                SizedBox(
                  height: 220,
                ),
                GestureDetector(
                    onTap: () => Navigator.push(context,
                         MaterialPageRoute(builder: (_) => ForgetPasswordResetPasswordPage())),
                    child: FilledButton(text: "Continue")),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _pinCodeWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          PinCodeTextField(
            controller: _pinCodeController,
            length: 4,
            backgroundColor: Colors.transparent,
            keyboardType: TextInputType.numberWithOptions(),
            keyboardAppearance: Brightness.dark,
            obscureText: true,
            textStyle: TextStyle(color: Colors.white),
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 60,
                fieldWidth: 50,
                activeFillColor: Colors.white,
                inactiveColor: otp,
                activeColor: otp),
            enableActiveFill: false,
            cursorColor: Colors.white,
            autoFocus: true,
            onChanged: (pinCode) {
              print(pinCode);
            },
            appContext: context,
          ),
          SizedBox(height: 30,),
          Text("Resend Otp", style: TextStyle(color: purple, fontSize: 18),)
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pinCodeController.dispose();
    super.dispose();
  }
}
