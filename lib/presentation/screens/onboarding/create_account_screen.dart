import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/pages/otpverification.dart';
import 'package:sureat_project/presentation/screens/onboarding/login_screen.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';
import 'package:sureat_project/presentation/widgets/constant/logo.dart';

import '../../widgets/constant/Button.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isHidden = false;


  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
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
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: 24,),
                Text("Create Account,",textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),),
                SizedBox(height: 15,),
                Container(width: 300,child: Text("Enter your email address and choose a password of eight characters and above.", style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14, ),)),
                SizedBox(height: 30,),
                Text("Fullname", style: TextStyle(color: Colors.white.withOpacity(0.4)),),
                SizedBox(height: 5,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(color: Colors.white.withOpacity(0.5), width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      controller: nameController,
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
                SizedBox(height: 30,),
                Text("Email", style: TextStyle(color: Colors.white.withOpacity(0.4)),),
                SizedBox(height: 5,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(color: Colors.white.withOpacity(0.5), width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      controller: emailController,
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
                SizedBox(height: 30,),
                Text("Password", style: TextStyle(color: Colors.white.withOpacity(0.4)),),
                SizedBox(height: 5,),
                Container(
                  height: 45,
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
                SizedBox(height: 24,),
                Column(
                  children: [
                    Text("By creating an account, you agree to SurEat", style: TextStyle(color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "privacy policy ", style: TextStyle(color: purple)),
                              TextSpan(text: "and", style: TextStyle(color: Colors.white)),
                              TextSpan(text: " terms of use", style: TextStyle(color: purple))
                            ]
                    )
                    ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25,),
                GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> OtpVerificationPage())),
                    child: UnfilledButton(text: "Create account")),
                SizedBox(height: 14,),
                Center(child: GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen())),
                    child: Text("I already have an account", textAlign: TextAlign.center, style: TextStyle(color: purple, fontSize: 18),))),
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
