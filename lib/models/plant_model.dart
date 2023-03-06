class PlantModel {
  PlantModel(
    this.title,
    this.image,
    this.country,
    this.price,
    this.id,
  );

  final String title, image, country;
  final int price;
  final int id;

  @override
  String toString() {
    return 'PlantModel{title: $title, image: $image, country: $country, price: $price, id: $id}';
  }
}
