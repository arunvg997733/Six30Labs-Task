import 'package:flutter/material.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/main_screen/main_screen.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class RegisterAndLogingWidget extends StatelessWidget {
  const RegisterAndLogingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kDarkGrey,
        border: Border.all(color: kWhite, width: 0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                  showSnacksBar("Registered Successfully", context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kGrey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: textWidget(
                      text: 'Register',
                      color: kWhite,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                  showSnacksBar("Login Successfully", context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: textWidget(
                      text: 'Log in',
                      color: kBlack,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SecondHeadWidget extends StatelessWidget {
  const SecondHeadWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size * 0.8,
      child: textWidget(
        text: 'EXPLORE THE WORLD FROM A NEW -------> PERSPECTIVE',
        color: kWhite,
        size: 35,
        weight: FontWeight.w500,
      ),
    );
  }
}

class FirstHeadWidget extends StatelessWidget {
  const FirstHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 11,
          backgroundColor: kWhite,
          child: CircleAvatar(
            backgroundColor: kBlack,
            radius: 10,
            child: iconWidget(
              icon: Icons.dark_mode_rounded,
              color: kWhite,
              size: 15,
            ),
          ),
        ),
        kWidth10,
        textWidget(
          text: 'DRONEY',
          color: kWhite,
          size: 15,
        )
      ],
    );
  }
}
