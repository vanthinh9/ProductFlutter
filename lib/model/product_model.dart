class ProductModel{
  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      id: json["id"],
      image: json["image"],
      title: json["title"],
      price: json["price"],
      description: json["description"],
      category: json["category"]
    );
  }
}