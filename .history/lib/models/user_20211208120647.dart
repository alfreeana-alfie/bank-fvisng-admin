class User {
  String name, email, phone;
  int status, branch;
  DateTime email_verified, sms_verified;

  User(this.name, this.email, this.username, this.email, this.image);

  User.fromJSON(Map<String, dynamic> json)
      : id        = json['data']['uid'],
        name      = json['data']['name'],
        username  = json['data']['username'],
        email     = json['data']['email'],
        image     = json['data']['image'];
}
