import 'package:flutter/material.dart';
import 'package:six30labstask/core/constant.dart';

Widget textWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    maxLines: 4,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

Widget iconWidget({
  required IconData icon,
  required Color color,
  required double size,
}) {
  return Icon(
    icon,
    color: color,
    size: size,
  );
}

Widget discriptionTextWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    maxLines: 20,
    style: TextStyle(
        height: 1.5,
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

Widget productTextWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

class TextTabWidget extends StatelessWidget {
  const TextTabWidget({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Center(
            child: textWidget(
              text: text,
              color: color == kBlue ? kWhite : kBlack,
              size: 15,
            ),
          ),
        ),
      ),
    );
  }
}

showSnacksBar(String text, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kGrey,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(seconds: 2),
      content: textWidget(text: text, color: kBlack, size: 15),
    ),
  );
}
