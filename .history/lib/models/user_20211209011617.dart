class User {
  // String name, email, phone;
  // int status, branch;
  // DateTime email_verified, sms_verified;

  String? name,
      email,
      status,
      phone,
      branch,
      email_verified,
      sms_verified,
      profile_picture, 
      country_code;

  User(
      {this.name,
      this.email,
      this.phone,
      this.status,
      this.branch,
      this.email_verified,
      this.sms_verified,
      this.profile_picture, 
      this.country_code});

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        name: map['name'] as String?,
        email: map['email'] as String?,
        phone: map['phone'] as String?,
        status: map['status'] as String?,
        branch: map['branch'] as String?,
        email_verified: map['email_verified_at'] as String?,
        sms_verified: map['sms_verified_at'] as String?,
        profile_picture: map['profile_picture'] as String?);
  }
}
