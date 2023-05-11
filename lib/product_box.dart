import 'package:flutter/material.dart';
import 'package:luta_tutor/rating_box.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/product_model.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.item
      // required this.name,
      // required this.description,
      // required this.price,
      // required this.image
      });

  final Product item;

  // final String name;
  // final String description;
  // final int price;
  // final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/${item.image}'),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(5),
              child: ScopedModel<Product>(
                model: item,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        item.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(item.description),
                      Text("Price: ${item.price}"),
                      ScopedModelDescendant<Product>(
                        builder: (context, child, item) {
                          return RatingBox(item: item,);
                        },
                        ),
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
