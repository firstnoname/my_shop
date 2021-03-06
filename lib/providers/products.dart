import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl: 'https://i.ebayimg.com/images/g/3YgAAOSwcZ1cHLMj/s-l300.jpg'),
    Product(
        id: 'p2',
        title: 'Green Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl: 'https://i.ebayimg.com/images/g/3YgAAOSwcZ1cHLMj/s-l300.jpg'),
    Product(
        id: 'p3',
        title: 'Blue Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl: 'https://i.ebayimg.com/images/g/3YgAAOSwcZ1cHLMj/s-l300.jpg'),
  ];

  List<Product> get items {
    // All of object in flutter are references type.
    // We must return a pointer at object memory.
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
//    _items.add(value);
    notifyListeners();
  }
}
