import 'package:ex_day_2/objects/status.dart';
import 'package:ex_day_2/values/app_colors.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemHorizontal extends StatelessWidget {
  final String avatar;
  final String name;
  final Status status;

  const ItemHorizontal(
      {required this.avatar, required this.name, required this.status})
      : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Stack(alignment: Alignment.center, children: [
        Column(children: [
          Container(
              width: 60,
              height: 60,
              child: Stack(fit: StackFit.expand, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(this.avatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 48,
                    left: 45,
                    child: Container(
                        alignment: Alignment.center,
                        height: 12,
                        width: 12,
                        decoration: this.status == Status.online
                            ? BoxDecoration(
                                color: AppColors.greenColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                ))
                            : BoxDecoration()))
              ])),
          SizedBox(
            height: 3,
          ),
          Text(
            '$name',
            style: AppStyles.h4,
          )
        ])
      ]),
    );
  }
}
