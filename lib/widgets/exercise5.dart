import 'package:ex_day_2/modules/exercise4/story_widget.dart';
import 'package:ex_day_2/modules/exercise5/blocs/list_post_bloc.dart';
import 'package:ex_day_2/modules/exercise5/card_widget.dart';
import 'package:ex_day_2/modules/exercise5/stage_of_listview.dart';
import 'package:ex_day_2/values/app_assets.dart';
import 'package:ex_day_2/values/app_colors.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Exercise5 extends StatefulWidget {
  Exercise5({Key? key}) : super(key: key);

  @override
  State<Exercise5> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  final _postsBloc = ListPostBloc();

  @override
  void initState() {
    // TODO: implement initState
    _postsBloc.add("getPost");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: CustomScrollView(slivers: [
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
                          ClipOval(child: Image.asset(AppAssets.defaultImage)),
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
                        child: BlocBuilder<ListPostBloc, StageOfListView>(
                          bloc: _postsBloc,
                          builder: (context, content) => content
                                      .posts?.length ==
                                  0
                              ? Text('Loading',
                                  style: TextStyle(color: Colors.white))
                              : ListView.builder(
                                  itemCount: content.posts?.length,
                                  itemBuilder: (context, index) =>
                                      CardWidget(post: content.posts![index]),
                                ),
                        ),
                      ),
                    )
                  ]),
            ),
          ))
        ]));
  }
}
