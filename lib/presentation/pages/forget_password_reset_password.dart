import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/pages/forget_password_success_page.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';

class ForgetPasswordResetPasswordPage extends StatefulWidget {
  const ForgetPasswordResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordResetPasswordPageState createState() => _ForgetPasswordResetPasswordPageState();
}

class _ForgetPasswordResetPasswordPageState extends State<ForgetPasswordResetPasswordPage> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isHidden = false;


  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }
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
            padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "New Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                      width: 300,
                      child: Text(
                        "You have been verified, kindly enter a new password.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Password", textAlign: TextAlign.start,style: TextStyle(color: Colors.white.withOpacity(0.4)),),
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
                      controller: passwordController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                          suffixIcon: IconButton(
                            icon: isHidden ? Icon(Icons.visibility_off, color: Colors.white,) : Icon(Icons.visibility, color: Colors.white,),
                            onPressed: togglePasswordVisibility,
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text("Confirm Password",textAlign: TextAlign.start, style: TextStyle(color: Colors.white.withOpacity(0.4)),),
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
                      controller: confirmPasswordController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      obscureText: isHidden,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                          suffixIcon: IconButton(
                            icon: isHidden ? Icon(Icons.visibility_off, color: Colors.white,) : Icon(Icons.visibility, color: Colors.white,),
                            onPressed: togglePasswordVisibility,
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 151,
                ),
                // GestureDetector(
                //     onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateAccountOtpSuccess())),
                //     child: FilledButton(text: "Verify")),
                SizedBox(
                  height: 180,
                ),
                GestureDetector(
                   onTap: () => Navigator.push(context,
                       MaterialPageRoute(builder: (_) => ForgetPasswordSuccessPage())),
                    child: FilledButton(text: "Continue")),

              ],
            ),
          ),
        ],
      ),
    );
  }
  void togglePasswordVisibility() => setState(() {
    isHidden = !isHidden;
  });
}
