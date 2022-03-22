import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  final List<Widget>? dataSize;
  CustomSizeBox({Key? key, this.dataSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //atas bawah
        crossAxisAlignment: CrossAxisAlignment.center, //kanan kiri
        children: [
          Wrap(
            alignment: WrapAlignment.center, //kiri kanan
            crossAxisAlignment: WrapCrossAlignment.center, //atas bawah
            spacing: 10, //bagian kanan
            runSpacing: 10,
            children: [],
          ),
          // SizedBox(height: 30), //kalau kolom spasi pakai height
          // Text("data 2"),
          // SizedBox(height: 30), //kolom kosong
          // Text("data 3"),
        ],
      ),
    );
  }
}
