import 'package:battlesns/ui/ranking/ranking_card.dart';
import 'package:battlesns/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RankingPage extends StatefulWidget {
  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  List<User> users = [];
  _fetchPosts() async {
    final url = Uri.parse('http://10.0.2.2:3030/users');
    http.Response response = await http.get(url);
    List<dynamic> json = jsonDecode(response.body);

    setState(() {
      users = json.map((data) => User.formJson(data)).toList();
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
          child: Column(
        children: users
            .asMap()
            .entries
            .map((entry) =>
                RankingCard(user: entry.value, rank: entry.key.toInt()))
            .toList(),
      )),
    );
  }
}
