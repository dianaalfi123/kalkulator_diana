import 'package:flutter/material.dart';

class Tampilan extends StatefulWidget {
  const Tampilan({Key? key}) : super(key: key);

  @override
  State<Tampilan> createState() => _TampilanState();
}

class _TampilanState extends State<Tampilan> {
  String val = '0';
  String val_nol = '';
  int val_e = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.white,
          ),
          Container(
            height: 200,
            color: const Color(0XFF56C2FF),
            child: Wrap(
              // mainAxisAlignment: MainAxisAlignment.end, //kanan kiri
              // crossAxisAlignment: CrossAxisAlignment.center,
              alignment: WrapAlignment.end, //kiri kanan
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,

              //atas bawah
              children: [
                Text(
                  val,
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    // overflow: TextOverflow
                    //     .visible, //muncul tidak penuh sisanya titik titik..
                    // fontFamily: "DancingScript",
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(height: 100),
          Container(
            height: 600,
            color: Colors.white,
            child: Wrap(
              //aligment sperti row
              alignment: WrapAlignment.center, //kiri kanan
              crossAxisAlignment: WrapCrossAlignment.end, //atas bawah
              spacing: 10, //bagian kanan
              runSpacing: 10, //bagian bawah
              children: [
                //  color: Color(0XFFC4C4C4),

                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        int check = 0;
                        int do_min = 0;
                        if (val.length <= 9) {
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
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "2";
                          } else {
                            val = "$val" + "2";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "3";
                          } else {
                            val = "$val" + "3";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '3',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "4";
                          } else {
                            val = "$val" + "4";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '4',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "5";
                          } else {
                            val = "$val" + "5";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '5',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "6";
                          } else {
                            val = "$val" + "6";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '6',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "7";
                          } else {
                            val = "$val" + "7";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '7',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "8";
                          } else {
                            val = "$val" + "8";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '8',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            val = "9";
                          } else {
                            val = "$val" + "9";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '9',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          if (val == "0") {
                            if (val_nol == "1") {
                              val = "$val" + ".";
                            } else {
                              val = ".";
                            }
                          } else {
                            val = "$val" + ".";
                          }
                        }
                      });
                    },
                    child: const Text(
                      '.',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val.length <= 15) {
                          val_nol = "1";
                          if (val == "0") {
                            val = "0";
                          } else {
                            val = "$val" + "0";
                            // int.parse(val);
                          }
                        }
                      });
                    },
                    child: const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ), // Container(
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (val == "0") {
                          val = "0";
                        } else {
                          // for (var i = 1; i >= val.length; i++) {
                          if (val.length == 1) {
                            val = "0";
                          } else {
                            print(val);
                            var cut = val.substring(0, val.length - 1);
                            val = cut;
                            print(cut);
                          }

                          // }
                        }
                      });
                    },
                    child: const Text(
                      '<',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => const Color(0XFFC4C4C4)),
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.resolveWith(
                          (states) => 10.1), //shadow bagian bawah saja
                      shape: MaterialStateProperty.resolveWith((states) =>
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      // foregroundColor: MaterialStateProperty.resolveWith(
                      //     (states) => Colors.amber)
                    ),
                  ),
                ),
                //     width: 120, height: 120, color: const Color(0XFFC4C4C4)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
