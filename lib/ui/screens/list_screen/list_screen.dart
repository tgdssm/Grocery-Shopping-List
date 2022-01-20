import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grocery_shopping_list/ui/screens/list_screen/widgets/add_product.dart';
import 'package:grocery_shopping_list/ui/screens/list_screen/widgets/product_circle.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _showButtons() {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'baby.png',
                          description: 'Infântil',
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'meat.png',
                          description: 'Carnes',
                          backgroundColor: Colors.red,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'pet.png',
                          description: 'Animais',
                          backgroundColor: Colors.brown,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'fruits.png',
                          description: 'Frutas',
                          backgroundColor: Colors.green,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'vegetables.png',
                          description: 'Verduras',
                          backgroundColor: Colors.orange,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'grains.png',
                          description: 'Grãos',
                          backgroundColor: Colors.pink,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'cookies.png',
                          description: 'Doces & Biscoitos',
                          backgroundColor: Colors.indigo,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'cleaning.png',
                          description: 'Limpeza',
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showWidgetToAddProduct(),
                        child: const ProductCircle(
                          image: 'hygiene.png',
                          description: 'Higiene Pessoal',
                          backgroundColor: Colors.lightBlue,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () => _showWidgetToAddProduct(),
                    child: const ProductCircle(
                      image: 'others.png',
                      description: 'Outros',
                      backgroundColor: Colors.cyan,
                    ),
                  )
                ],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                child: const Icon(Icons.close, size: 35,),
                elevation: 1,
                onPressed: (){
                  Navigator.pop(context);
                },
              )
          ),
        );
      },
    );
  }

  void _showWidgetToAddProduct() async{
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) {
        return AddProduct();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        title: const Text('Lista de compras', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, size: 35,),
        elevation: 1,
        onPressed: (){
          _showButtons();
        },
      ),
    );
  }
}
