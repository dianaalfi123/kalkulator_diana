import 'package:flutter/widgets.dart';

class Trash extends StatelessWidget {
  const Trash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          int check = 0;
          int do_min = 0;
          if (val.length < 16) {
            print('cukup');
            if (val == "0") {
              val = "1";
            } else {
              val = "$val" + "1";
            }
          } else {
            if (!val.contains('e')) {
              val = "$val" + "e";
            } else {
              // if (val.length >= 11) {
              //   if (val.length == 11) {
              //   } else {
              //     check = val.length;
              //     do_min = check - val.length;
              //     print(do_min);
              //     val = val.substring(0, do_min - 1);
              //   }

              //   val = "$val" + val_e.toString();
              // } else {
              //   val = "$val" + val_e.toString();
              // }

              // val_e += 1;
            }
            // val = "$val" + "e";
          }
        });
      },
      child: const Text(
        '1',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Color(0XFFC4C4C4)),
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.all(10)),
        elevation: MaterialStateProperty.resolveWith(
            (states) => 10.1), //shadow bagian bawah saja
        shape: MaterialStateProperty.resolveWith((states) =>
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
        // foregroundColor: MaterialStateProperty.resolveWith(
        //     (states) => Colors.amber)
      ),
    );
  }
}
