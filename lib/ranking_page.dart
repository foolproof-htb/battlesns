import 'package:flutter/material.dart';

class RankingPage extends StatefulWidget {
  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ランキング')),
    );
  }
}
