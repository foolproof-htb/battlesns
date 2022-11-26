class User {
  final int id;
  final String account;
  final String name;
  final int totalLike;

  User({
    required this.id,
    required this.account,
    required this.name,
    required this.totalLike,
  });

  factory User.formJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      account: json['account'] as String,
      name: json['name'] as String,
      totalLike: json['like'] as int,
    );
  }
}
