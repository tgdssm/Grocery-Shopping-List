import 'dart:ui';

import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _animation = StepTween(begin: 0, end: 500).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.decelerate)
    )..addListener(() {setState(() {});});
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.reverse();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
      child: Stack(
        children: [
          AnimatedPositioned(
            bottom: 0,
            duration:const Duration(seconds: 3),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: _animation.value.toDouble(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20))
              ),
              child: Column(
                children: [

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
