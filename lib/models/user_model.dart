class UserModel {
  int? id;
  String? type;
  String? name;
  String? email;
  String? avatar;
  String? avatarUrl;
  String? phone;

  UserModel(
      {this.id,
      this.type,
      this.name,
      this.email,
      this.avatar,
      this.avatarUrl,
      this.phone});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    avatarUrl = json['avatar_url'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['email'] = email;
    data['avatar'] = avatar;
    data['avatar_url'] = avatarUrl;
    data['phone'] = phone;
    return data;
  }
}