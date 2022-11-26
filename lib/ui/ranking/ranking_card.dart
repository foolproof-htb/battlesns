import 'package:flutter/material.dart';
import '../../model/user.dart';

class RankingCard extends StatefulWidget {
  final User user;
  final int rank;

  RankingCard({required this.user, required this.rank});

  @override
  State<RankingCard> createState() => _RankingState();
}

class _RankingState extends State<RankingCard> {
  @override
  Widget build(BuildContext context) {
    User user = widget.user;
    int rank = widget.rank;

    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text('$rank位'),
              Text(user.name),
              Text(user.account),
              Text(user.totalLike.toString())
            ],
          )
        ],
      ),
    );
  }
}
