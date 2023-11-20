import 'package:flutter/material.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/login_screen/widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/drone.png'),
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FirstHeadWidget(),
                kHeight30,
                SecondHeadWidget(size: size),
                const Spacer(),
                const RegisterAndLogingWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
