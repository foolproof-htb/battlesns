import 'package:battlesns/duel_page.dart';
import 'package:battlesns/ranking_page.dart';
import 'package:battlesns/search_page.dart';
import 'package:battlesns/timeline_page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;
  final _pageWidgets = [
    TimelinePage(),
    DuelPage(),
    RankingPage(),
    SearchPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ENVY')),
      body: _pageWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: '決闘'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'ランキング'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '検索'),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        onTap: (int index) => {
          setState(
            () => _currentIndex = index,
          )
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
