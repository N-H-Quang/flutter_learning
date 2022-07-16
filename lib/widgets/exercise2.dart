import 'dart:convert';

import 'package:ex_day_2/modules/exercise2/list_item_who_horizontal.dart';
import 'package:ex_day_2/modules/exercise2/list_item_who_message.dart';
import 'package:ex_day_2/objects/chat.dart';
import 'package:ex_day_2/objects/status.dart';
import 'package:ex_day_2/objects/user.dart';
import 'package:ex_day_2/values/app_colors.dart';
import 'package:ex_day_2/values/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exercise2 extends StatefulWidget {
  Exercise2({Key? key}) : super(key: key);

  @override
  State<Exercise2> createState() {
    return _Exercise2State();
  }
}

class _Exercise2State extends State<Exercise2> {
  late List<User> users = [];
  late List<Chat> chats = [];

  _Exercise2State() {
    this.readJson();
  }

  Future<void> readJson() async {
    String data = await rootBundle.loadString('assets/jsons/users.json');
    String dataChat = await rootBundle.loadString('assets/jsons/chats.json');
    final jsonResult = jsonDecode(data) as Map<String, dynamic>;
    final jsonResultChat = jsonDecode(dataChat) as Map<String, dynamic>;
    List temp = jsonResult['result'] ?? jsonResult['results'];
    List tempChat = jsonResultChat['result'] ?? jsonResultChat['results'];
    setState(() {
      this.users = temp.map<User>((json) => User.fromJson(json)).toList();
      this.chats = tempChat.map<Chat>((json) => Chat.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              leading: Icon(Icons.arrow_back),
              expandedHeight: 168,
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
                titlePadding: const EdgeInsets.only(left: 20, bottom: 24),
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
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: this.users.length,
                itemBuilder: (context, index) {
                  return ItemHorizontal(
                      avatar: this.users[index].picture.thumbnail,
                      name: this.users[index].name,
                      status: this.users[index].status);
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                 child: Container(
                  height: MediaQuery.of(context).size.height - 168 - 95,
                  child: ListView.builder(padding: EdgeInsets.zero,
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return itemWhoMessage(
                        name: chats[index].user.name,
                        message: chats[index].text,
                        time: chats[index].created_at,
                        avatar: chats[index].user.picture.thumbnail,
                        countMessage: chats[index].unread_count);
                  },
                  ),
                ),
            )
          ),
        ],
      ),
    );
  }
}
