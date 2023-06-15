class Restaurant {
  final String id;
  final String image;
  final String name_restoran;
  final String alamat;

  const Restaurant({
    required this.id,
    required this.image,
    required this.name_restoran,
    required this.alamat,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      image: json['image'],
      name_restoran: json['name_restoran'],
      alamat: json['alamat'],
    );
  }
}
