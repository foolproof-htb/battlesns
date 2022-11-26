import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('投稿'),
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.multiline,
          maxLength: null,
        ),
        ElevatedButton(
          child: Text('投稿'),
          onPressed: () {},
        ),
      ]),
    );
  }
}
