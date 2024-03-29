import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../intro_screen/intro_screen.dart';
import '../on_boarding_screen/on_boarding_screen.dart';
import '../../shared/shared_widgets/elevated_button_widget.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  //   bool first = true;
  // @override
  // void didChangeDependencies() async {
  //   if (first) {
  //     first = false;
  //     await Future.delayed(  const Duration(seconds: 3), () async {
  //      Navigator.push(context, MaterialPageRoute(builder:(context) =>  const BottomNavBarDesign() ));
  //     });
  //   }
  //   super.didChangeDependencies();
  // }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kWhiteColor,
      body: Container(
          color: Constants.kWhiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Center(
                      child: Container(
                    width: height * 0.3,
                    // height: height * 0.3,
                    padding: EdgeInsets.all(width * 0.05),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * 0.17)),
                    child: Image.asset(Constants.kLogoImage),
                   
                  )),
                  Text("Right Vacation Exchange",
                      style: TextStyle(
                          color: Constants.kBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ],
              ),
               SizedBox(height: height * 0.1),
              ElevatedButtonWidget(
               onPressed: () {
                  Navigator.pushNamed(context, OnBoardingScreen.routeName);
                 },height:height * 0.06 ,width:width * 0.8 ,text:"Start" ,cBorder: Colors.transparent,
                 cButton: Constants.kBlueColor,cText: Constants.kWhiteColor,alignment: Alignment.center, borderRadius: BorderRadius.circular(40),
              ),
            ],
          )),
    );
  }
}
