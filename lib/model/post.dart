class Post {
  final int id;
  final String account;
  final String name;
  final String body;
  final int like;
  final String createdAt;

  Post({
    required this.id,
    required this.account,
    required this.name,
    required this.body,
    required this.like,
    required this.createdAt,
  });

  factory Post.formJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      account: json['account'] as String,
      name: json['name'] as String,
      body: json['body'] as String,
      like: json['like'] as int,
      createdAt: json['createdAt'] as String,
    );
  }
}
