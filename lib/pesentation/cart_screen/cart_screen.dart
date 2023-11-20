import 'package:flutter/material.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textWidget(text: 'Cart', color: kBlack, size: 15),
      ),
    );
  }
}
