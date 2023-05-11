import 'package:flutter/material.dart';
import 'package:luta_tutor/models/product_model.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key, required this.item});

  final Product item;

//   @override
//   State<RatingBox> createState() => _RatingBoxState();
// }

// class _RatingBoxState extends State<RatingBox> {

//   int _rating = 0;

//   void _setRatingAsOne() {
//     setState(() {
//       _rating = 1;
//     });
//   }
//   void _setRatingAsTwo() {
//     setState(() {
//       _rating = 2;
//     });
//   }
//   void _setRatingAsThree() {
//     setState(() {
//       _rating = 3;
//     });
//   }
//   @override


  Widget build(BuildContext context) {
    double _size = 20;
    print(item.rating);
    
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
            // _setRatingAsOne();
            item.updatingRating(1);
          },
           icon: (item.rating >= 1 ? Icon(Icons.star, size: _size) : Icon(Icons.star_border, size: _size)),
           color: Colors.red[500],
           iconSize: _size,)
        ),
     Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
            // _setRatingAsTwo();
            item.updatingRating(2);
          },
           icon: ( item.rating >= 2 ? Icon(Icons.star, size: _size) : Icon(Icons.star_border, size: _size)

           ),
           color: Colors.red[500],
           iconSize: _size,)
        ),
     Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            onPressed: () => 
            // _setRatingAsThree();
            item.updatingRating(3)
          ,
           icon: (item.rating >= 3 ? Icon(Icons.star, size: _size) : Icon(Icons.star_border, size: _size)),
           color: Colors.red[500],
           iconSize: _size,)
        ),
      ],
    );
}

}