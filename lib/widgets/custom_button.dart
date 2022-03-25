import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final int colorButton;
  const CustomButton(
      {Key? key, this.text = "", this.onPressed, this.colorButton = 0XFFC4C4C4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: optionText,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Color(colorButton)),
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.all(10)),
        elevation: MaterialStateProperty.resolveWith(
            (states) => 10.1), //shadow bagian bawah saja
        shape: MaterialStateProperty.resolveWith((states) =>
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
        // foregroundColor: MaterialStateProperty.resolveWith(
        //     (states) => Colors.amber)
      ),
    );
  }

  Widget get optionText {
    Widget output;
    if (text == '<') {
      output = RichText(
        text: const TextSpan(
          children: [
            WidgetSpan(
              child: Icon(Icons.backspace, color: Colors.black, size: 40),
            ),
          ],
        ),
      );
    } else if (text == 'x') {
      output = RichText(
        text: const TextSpan(
          children: [
            WidgetSpan(
              child: Icon(Icons.clear, color: Colors.black, size: 40),
            ),
          ],
        ),
      );
    } else if (text == '-') {
      output = RichText(
        text: const TextSpan(
          children: [
            WidgetSpan(
              child: Icon(Icons.remove, color: Colors.black, size: 40),
            ),
          ],
        ),
      );
    } else if (text == '+') {
      output = RichText(
        text: const TextSpan(
          children: [
            WidgetSpan(
              child: Icon(Icons.add, color: Colors.black, size: 40),
            ),
          ],
        ),
      );
    } else if (text == '=') {
      output = RichText(
        text: const TextSpan(
          children: [
            WidgetSpan(
              child: Icon(Icons.drag_handle, color: Colors.black, size: 40),
            ),
          ],
        ),
      );
    } else {
      output = Text(
        text,
        style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'padauk'),
      );
    }
    return output;
  }
}
