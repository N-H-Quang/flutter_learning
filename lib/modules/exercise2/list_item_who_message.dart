import 'package:ex_day_2/values/app_colors.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class itemWhoMessage extends StatelessWidget {
  final name;
  final message;
  final DateTime time;
  final avatar;
  final countMessage;
  const itemWhoMessage(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar,
      required this.countMessage})
      : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 18, bottom: 18),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Stack(children: [
                SizedBox(
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
                        top: 40,
                        left: 40,
                        child: Container(
                            alignment: Alignment.center,
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8, 1),
                                    colors: <Color>[
                                      Color(0xffFF8960),
                                      Color(0xffFF62A5)
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                )),
                            child: Text(
                              countMessage.toString(),
                              style: AppStyles.h4,
                            )))
                  ]),
                ),
              ]),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              this.name,
                              style: AppStyles.h3.copyWith(
                                  fontWeight: FontWeight.bold, height: 1.3),
                            ),
                            Text(
                              this.time.hour.toString() +
                                  ':' +
                                  this.time.minute.toString(),
                              style: AppStyles.h4.copyWith(
                                color: AppColors.secondaryColor,
                              ),
                            )
                          ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        this.message,
                        style: AppStyles.h3.copyWith(
                            height: 1.3, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
