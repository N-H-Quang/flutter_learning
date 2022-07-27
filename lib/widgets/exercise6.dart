import 'package:ex_day_2/modules/exercise6/facebook.dart';
import 'package:flutter/cupertino.dart';

class Exercise6 extends StatefulWidget {
  Exercise6({Key? key}) : super(key: key);

  @override
  State<Exercise6> createState() => _Exercise6State();
}

class _Exercise6State extends State<Exercise6> {
  @override
  Widget build(BuildContext context) {
    return FacebookLogin();
  }
}
