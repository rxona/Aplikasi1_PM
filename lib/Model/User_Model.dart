class User_Model {
  String? address;
  String? handphone;
  String? name;
  String? username;
  String? image;

  User_Model(
      {this.image, this.name, this.username, this.address, this.handphone});

  User_Model.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    handphone = json['handphone'];
    name = json['name'];
    username = json['username'];
    image = json['image'];
  }
}
