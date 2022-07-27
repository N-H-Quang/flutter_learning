import 'package:ex_day_2/modules/exercise4/models/widgets/empty.dart';
import 'package:ex_day_2/modules/exercise4/models/widgets/error.dart';
import 'package:ex_day_2/modules/exercise4/stage_of_listview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StateOfListViewPage extends StatefulWidget {
  StateOfListViewPage({Key? key}) : super(key: key);

  @override
  State<StateOfListViewPage> createState() => _StateOfListViewPageState();
}

class _StateOfListViewPageState extends State<StateOfListViewPage> {
  late StageOfListView _stage;

  @override
  void initState() {
    _stage = StageOfListView();
    _stage.getAllPost();
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xFF242A37),
        appBar: AppBar(
          title: const Text('State of ListView'),
        ),
        body: ChangeNotifierProvider<StageOfListView>(
            create: (_) => _stage,
            child: Consumer<StageOfListView>(builder: (context, model, child) {
              return model.loading
                  ? const Center(
                      child: Text('Loading',
                          style: TextStyle(color: Colors.white)))
                  : RefreshIndicator(
                      onRefresh: model.getAllPost,
                      child: model.error
                          ? Error(message: model.errorMessage)
                          : model.posts!.isEmpty
                              ? const Empty()
                              : ListView.builder(
                                 itemCount: model.posts!.length,
                                 itemBuilder: (context, index) {
                                   return ListTile(
                                     title: Text(model.posts![index].text.toString()),
                                   );
                                 },
                              ));
            })));
  }
}
