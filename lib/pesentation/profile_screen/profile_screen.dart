import 'package:flutter/material.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textWidget(text: 'Profile', color: kBlack, size: 15),
      ),
    );
  }
}
