
import 'package:flutter/material.dart';
import 'package:sureat_project/presentation/screens/onboarding/login_screen.dart';
import 'package:sureat_project/presentation/widgets/constant/Button.dart';
import 'package:sureat_project/presentation/widgets/constant/colors.dart';

class Onboarding_Screen extends StatefulWidget {
  const Onboarding_Screen({Key? key}) : super(key: key);

  @override
  _Onboarding_ScreenState createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  List images = [
    "assets/images/hit.png",
    "assets/images/bang.png",
    "assets/images/sure.png",
  ];
  List header = [
    "Pay by QR code scan",
    "Gift Meal Ticket",
    "Withdraw From Wallet",
  ];
  List words = [
    "Pay for your meals by scanning your generated ticket QR code ",
    "Issue meal tickets to those not on the SurEat application.",
    "Withdraw money from your wallet into your bank account whenever you want to",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Spacer(),
                  Image.asset(images[index]),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    header[index],
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Spacer(),
                  Container(
                      width: 300,
                      child: Text(
                        words[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white.withOpacity(.6), fontSize: 14),
                      )),
                  SizedBox(
                    height: 104,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (indexDots) {
                      return Container(
                        width: index == indexDots ? 25 : 9,
                        margin: EdgeInsets.only(right: 4),
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots ? purple : Colors.white,
                        ),
                      );
                    }),
                  ),
                  Spacer(),
                  //SizedBox(
                  //  height: 54,
                  //),
                 FilledButton(text: "Continue"),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())),
                      child: UnfilledButton(text: "Skip")),
                  Spacer(),
                ],
              ),
            );
          }),
    );
  }
}
