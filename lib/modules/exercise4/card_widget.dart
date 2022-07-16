import 'package:ex_day_2/modules/exercise4/models/owner.dart';
import 'package:ex_day_2/modules/exercise4/models/post.dart';
import 'package:ex_day_2/values/app_assets.dart';
import 'package:ex_day_2/values/app_colors.dart';
import 'package:flutter/material.dart';

import '../../values/app_styles.dart';

class CardWidget extends StatelessWidget {
  Post post;

  CardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( top: 5),
      decoration: BoxDecoration(color: AppColors.primaryColor, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(3, 20),
            blurRadius: 10)
      ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Container(
          child: Column(children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                this.post.owner!.firstName.toString() +
                    ' ' +
                    this.post.owner!.lastName.toString(),
                style: AppStyles.h3,
              ),
              subtitle: Text(this.post.publishDate.toString(),
                  style: AppStyles.h4.copyWith(color: Color(0xff4E586E))),
              leading:
                  PictureWidget(this.post.owner!.picture.toString(), 40, 40),
            ),
            Container(
              height: 152,
              child: Row(
                children: [
                  Flexible(
                    flex: 15,
                    child: PictureWidget(this.post.image.toString(),
                        double.infinity, double.infinity),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(),
                  ),
                  Flexible(
                      flex: 15,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 15,
                            child: Row(children: [
                              Expanded(
                                flex: 15,
                                child: PictureWidget(this.post.image.toString(),
                                    double.infinity, double.infinity),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 15,
                                child: PictureWidget(this.post.image.toString(),
                                    double.infinity, double.infinity),
                              )
                            ]),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 15,
                            child: Row(children: [
                              Expanded(
                                flex: 15,
                                child: PictureWidget(this.post.image.toString(),
                                    double.infinity, double.infinity),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 15,
                                child: PictureWidget(this.post.image.toString(),
                                    double.infinity, double.infinity),
                              )
                            ]),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: Text(
                this.post.text.toString(),
                style: AppStyles.h4,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget PictureWidget(String image, double height, double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: NetworkImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
