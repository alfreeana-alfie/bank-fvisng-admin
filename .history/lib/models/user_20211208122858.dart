class User {
  // String name, email, phone;
  // int status, branch;
  // DateTime email_verified, sms_verified;
  

  User(
    this.name, 
    this.email, 
    this.phone, 
    this.status, 
    this.branch, 
    this.email_verified, 
    this.sms_verified
  );

  User.fromJSON(Map<String, dynamic> json)
      : name = json['data']['name'],
        email = json['data']['email'],
        phone = json['data']['phone'],
        status = json['data']['status'],
        branch = json['data']['branch'],
        email_verified = json['data']['email_verified'],
        sms_verified = json['data']['sms_verified']
        ;
}
