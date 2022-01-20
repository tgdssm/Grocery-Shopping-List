import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_shopping_list/data/models/supermarket_produtcs.dart';

class SupermarketProductsProvider {

  static Future<Map<String, dynamic>> create(SupermarketProducts products) async{
    CollectionReference _reference = FirebaseFirestore.instance.collection("Lists");
    try {
      await _reference.add(products.toJson());
      return {'result': true, 'data': products};
    } catch(e) {
      return {'result': true,};
    }
  }
}