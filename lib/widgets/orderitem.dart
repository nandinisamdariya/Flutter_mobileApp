import 'package:flutter/material.dart';
import 'package:shopping1_app/model/cart_model.dart';

class OrderItem extends StatelessWidget {
  final CartModel e;
  OrderItem({required this.e});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        e.cartImage,
        width: 60,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           e.cartName,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
      
          Text(
            "\$${e.cartPrice}",
            
          ),
        ],
      ),
      subtitle: Text(e.cartQuantity.toString()),
    );
  }
}
