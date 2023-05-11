import 'package:flutter/material.dart';
import 'package:luta_tutor/models/product_model.dart';
import 'package:luta_tutor/product_box.dart';
import 'package:luta_tutor/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(
        title: 'Luta',
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;

  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Product Navigation"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) { 
            return 
            ProductBox(item: items[index]);
           },



           
        //   children:  <Widget>[
        //     ProductBox(
        //       name: 'iPhone',
        //       description: "iPhone is the stylist phone ever",
        //       price: 50000,
        //       image: 'iphone.jpeg',
        //     ),
        //     ProductBox(
        //       name: 'Manchester',
        //       description: "United's Home Stadium",
        //       price: 50000,
        //       image: 'united.png',
        //     ),
        // ProductBox(
        //       name: 'iPhone',
        //       description: "iPhone is the stylist phone ever",
        //       price: 50000,
        //       image: 'iphone.jpeg',
        //     ),
        //    ProductBox(
        //       name: 'Manchester',
        //       description: "United's Home Stadium",
        //       price: 50000,
        //       image: 'united.png',
        //     ),
        //     ProductBox(
        //       name: 'iPhone',
        //       description: "iPhone is the stylist phone ever",
        //       price: 50000,
        //       image: 'iphone.jpeg',
        //     ),

        //     GestureDetector(
        //       onTap: () {
        //         _showDialog(context);
        //       },
        //       child: CustomButton(
        //         title: 'Submit',
        //       ),
        //     ),
        //   ]),
    
    
    ));
  }
}


//user defined function
void _showDialog(BuildContext context) {
  //flutter defined function
  showDialog(context: context, builder: (BuildContext context){
    //return a dialog
    return AlertDialog(
      title: Text('message'),
      content: Text('Hello World'),
      actions: <Widget>[
        ElevatedButton(onPressed: () {},
         child: Text('Close'),)
      ],
    );
  });
}


