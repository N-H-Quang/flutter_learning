import 'dart:ffi';

import 'package:ex_day_2/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class Exercise3 extends StatefulWidget {
  var _downloading = false;
  Exercise3() : super();

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  var url = 'https://www.trustedreviews.com/wp-content/uploads/sites/54/2019/06/Apple-Mac-Pro-XDR-debut-wallpaper-1853-x-1043-920x518.jpg';
  final _globalKey = GlobalKey<ScaffoldMessengerState>();
  int _progressValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: const Text('Exercise 3'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            url,
            width: 200,
            height: 200,
          ),
          SizedBox(height: 20),
          widget._downloading == false
              ? RaisedButton(
                  child: Text('Load Image'),
                  onPressed: () async {
                    widget._downloading = true;
                    await _downloadNetworkImage(context, url, setStage);
                  },
                )
              : LinearProgressIndicator(
                  backgroundColor: Colors.cyanAccent,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                  value: _progressValue / 100,
                )
        ],
      )),
    );
  }

  setStage(String _progressString, BuildContext context, String url) {
    setState(() {
      if (_progressString == "100%") {
        ScaffoldMessenger.of(context)
            .showSnackBar(new SnackBar(content: Text("Next Action...")));
        widget._downloading = false;
        _progressValue = int.parse(_progressString.replaceAll("%", ""));
      print(_progressValue);
      }
    });
  }
}

Future<Null> _downloadNetworkImage(
    BuildContext context, String url, Function setStage) async {
  Dio dio = Dio();

  try {
    var dir = await getTemporaryDirectory();

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Downloading image. Please wait...")));
    await dio.download(url, '${dir.path}/image.jpeg',
        onReceiveProgress: (rec, total) {
      var _progressString = ((rec / total) * 100).toStringAsFixed(0) + "%";
      setStage(_progressString, context, '${dir.path}/image.jpeg');
    });
    final result = await ImageGallerySaver.saveFile('${dir.path}/image.jpeg');
  } catch (exp) {
    print(exp);
  }
}
