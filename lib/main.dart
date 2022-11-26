import 'package:flutter/material.dart';
import 'ui/tab_page.dart';
import 'ui/timeline/timeline_page.dart';
import 'ui/timeline/create_post_page.dart';

void main() {
  runApp(const Infenvy());
}

class Infenvy extends StatelessWidget {
  const Infenvy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SNS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabPage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => TabPage(),
        '/new': (BuildContext context) => CreatePostPage()
      },
    );
  }
}
