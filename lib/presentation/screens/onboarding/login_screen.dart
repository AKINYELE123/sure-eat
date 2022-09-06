import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:sureat_project/presentation/pages/forget_password_page.dart';
import 'package:sureat_project/presentation/screens/onboarding/create_account_screen.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';
import 'package:sureat_project/presentation/widgets/constant/logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isHidden = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Logo(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Welcome Back,",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "We’re glad to have you return back, kindly enter in your email address and password to access your account. ",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Email",
                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(
                        color: Colors.white.withOpacity(0.5), width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      controller: emailController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      obscureText: false,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? 'Enter a valid email'
                              : null,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusColor: Colors.white,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Password",
                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(
                        color: Colors.white.withOpacity(0.5), width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      obscureText: isHidden,
                      validator: (password) =>
                          password != null && password.length < 8
                              ? "Enter min 8 characters"
                              : null,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                          suffixIcon: IconButton(
                            icon: isHidden
                                ? Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  ),
                            onPressed: togglePasswordVisibility,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ForgetPasswordPage())),
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: purple,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        )),
                  ],
                ),
                SizedBox(
                  height: 49,
                ),
                GestureDetector(
                    onTap: login,
                    child: FilledButton(text: "Login")),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                     onTap: ()=> Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (_) => CreateAccountScreen())),
                    child: UnfilledButton(text: "Create account"))
              ],
            ),
          ),
        ],
      ),
    );
  }

  void login() {
    final form = formKey.currentState;

    if(form!.validate()) {
      final email = emailController.text;
      final password = passwordController.text;

      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content: Text('Your email is $email'),
        ));
    }
  }

  void togglePasswordVisibility() => setState(() {
        isHidden = !isHidden;
      });
}

