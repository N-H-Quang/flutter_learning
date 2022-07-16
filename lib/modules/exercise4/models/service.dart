import 'dart:convert';

import 'package:ex_day_2/modules/exercise4/models/post.dart';
import 'package:ex_day_2/modules/exercise4/models/public.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<List<Post>?> getPost({Function(String message)? onError}) async {
    var client = http.Client();
    try {
      String path = "/data/v1/post";
      Uri uri = Uri.https(api, path);
      Map<String, String> header = {
        'app-id': app_id,
        "Content-Type": "application/json",
      };
      var response = await client.get(uri, headers: header);
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      if (response.statusCode != 200) {
        onError!(decodedResponse['error']);
        return [];
      }
      List<dynamic> rawData = decodedResponse['data'];
      List<Post> newPost = rawData.map((e) => Post.fromJson(e)).toList();
      return newPost;
    } finally {
      client.close();
    }
  }
}
