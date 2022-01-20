import 'package:flutter/material.dart';

const imagePath = "assets/icons/";

class ProductCircle extends StatefulWidget {
  final Color backgroundColor;
  final String image;
  final String description;
  const ProductCircle({Key? key, required this.backgroundColor, required this.image, required this.description}) : super(key: key);

  @override
  _ProductCircleState createState() => _ProductCircleState();
}

class _ProductCircleState extends State<ProductCircle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              shape: BoxShape.circle
            ),
            child: Center(child: Image.asset(imagePath + widget.image, color: Colors.white, width: 65,)),
          ),
          const SizedBox(height: 15,),
          Container(
            width: 125,
              alignment: Alignment.center,
              child: Text(widget.description, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: widget.backgroundColor),
              textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}
