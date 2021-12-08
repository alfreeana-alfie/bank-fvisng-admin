class User {
  // String name, email, phone;
  // int status, branch;
  // DateTime email_verified, sms_verified;

  String name, email, phone, status, branch, email_verified, sms_verified;

  User(
      {required this.name,
      required this.email,
      required this.phone,
      required this.status,
      required this.branch,
      required this.email_verified,
      required this.sms_verified});

  User.fromJSON(Map<String, dynamic> json)
      : name = json['data']['name'],
        email = json['data']['email'],
        phone = json['data']['phone'],
        status = json['data']['status'],
        branch = json['data']['branch'],
        email_verified = json['data']['email_verified'],
        sms_verified = json['data']['sms_verified'];

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        name: map['name'] as String,
        email: map['email'] as String,
        phone: map['phone'] as String,
        status: map['status'] as String,
        branch: map['branch'] as String,
        email_verified: map['email_verified_at'] as String,
        sms_verified: map['sms_verified_at'] as String,
        profile_picture: map['profile_picture'] as String
        );
  }
}
