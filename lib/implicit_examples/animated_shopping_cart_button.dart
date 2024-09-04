import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() =>
      _ShoppingCartButtonState();
}

class _ShoppingCartButtonState
    extends State<ShoppingCartButton> {
  bool addedToCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              addedToCart = !addedToCart;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 800),
            width: addedToCart ? 200.0 : 80,
            height: 60.0,
            decoration: BoxDecoration(
              color: addedToCart ? Colors.green : Colors.blue,
              borderRadius: addedToCart
                  ? BorderRadius.circular(30)
                  : BorderRadius.circular(10.0),
            ),
            child: addedToCart
                ? const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.check),
                      Text('Added to Cart')
                    ],
                  )
                : const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
          ),
        ),
      ),
    );
  }
}
