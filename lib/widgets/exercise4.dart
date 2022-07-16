import 'package:ex_day_2/modules/exercise4/card_widget.dart';
import 'package:ex_day_2/modules/exercise4/models/widgets/error.dart';
import 'package:ex_day_2/modules/exercise4/models/widgets/empty.dart';
import 'package:ex_day_2/modules/exercise4/stage_of_listview.dart';
import 'package:ex_day_2/modules/exercise4/story_widget.dart';
import 'package:ex_day_2/values/app_assets.dart';
import 'package:ex_day_2/values/app_colors.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Exercise4 extends StatefulWidget {
  const Exercise4({Key? key}) : super(key: key);

  @override
  State<Exercise4> createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  late StageOfListView _stage;

  @override
  void initState() {
    _stage = StageOfListView();
    super.initState();
    _stage.getAllPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColors.primaryColor,
              pinned: false,
              snap: false,
              floating: true,
              title: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.secondaryColor,
                    border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                child: Center(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for something',
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          iconColor: Colors.white,
                          hintStyle: TextStyle(color: AppColors.primaryColor))),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'What\'s new',
                                style: AppStyles.h1,
                              ),
                              ClipOval(
                                  child: Image.asset(AppAssets.defaultImage)),
                            ]),
                        Container(
                            height: 175,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                StoryWidget(),
                                StoryWidget(),
                                StoryWidget(),
                                StoryWidget(),
                                StoryWidget()
                              ],
                            )),
                        Expanded(
                            child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: ChangeNotifierProvider<StageOfListView>(
                              create: (_) => _stage,
                              child: Consumer<StageOfListView>(
                                  builder: (context, model, child) {
                                return model.loading
                                    ? const Center(
                                        child: Text('Loading',
                                            style:
                                                TextStyle(color: Colors.white)))
                                    : RefreshIndicator(
                                        onRefresh: model.getAllPost,
                                        child: model.error
                                            ? Error(message: model.errorMessage)
                                            : model.posts!.isEmpty
                                                ? const Empty()
                                                : ListView.builder(
                                                    itemCount:
                                                        model.posts!.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return CardWidget(post:model.posts![index]);
                                                    },
                                                  ));
                              })),
                        )),
                      ]),
                ),
              ),
            )
          ],
        ));
  }
}
