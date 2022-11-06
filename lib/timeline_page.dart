import 'dart:convert';

import 'package:battlesns/create_post_page.dart';
import 'package:battlesns/post_card.dart';
import 'package:battlesns/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TimelinePage extends StatefulWidget {
  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  List<Post> posts = [];
  _fetchPosts() async {
    // final url = Uri.parse('http://10.0.2.2:3030/posts');
    // http.Response response = await http.get(url);
    // List<Map<String, dynamic>> json = jsonDecode(response.body);

    // http 接続に失敗するので仮のjsonデータを用意
    List<Map<String, dynamic>> json = [];
    for (int i = 1; i <= 10; i++) {
      json.add({
        'id': i,
        'account': '@test$i',
        'name': 'user$i',
        'body': 'test message$i',
        'createdAt': '2022/10/$i 12:25'
      });
    }
    setState(() {
      posts = json.map((data) => Post.formJson(data)).toList();
    });
  }

  @override
  void initState() {
    super.initState();

    _fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: posts.map((post) => PostCard(post: post)).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: () => {Navigator.of(context).pushNamed("/new")},
      ),
    );
  }
}
