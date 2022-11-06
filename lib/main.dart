import 'package:flutter/material.dart';
import 'tab_page.dart';
import 'timeline_page.dart';
import 'create_post_page.dart';

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
        '/timeline': (BuildContext context) => TimelinePage(),
        '/new': (BuildContext context) => CreatePostPage()
      },
    );
  }
}
