import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/shared/shared_widgets/app_bar_image_sign_in_up.dart';
import 'package:rev_app/screens/login_screen/partition_login.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKeyLoginScreen = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Form(
        key: _formKeyLoginScreen,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: height - height * .16,//.18
              width: width,
              child:  Stack(
                children: [
                  AppBarImageSigninAndUp(heightAppBarImage: height * 0.55,paddingHeiImage: height == 640 ? 10: height * 0.1,widthImage: width*0.44,fontSizedStyle: Constants.TwhileBoldFont),
                 const PartitionLogin(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.07,right: width * 0.07,top:height>=812?height*0.01:height*0.04  ),
              child: ElevatedButtonWidget(
                  onPressed: () {},
                  height: height * 0.06,
                  width: width * 0.8,
                  text: 'Guest',
                  cBorder: Constants.kBlueColor,
                  cButton: Constants.kWhiteColor,
                  cText: Constants.kBlackColor),
            )
          ],
        ),
      ),
    );
  }
}
