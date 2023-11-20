import 'package:flutter/material.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textWidget(text: 'Notification', color: kBlack, size: 15),
      ),
    );
  }
}
