class Carrusel {
  final int id;
  final String name;
  final String image;
  final String description;

  const Carrusel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
  factory Carrusel.fromJson(Map<String, dynamic> json)=> Carrusel(
    id: json["id"], 
    name: json["name"], 
    image: json["image"], 
    description: json["description"],
  );
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "description": description,
  };
  Carrusel copy() => Carrusel(
    id: id, 
    name: name, 
    image: image, 
    description: description
  );
}