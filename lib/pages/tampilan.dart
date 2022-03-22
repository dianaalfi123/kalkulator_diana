import 'package:flutter/material.dart';
import 'package:kalkulator/widgets/custom_button.dart';

class Tampilan extends StatefulWidget {
  const Tampilan({Key? key}) : super(key: key);

  @override
  State<Tampilan> createState() => _TampilanState();
}

class _TampilanState extends State<Tampilan> {
  int val_to_count = 0;
  String operator_data = '';
  String val_to_show = '';
  String val = '0';
  String val_nol = '';
  int val_e = 10;

  int nums = 0;
  int val_akhir = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 60,
            color: Colors.white,
          ),
          Container(
              height: 300,
              color: const Color(0XFF56C2FF),
              child: ListView(
                children: [
                  Container(
                    height: 40,
                  ),
                  //angka yang akan dihitung
                  Container(
                    child: Wrap(
                      // mainAxisAlignment: MainAxisAlignment.end, //kanan kiri
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      alignment: WrapAlignment.end, //kiri kanan
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,

                      //atas bawah
                      children: [
                        Text(
                          val_to_show,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFD3DBE1),
                            // overflow: TextOverflow
                            //     .visible, //muncul tidak penuh sisanya titik titik..
                            // fontFamily: "DancingScript",
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                  ),
                  //hasil
                  Container(
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
                ],
              )),
          const SizedBox(height: 50),
          Container(
            height: 700,
            width: 0,
            color: Colors.white,
            child: Wrap(
              //aligment sperti row
              alignment: WrapAlignment.center, //kiri kanan
              crossAxisAlignment: WrapCrossAlignment.end, //atas bawah
              spacing: 10, //bagian kanan
              runSpacing: 10, //bagian bawah
              children: [
                //%,CE,C,<
                SizedBox(
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //atas bawah
                    crossAxisAlignment: CrossAxisAlignment.center, //kanan kiri
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center, //kiri kanan
                        crossAxisAlignment:
                            WrapCrossAlignment.center, //atas bawah
                        spacing: 10, //bagian kanan
                        runSpacing: 10,
                        children: [
                          //%
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: '%',
                                onPressed: () {
                                  setState(() {
                                    if (val.length <= 16) {
                                      if (val == "0") {
                                        val = "3";
                                      } else {
                                        val = "$val" + "3";
                                      }
                                    }
                                  });
                                }),
                          ),
                          //CE
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: 'CE',
                                onPressed: () {
                                  setState(() {
                                    if (val.length <= 16) {
                                      if (val == "0") {
                                        val = "3";
                                      } else {
                                        val = "$val" + "3";
                                      }
                                    }
                                  });
                                }),
                          ),
                          //C
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: 'C',
                                onPressed: () {
                                  setState(() {
                                    if (val.length <= 16) {
                                      if (val == "0") {
                                        val = "3";
                                      } else {
                                        val = "$val" + "3";
                                      }
                                    }
                                  });
                                }),
                          ),
                          //<
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '<',
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
                                      var cut =
                                          val.substring(0, val.length - 1);
                                      val = cut;
                                      print(cut);
                                    }

                                    // }
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 30), //kalau kolom spasi pakai height
                      // Text("data 2"),
                      // SizedBox(height: 30), //kolom kosong
                      // Text("data 3"),
                    ],
                  ),
                ),
                //1,2,3,/
                SizedBox(
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //atas bawah
                    crossAxisAlignment: CrossAxisAlignment.center, //kanan kiri
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center, //kiri kanan
                        crossAxisAlignment:
                            WrapCrossAlignment.center, //atas bawah
                        spacing: 10, //bagian kanan
                        runSpacing: 10,
                        children: [
                          //1
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '1',
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
                                    // if (!val.contains('e')) {
                                    //   val = "$val" + "e";
                                    // } else {
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
                                  // }
                                });
                              },
                            ),
                          ),
                          //2
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: '2',
                                onPressed: () {
                                  setState(() {
                                    if (val.length <= 16) {
                                      if (val == "0") {
                                        val = "2";
                                      } else {
                                        val = "$val" + "2";
                                      }
                                    }
                                  });
                                }),
                          ),
                          //3
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: '3',
                                onPressed: () {
                                  setState(() {
                                    if (val.length <= 16) {
                                      if (val == "0") {
                                        val = "3";
                                      } else {
                                        val = "$val" + "3";
                                      }
                                    }
                                  });
                                }),
                          ),
                          //--/-- bagi
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '/',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "4";
                                    } else {
                                      val = "$val" + "4";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 30), //kalau kolom spasi pakai height
                      // Text("data 2"),
                      // SizedBox(height: 30), //kolom kosong
                      // Text("data 3"),
                    ],
                  ),
                ),
                //4,5,6,x
                SizedBox(
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //atas bawah
                    crossAxisAlignment: CrossAxisAlignment.center, //kanan kiri
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center, //kiri kanan
                        crossAxisAlignment:
                            WrapCrossAlignment.center, //atas bawah
                        spacing: 10, //bagian kanan
                        runSpacing: 10,
                        children: [
                          //4
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '4',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "4";
                                    } else {
                                      val = "$val" + "4";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //5
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '5',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "5";
                                    } else {
                                      val = "$val" + "5";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //6
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '6',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "6";
                                    } else {
                                      val = "$val" + "6";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //x
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: 'x',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "4";
                                    } else {
                                      val = "$val" + "4";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 30), //kalau kolom spasi pakai height
                      // Text("data 2"),
                      // SizedBox(height: 30), //kolom kosong
                      // Text("data 3"),
                    ],
                  ),
                ),
                //7,8,9,-
                SizedBox(
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //atas bawah
                    crossAxisAlignment: CrossAxisAlignment.center, //kanan kiri
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center, //kiri kanan
                        crossAxisAlignment:
                            WrapCrossAlignment.center, //atas bawah
                        spacing: 10, //bagian kanan
                        runSpacing: 10,
                        children: [
                          //7
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '7',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "7";
                                    } else {
                                      val = "$val" + "7";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //8
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '8',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "8";
                                    } else {
                                      val = "$val" + "8";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //9
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '9',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "9";
                                    } else {
                                      val = "$val" + "9";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //-
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '-',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
                                    if (val == "0") {
                                      val = "4";
                                    } else {
                                      val = "$val" + "4";
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 30), //kalau kolom spasi pakai height
                      // Text("data 2"),
                      // SizedBox(height: 30), //kolom kosong
                      // Text("data 3"),
                    ],
                  ),
                ),
                //.,0,=,+
                SizedBox(
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //atas bawah
                    crossAxisAlignment: CrossAxisAlignment.center, //kanan kiri
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center, //kiri kanan
                        crossAxisAlignment:
                            WrapCrossAlignment.center, //atas bawah
                        spacing: 10, //bagian kanan
                        runSpacing: 10,
                        children: [
                          //.
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '.',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
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
                            ),
                          ),
                          //0
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '0',
                              onPressed: () {
                                setState(() {
                                  if (val.length <= 16) {
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
                            ),
                          ),
                          //=
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '=',
                              onPressed: () {
                                setState(() {
                                  String to_equal = '$val' + operator_data;
                                  List<String> values =
                                      to_equal.split(operator_data);
                                  // print(to_equal.split(operator_data).first);
                                  // print(to_equal.split(operator_data).last);
                                  // print(to_equal.trimRight());
                                  values.forEach((e) {
                                    // nums = e;
                                    // print(e);
                                    print(int.parse(e) + int.parse(e));
                                    val_akhir = int.parse(e) + nums;
                                    nums = int.parse(e);
                                  });
                                  print(nums);
                                  print(val_akhir);
                                  var cut = to_equal.substring(
                                      0, to_equal.length - 1);
                                  val_to_show = cut;
                                  val = val_akhir.toString();
                                  // print(val_akhir.toString());
                                });
                              },
                            ),
                          ),
                          //+
                          Container(
                            width: 120,
                            height: 120,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '+',
                              onPressed: () {
                                setState(() {
                                  operator_data = '';
                                  operator_data = '+';
                                  if (!val.contains('+')) {
                                    val_to_count = int.parse(val);
                                    val = "$val" + '+';
                                  } else {
                                    var check = val.substring(val.length - 1);
                                    print(check);
                                    if (check != '+') {
                                      var before = val;
                                      print(val);

                                      // print(val);
                                      val_to_count =
                                          val_to_count + int.parse(check);
                                      val = val_to_count.toString() + "+";
                                      var cut =
                                          val.substring(0, val.length - 1);
                                      val_to_show =
                                          before + '=' + cut.toString();
                                    } else {
                                      val = "$val" +
                                          '+' +
                                          val_to_count.toString();
                                    }

                                    // val_to_count = int.parse(val);
                                    // val_to_count =
                                    //     val_to_count + int.parse(val);
                                  }
                                });
                              },
                            ),
                          ), // Container(
                        ],
                      ),
                      // SizedBox(height: 30), //kalau kolom spasi pakai height
                      // Text("data 2"),
                      // SizedBox(height: 30), //kolom kosong
                      // Text("data 3"),
                    ],
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
