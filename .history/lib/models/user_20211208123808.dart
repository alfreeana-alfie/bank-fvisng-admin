class User {
  // String name, email, phone;
  // int status, branch;
  // DateTime email_verified, sms_verified;

  String name, email, phone,
  status, branch,
  email_verified, sms_verified;

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

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        name: map['name'] as String,
        sellerId: map['seller_id'] as String,
        sellerName: map['name'] as String,
        pName: map['p_name'] as String,
        categoryId: map['category_id'] as String,
        stock: map['quantity'] as String,
        content: map['content'] as String,
        price: map['price'] as String,
        // weight: map['weight'] as String,
        state: map['s_name'] as String,
        rating: map['rating'] as String,
        sold: map['sold'] as String,
        photo1: map['path01'] as String,
        photo2: map['path02'] as String,
        photo3: map['path03'] as String,
        photo4: map['path04'] as String,
        photo5: map['path05'] as String,
        createdAt: map['created_at'] as String);
  }
}
