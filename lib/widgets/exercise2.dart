import 'package:ex_day_2/modules/exercise2/list_item_who_message.dart';
import 'package:ex_day_2/values/app_colors.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              leading: Icon(Icons.arrow_back),
              expandedHeight: 120,
              pinned: false,
              snap: false,
              floating: true,
              backgroundColor: AppColors.primaryColor,
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(left: 20, bottom: 10),
                expandedTitleScale: 1.4,
                background: Container(
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  'Messages',
                  style: AppStyles.h1,
                ),
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(children: <Widget>[
                      itemWhoMessage(name: 'Herman Pope', message: "Hey! How's it going?", time: '04:04AM', avatar: "assets/images/avatar.png", countMessage: 6),
                      itemWhoMessage(name: 'Herman Pope', message: "Hey! How's it going?", time: '04:04AM', avatar: "assets/images/avatar.png", countMessage: 6),
                      itemWhoMessage(name: 'Herman Pope', message: "Hey! How's it going?", time: '04:04AM', avatar: "assets/images/avatar.png", countMessage: 6),
                      itemWhoMessage(name: 'Herman Pope', message: "Hey! How's it going?", time: '04:04AM', avatar: "assets/images/avatar.png", countMessage: 6),
                    ]),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
