import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class ExchangeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.kMaintBlueColor,
      child: Center(
          child: Text("Exchange Screen",
              style: TextStyle(color: Constants.kBlackColor))),
    );
  }
}
