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
    final url = Uri.parse('http://10.0.2.2:3030/posts');
    http.Response response = await http.get(url);
    List<dynamic> json = jsonDecode(response.body);

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
