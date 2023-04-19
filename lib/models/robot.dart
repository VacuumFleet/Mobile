class Robot {
  final String name;
  final String serial;
  final String id;
  final String user;

  Robot(
      {required this.name,
      required this.serial,
      required this.id,
      required this.user});

  factory Robot.fromJson(Map<String, dynamic> json) {
    return Robot(
      name: json['name'],
      serial: json['serial'],
      id: json['_id'],
      user: json['user'],
    );
  }
}
