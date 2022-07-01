
import 'package:ex_day_2/modules/exercise1/exercise1_1.dart';
import 'package:ex_day_2/modules/exercise1/exercise1_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 1'),
        leading:InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(height: MediaQuery.of(context).size.height,child: HomeWidget()),
            SizedBox(
              height: 20,
            ),
            Container(height: MediaQuery.of(context).size.height,child: collunmWidget()),
            SizedBox(
              height: 20,
            ),
            Container(height: MediaQuery.of(context).size.height,child: rowWidget()),
            SizedBox(
              height: 20,
            ),
            Container(height: MediaQuery.of(context).size.height,child: GridWidget()),
            SizedBox(
              height: 20,
            ),
            Container(height: MediaQuery.of(context).size.height,child: ex4Widget()),
          ],
        ),
      ),
    );
  }
}

