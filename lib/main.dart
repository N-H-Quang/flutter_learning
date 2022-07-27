import 'package:ex_day_2/modules/exercise4/stage_of_listview_page.dart';
import 'package:ex_day_2/widgets/exercise6.dart';
import 'package:ex_day_2/widgets/exercise4.dart';
import 'package:ex_day_2/widgets/exercise1.dart';
import 'package:ex_day_2/widgets/exercise2.dart';
import 'package:ex_day_2/widgets/exercise3.dart';
import 'package:ex_day_2/widgets/exercise5.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/exercise1': (context) => const Exercise1(),
          '/exercise2': (context) => Exercise2(),
          '/exercise3': (context) => Exercise3(),
          '/exercise4': (context) => Exercise4(),
          '/exercise5': (context) => Exercise5(),
          '/exercise6': (context) => Exercise6(),
        },
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('All Widgets')),
        ),
        body: Column(children: [
          _ExerciseLinkButton(context, 'Exercise 1', '/exercise1'),
          _ExerciseLinkButton(context, 'Exercise 2', '/exercise2'),
          _ExerciseLinkButton(context, 'Exercise 3', '/exercise3'),
          _ExerciseLinkButton(context, 'Exercise 4', '/exercise4'),
          _ExerciseLinkButton(context, 'Exercise5', '/exercise5'),
          _ExerciseLinkButton(context, 'Exercise6', '/exercise6'),
        ]));
  }
}

Widget _ExerciseLinkButton(BuildContext context, String title, String route) {
  return Center(
    child: TextButton(
        child: Text(title),
        onPressed: () {
          Navigator.pushNamed(context, route);
        }),
  );
}
