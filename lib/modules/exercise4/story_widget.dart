import 'package:ex_day_2/values/app_assets.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: Column(children: [
        //container image story
        Container(
          width: 135,
          child: Image.asset(AppAssets.storyImage),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Row(
            children: [
              //container image avatar
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xffFF2D55),
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(AppAssets.defaultImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //container text story
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  'Thomas Curtis',
                  style: AppStyles.h5,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
