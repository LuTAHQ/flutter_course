import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  late final int rating;

  Product(this.name, this.description, this.price, this.image, this.rating);

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(json['name'], json['description'], json['price'],
        json['image'], json['rating']);
  }

  void updatingRating(int myRating) {
    rating = myRating;

    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(Product("Pixel", "Pixel is the most feature-full phone ever", 600,
        'united.png', 0));
    items.add(Product("United", "Theathre of dreams", 2000,
        'united.png', 0));
    items.add(Product("Laptop", "Laptop is the most productive developemnt tool", 4000,
        'united.png', 0));
    items.add(Product("Pendrive", "Pendrive is a useful storage medium", 100,
        'united.png', 0));
    items.add(Product("Pixel", "Pixel is the most feature-full phone ever", 600,
        'united.png', 0));

        return items;
  }
}
