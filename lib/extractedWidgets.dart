import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color color;
  Color textColor;
  CustomButton(
      {required this.buttonName,
      this.color = const Color(0xFF6A5AE0),
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(
            child: CustomText(
          text: buttonName,
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        )),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;

  CustomText({
    required this.text,
    this.color = const Color(0xFF6A5AE0),
    this.fontWeight = FontWeight.w500,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
      textAlign: TextAlign.center,
    );
  }
}

class CustomTextFIeld extends StatelessWidget {
  String title;
  CustomTextFIeld({
    required this.title,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CustomText(
              text: title,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  label: Text('Your $title'),
                  prefixIcon: Container(
                    width: 50,
                  ),
                  border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
