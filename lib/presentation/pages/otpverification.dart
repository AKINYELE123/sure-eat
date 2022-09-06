import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sureat_project/presentation/pages/create_account_otp_success.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  _OtpVerificationPageState createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
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
                  "Verify your email,",
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
                      "Grab the 4-digits code in the mail we just sent to sureat@gmail.com.",
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
                GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateAccountOtpSuccess())),
                    child: FilledButton(text: "Verify")),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => OtpVerificationPage())),
                    child: UnfilledButton(text: "Resend Code")),
                SizedBox(height: 42,),
                Center(child: Text("Or", style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 20),),),
                SizedBox(height: 15,),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "Wrong email address? ", style: TextStyle(color: Colors.grey, fontSize: 16) ),
                      TextSpan(text: "Change", style: TextStyle(color: purple, fontSize: 16)),
                    ])),

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
