import 'package:flutter/material.dart';

class CustomButtonDelete extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonDelete({Key? key, this.text = "", this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: RichText(
          text: const TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        )
        // Text(
        //   text,
        //   style: const TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.black,
        //   ),
        // ),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.resolveWith(
        //       (states) => const Color(0XFFC4C4C4)),
        //   padding: MaterialStateProperty.resolveWith(
        //       (states) => const EdgeInsets.all(10)),
        //   elevation: MaterialStateProperty.resolveWith(
        //       (states) => 10.1), //shadow bagian bawah saja
        //   shape: MaterialStateProperty.resolveWith((states) =>
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
        //   // foregroundColor: MaterialStateProperty.resolveWith(
        //   //     (states) => Colors.amber)
        // ),

        );
  }
}
