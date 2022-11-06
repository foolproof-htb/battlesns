import 'package:flutter/material.dart';
import 'package:battlesns/post.dart';

class PostCard extends StatefulWidget {
  final Post post;
  PostCard({required this.post});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  final imageUrl =
      'https://cdn-ssl-devio-img.classmethod.jp/wp-content/uploads/2018/08/flutter-logo-400x400-320x320.png';

  Color likeIconColor = Colors.black12;
  Color badIconColor = Colors.black12;

  @override
  Widget build(BuildContext context) {
    Post post = widget.post;

    return Card(
      child: Column(
        children: <Widget>[
          // 投稿情報
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        post.name,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        post.account,
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                post.createdAt,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          // 投稿内容
          Row(children: [Text(post.body)]),
          const SizedBox(
            height: 8,
          ),
          // リアクションアイコン
          Row(children: [
            IconButton(
              onPressed: () {
                setState(() {
                  likeIconColor = likeIconColor == Colors.black12
                      ? Colors.pink
                      : Colors.black12;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: likeIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  badIconColor = badIconColor == Colors.black12
                      ? Colors.blue
                      : Colors.black12;
                });
              },
              icon: Icon(
                Icons.thumb_down,
                color: badIconColor,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
