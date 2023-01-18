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
      elevation: 0,
      color: const Color.fromRGBO(255, 255, 255, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 12),
                child: Text(
                  '$rank位',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.name, style: const TextStyle(fontSize: 16)),
                    Text(user.account, style: const TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Row(
                children: [
                  const Text(
                    '累計',
                    style: TextStyle(fontSize: 12),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 4, right: 4),
                    child: Text(
                      user.totalLike.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const Text(
                    'いいね',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
