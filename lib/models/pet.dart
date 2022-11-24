class Pet {
  int? id;
  String name;
  String image;
  int age;
  bool adopted;
  String gender;

  Pet(
      {this.id,
      required this.name,
      required this.image,
      this.adopted = false,
      required this.age,
      required this.gender});

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
        id: json['id'],
        name: json['name'],
        adopted: json['adopted'],
        image: json['image'],
        age: json['age'],
        gender: json['gender']);
  }
}
