import 'package:flutter/material.dart';
import 'package:kalkulator/widgets/custom_button.dart';
import 'package:kalkulator/widgets/cutom_buttton_delete.dart';

class Tampilan extends StatefulWidget {
  const Tampilan({Key? key}) : super(key: key);

  @override
  State<Tampilan> createState() => _TampilanState();
}

class _TampilanState extends State<Tampilan> {
  num val_to_count = 0;
  String operator_data = '';
  String val_to_show = '';
  String val = '0';
  String val_nol = '';
  num val_e = 10;
  String in_count = '';

  num nums = 0;
  num val_akhir = 0;
  String check_button = '';
  int check_klik = 0;
  String get_to_history = '';
  List<String> data_history = [];
  // List<String> histiry_style = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //header
          Container(
            height: 50,
            color: Colors.white,
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Standart',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'bree',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.open_in_new,
                  color: Colors.black,
                  size: 15,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ],
            ),
          ),
          //body blue to show
          Container(
              height: 300,
              color: const Color(0XFF9BBCD5),
              child: ListView(
                children: [
                  Container(
                    height: 60,
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
                            color: Color(0XFF7E868B),
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
                    height: 60,
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
                        // SizedBox(
                        //   width: 50,
                        // ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            val,
                            style: TextStyle(
                                // fontSize: 55,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF111314),
                                fontFamily: 'padauk',
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 50)
                                // overflow: TextOverflow
                                //     .visible, //muncul tidak penuh sisanya titik titik..
                                // fontFamily: "DancingScript",
                                ),
                          ),
                        ),

                        const SizedBox(width: 10),
                        // Text("Paras Arora",
                        //     style: TextStyle(
                        //         fontSize: AdaptiveTextSize()
                        //             .getadaptiveTextSize(context, 20)))
                      ],
                    ),
                  ),
                ],
              )),
          //space 50
          const SizedBox(height: 50),
          //all button
          Container(
            height: 630,
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
                            width: 110,
                            height: 110,
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
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: 'CE',
                                onPressed: () {
                                  setState(() {
                                    val = '0';
                                  });
                                }),
                          ),
                          //C
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: 'C',
                                onPressed: () {
                                  setState(() {
                                    val = '0';
                                    val_to_show = '';
                                  });
                                }),
                          ),
                          //<
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '<',
                              onPressed: () {
                                setState(() {
                                  print(check_klik);
                                  print(val);
                                  if (check_klik < 1) {
                                    if (val == "0") {
                                      val = "0";
                                    } else {
                                      // for (var i = 1; i >= val.length; i++) {
                                      if (val_to_show != '') {
                                        var check = '';
                                        check = val_to_show
                                            .substring(val_to_show.length - 1);
                                        print('ini check delete ' + check);
                                        if (val.length == 1) {
                                          if (check == "=") {
                                            val_to_show = '';
                                          } else {
                                            val = "0";
                                          }
                                        } else {
                                          // print(val);
                                          // var cut1 = val_to_show.substring(
                                          //     0, val_to_show.length - 1);
                                          // print('ini cut ' + cut1);
                                          if (check == "=") {
                                            val_to_show = '';
                                          } else {
                                            var cut = val.substring(
                                                0, val.length - 1);
                                            val = cut;
                                            print(cut);
                                          }
                                        }
                                      } else {
                                        if (val.length == 1) {
                                          val = "0";
                                        } else {
                                          var cut =
                                              val.substring(0, val.length - 1);
                                          val = cut;
                                          print(cut);
                                        }
                                      }
                                    }

                                    // }
                                  }
                                  // check_klik++;
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
                //7,8,9,/
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
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '7',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  if (val.length < 16) {
                                    if (val == "0") {
                                      val = "7";
                                    } else {
                                      if (in_count == '1') {
                                        val = "7";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "7";
                                      }
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //8
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '8',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  if (val.length < 16) {
                                    if (val == "0") {
                                      val = "8";
                                    } else {
                                      if (in_count == '1') {
                                        val = "8";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "8";
                                      }
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //9
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '9',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  if (val.length < 16) {
                                    if (val == "0") {
                                      val = "9";
                                    } else {
                                      if (in_count == '1') {
                                        val = "9";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "9";
                                      }
                                    }
                                  }
                                });
                              },
                            ),
                          ),

                          //--/-- bagi
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '/',
                              onPressed: () {
                                setState(() {
                                  check_klik++;
                                  operator_data = '';
                                  operator_data = '/';
                                  var check = '';
                                  print('ini cek klik' + check_klik.toString());
                                  if (val_to_show == '' || check_klik > 1) {
                                    val_to_show = val + '/';
                                    in_count = '1';
                                  } else {
                                    check = val_to_show
                                        .substring(val_to_show.length - 1);
                                    print('ini check ' + check);
                                    var cut = val_to_show.substring(
                                        0, val_to_show.length - 1);
                                    print('ini cut ' + cut);
                                    if (check == '-' ||
                                        check == '+' ||
                                        check == '/' ||
                                        check == '*') {
                                      if (check != '/') {
                                        if (check == '-') {
                                          val_to_count =
                                              num.parse(cut) - num.parse(val);
                                        } else if (check == '*') {
                                          val_to_count =
                                              num.parse(cut) * num.parse(val);
                                        } else if (check == '+') {
                                          val_to_count =
                                              num.parse(cut) + num.parse(val);
                                        }
                                      } else {
                                        val_to_count =
                                            num.parse(cut) / num.parse(val);
                                      }
                                      val_to_show = val_to_count.toString() +
                                          operator_data;
                                      get_to_history = cut +
                                          '$operator_data' +
                                          val +
                                          '=' +
                                          val_to_count.toString();
                                      data_history.add(get_to_history);
                                      val = val_to_count.toString();
                                      in_count = '1';
                                    }
                                  }
                                  print(val_to_count);
                                  print('ini val_to_show ' + val_to_show);
                                  print(data_history);
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
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '4',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  if (val.length < 16) {
                                    if (val == "0") {
                                      val = "4";
                                    } else {
                                      if (in_count == '1') {
                                        val = "4";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "4";
                                      }
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //5
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '5',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  if (val.length < 16) {
                                    if (val == "0") {
                                      val = "5";
                                    } else {
                                      if (in_count == '1') {
                                        val = "5";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "5";
                                      }
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //6
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '6',
                              onPressed: () {
                                check_klik = 0;
                                setState(() {
                                  if (val.length < 16) {
                                    if (val == "0") {
                                      val = "6";
                                    } else {
                                      if (in_count == '1') {
                                        val = "6";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "6";
                                      }
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //x
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: 'x',
                              onPressed: () {
                                setState(() {
                                  check_klik++;
                                  operator_data = '';
                                  operator_data = '*';
                                  var check = '';
                                  print('ini cek klik' + check_klik.toString());
                                  if (val_to_show == '' || check_klik > 1) {
                                    val_to_show = val + '*';
                                    in_count = '1';
                                  } else {
                                    check = val_to_show
                                        .substring(val_to_show.length - 1);
                                    print('ini check ' + check);
                                    var cut = val_to_show.substring(
                                        0, val_to_show.length - 1);
                                    print('ini cut ' + cut);
                                    if (check == '-' ||
                                        check == '+' ||
                                        check == '/' ||
                                        check == '*') {
                                      if (check != '*') {
                                        if (check == '-') {
                                          val_to_count =
                                              num.parse(cut) - num.parse(val);
                                        } else if (check == '/') {
                                          val_to_count =
                                              num.parse(cut) / num.parse(val);
                                        } else if (check == '+') {
                                          val_to_count =
                                              num.parse(cut) + num.parse(val);
                                        }
                                      } else {
                                        val_to_count =
                                            num.parse(cut) * num.parse(val);
                                      }
                                      val_to_show = val_to_count.toString() +
                                          operator_data;
                                      get_to_history = cut +
                                          '$operator_data' +
                                          val +
                                          '=' +
                                          val_to_count.toString();
                                      data_history.add(get_to_history);
                                      val = val_to_count.toString();
                                      in_count = '1';
                                    }
                                  }
                                  print(val_to_count);
                                  print('ini val_to_show ' + val_to_show);
                                  print(data_history);
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
                //1,2,3,-
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
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '1',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  int check = 0;
                                  int do_min = 0;
                                  if (val.length < 16) {
                                    print('cukup');
                                    if (val == "0") {
                                      val = "1";
                                    } else {
                                      if (in_count == '1') {
                                        val = "1";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "1";
                                      }
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
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: '2',
                                onPressed: () {
                                  setState(() {
                                    check_klik = 0;
                                    if (val.length < 16) {
                                      if (val == "0") {
                                        val = "2";
                                      } else {
                                        if (in_count == '1') {
                                          val = "2";
                                          in_count = '';
                                        } else {
                                          val = "$val" + "2";
                                        }
                                      }
                                    }
                                  });
                                }),
                          ),
                          //3
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                                text: '3',
                                onPressed: () {
                                  setState(() {
                                    check_klik = 0;
                                    if (val.length < 16) {
                                      if (val == "0") {
                                        val = "3";
                                      } else {
                                        if (in_count == '1') {
                                          val = "3";
                                          in_count = '';
                                        } else {
                                          val = "$val" + "3";
                                        }
                                      }
                                    }
                                  });
                                }),
                          ),

                          //-
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '-',
                              onPressed: () {
                                setState(() {
                                  check_klik++;
                                  operator_data = '';
                                  operator_data = '-';
                                  print('ini cek klik' + check_klik.toString());
                                  var check = '';
                                  if (val_to_show == '' || check_klik > 1) {
                                    val_to_show = val + '-';
                                    in_count = '1';
                                  } else {
                                    check = val_to_show
                                        .substring(val_to_show.length - 1);
                                    print('ini check ' + check);
                                    var cut = val_to_show.substring(
                                        0, val_to_show.length - 1);
                                    print('ini cut ' + cut);
                                    if (check == '-' ||
                                        check == '+' ||
                                        check == '/' ||
                                        check == '*') {
                                      if (check != '-') {
                                        if (check == '+') {
                                          val_to_count =
                                              num.parse(cut) + num.parse(val);
                                        } else if (check == '/') {
                                          val_to_count =
                                              num.parse(cut) / num.parse(val);
                                        } else if (check == '*') {
                                          val_to_count =
                                              num.parse(cut) * num.parse(val);
                                        }
                                      } else {
                                        val_to_count =
                                            num.parse(cut) - num.parse(val);
                                      }

                                      val_to_show = val_to_count.toString() +
                                          operator_data;
                                      get_to_history = cut +
                                          '$operator_data' +
                                          val +
                                          '=' +
                                          val_to_count.toString();
                                      data_history.add(get_to_history);
                                      val = val_to_count.toString();
                                      in_count = '1';
                                    }
                                  }
                                  print(val_to_count);
                                  print('ini val_to_show ' + val_to_show);
                                  print(data_history);
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
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '.',
                              onPressed: () {
                                setState(() {
                                  if (val.length < 16) {
                                    // if (val_to_show == '') {
                                    // var check = '';
                                    // check = val.substring(val.length - 1);
                                    // print('ini check delete ' + check);
                                    // } else {}
                                    print(val);
                                    // if (check != '.') {
                                    if (!val.contains('.')) {
                                      if (in_count == '1') {
                                        val = "0.";
                                        // val = "$val" + ".";
                                        in_count = '';
                                      } else {
                                        val = "$val" + ".";
                                      }
                                    }
                                    // }

                                    // if (val == "0") {
                                    //   if (val_nol == "1") {
                                    //     val = "$val" + ".";
                                    //   } else {
                                    //     val = ".";
                                    //   }
                                    // } else {

                                    // }
                                  }
                                });
                              },
                            ),
                          ),
                          //0
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '0',
                              onPressed: () {
                                setState(() {
                                  check_klik = 0;
                                  if (val.length < 16) {
                                    val_nol = "1";
                                    if (val == "0") {
                                      val = "0";
                                    } else {
                                      if (in_count == '1') {
                                        val = "0";
                                        in_count = '';
                                      } else {
                                        val = "$val" + "0";
                                      }
                                      // int.parse(val);
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                          //=
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              colorButton: 0XFF9EC3DF,
                              text: '=',
                              onPressed: () {
                                setState(() {
                                  check_klik++;
                                  print(operator_data);
                                  // operator_data = '';

                                  var check = '';
                                  print('ini cek klik' + check_klik.toString());
                                  check = val_to_show
                                      .substring(val_to_show.length - 1);
                                  print('ini check ' + check);
                                  var cut = val_to_show.substring(
                                      0, val_to_show.length - 1);
                                  print('ini cut ' + cut);
                                  if (check == '-' ||
                                      check == '+' ||
                                      check == '/' ||
                                      check == '*') {
                                    if (check != '+') {
                                      if (check == '-') {
                                        val_to_count =
                                            num.parse(cut) - num.parse(val);
                                      } else if (check == '/') {
                                        val_to_count =
                                            num.parse(cut) / num.parse(val);
                                      } else if (check == '*') {
                                        val_to_count =
                                            num.parse(cut) * num.parse(val);
                                      }
                                    } else {
                                      val_to_count =
                                          num.parse(cut) + num.parse(val);
                                    }
                                    val_to_show =
                                        cut + operator_data + val + '=';
                                    get_to_history = cut +
                                        '$operator_data' +
                                        val +
                                        '=' +
                                        val_to_count.toString();
                                    data_history.add(get_to_history);
                                    val = val_to_count.toString();
                                    in_count = '1';
                                  }
                                  operator_data = '=';
                                  print(val_to_count);
                                  print('ini val_to_show ' + val_to_show);
                                  print(data_history);

                                  // String to_equal = '$val' + operator_data;
                                  // List<String> values =
                                  //     to_equal.split(operator_data);
                                  // // print(to_equal.split(operator_data).first);
                                  // // print(to_equal.split(operator_data).last);
                                  // // print(to_equal.trimRight());
                                  // values.forEach((e) {
                                  //   // nums = e;
                                  //   // print(e);
                                  //   print(int.parse(e) + int.parse(e));
                                  //   val_akhir = int.parse(e) + nums;
                                  //   nums = int.parse(e);
                                  // });
                                  // print(nums);
                                  // print(val_akhir);
                                  // var cut = to_equal.substring(
                                  //     0, to_equal.length - 1);
                                  // val_to_show = cut;
                                  // val = val_akhir.toString();
                                  // // print(val_akhir.toString());
                                });
                              },
                            ),
                          ),
                          //+
                          Container(
                            width: 110,
                            height: 110,
                            color: Colors.transparent,
                            child: CustomButton(
                              text: '+',
                              onPressed: () {
                                setState(() {
                                  check_klik++;
                                  operator_data = '';
                                  operator_data = '+';
                                  var check = '';
                                  print('ini cek klik' + check_klik.toString());
                                  if (val_to_show == '' || check_klik > 1) {
                                    val_to_show = val + '+';
                                    in_count = '1';
                                  } else {
                                    check = val_to_show
                                        .substring(val_to_show.length - 1);
                                    print('ini check ' + check);
                                    var cut = val_to_show.substring(
                                        0, val_to_show.length - 1);
                                    print('ini cut ' + cut);
                                    if (check == '-' ||
                                        check == '+' ||
                                        check == '/' ||
                                        check == '*') {
                                      if (check != '+') {
                                        if (check == '-') {
                                          val_to_count =
                                              num.parse(cut) - num.parse(val);
                                        } else if (check == '/') {
                                          val_to_count =
                                              num.parse(cut) / num.parse(val);
                                        } else if (check == '*') {
                                          val_to_count =
                                              num.parse(cut) * num.parse(val);
                                        }
                                      } else {
                                        val_to_count =
                                            num.parse(cut) + num.parse(val);
                                      }

                                      val_to_show = val_to_count.toString() +
                                          operator_data;

                                      get_to_history = cut +
                                          '$operator_data' +
                                          val +
                                          '=' +
                                          val_to_count.toString();
                                      data_history.add(get_to_history);
                                      // data_history.sort();
                                      val = val_to_count.toString();
                                      in_count = '1';
                                    }
                                  }
                                  print(val_to_count);
                                  print('ini val_to_show ' + val_to_show);
                                  print(data_history);

                                  // print('val awal ' + val);
                                  // if (!val.contains('+') &&
                                  //     !val.contains('-')) {
                                  //   val_to_count = int.parse(val);
                                  //   val = "$val" + '+';
                                  // } else {
                                  //   var check = val.substring(val.length - 1);
                                  //   print('ini check ' + check);
                                  //   if (check != '+' && check != '-') {
                                  //     var before = val;
                                  //     print('ini val ' + val);

                                  //     // print(val);
                                  //     val_to_count =
                                  //         val_to_count + int.parse(check);
                                  //     val = val_to_count.toString() + "+";
                                  //     var cut =
                                  //         val.substring(0, val.length - 1);
                                  //     val_to_show =
                                  //         before + '=' + cut.toString();
                                  //   } else {
                                  //     if (check == "+" ||
                                  //         check == '-' ||
                                  //         check == '/' ||
                                  //         check == '*') {
                                  //       print(
                                  //           'ini jika klik operan lagi ' + val);
                                  //       val = val_to_count.toString() + '+';
                                  //     } else {
                                  //       val = "$val" +
                                  //           '+' +
                                  //           val_to_count.toString();
                                  //     }
                                  //   }

                                  //   // val_to_count = int.parse(val);
                                  //   // val_to_count =
                                  //   //     val_to_count + int.parse(val);
                                  // }
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
          ),

          //container history
          Container(
            height: 300,
            color: Color(0XFFD2E7F7),
            child: ListView(shrinkWrap: true, children: histiryStyle),
          ),
          //space
          Container(
            height: 15,
            color: Color(0XFFD2E7F7),
          ),
          //button delete history
          Container(
            height: 40,
            color: Color(0XFFD2E7F7),
            child: Wrap(
              alignment: WrapAlignment.end,
              // crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                CustomButtonDelete(
                  onPressed: () {
                    setState(() {
                      data_history = [];
                    });
                  },
                )
              ],
            ),
          ),
          //space
          Container(
            height: 15,
            color: Color(0XFFD2E7F7),
          ),
        ],
      ),
    );
  }

  List<Widget> get histiryStyle {
    List<Widget> output = [];
    var olahString = '';
    List<String> strToEachAgain = [];
    var cxtCountCheck = 'a';
    var cxtCount = '';
    var cxtValue = '';
    var checkToSlice = '';
    var find = '';
    var replaceWith = '';
    var newString = '';
    // data_history.sort();
    data_history.map((e) {
      print('ini e ');
      print(e);
      olahString = e;
      print('ini olah ');
      print(olahString.split('='));
      strToEachAgain = olahString.split('=');

      cxtCount = strToEachAgain[0];
      cxtValue = strToEachAgain[1];

      if (cxtCount.contains('+')) {
        find = '+';
        replaceWith = '  +  ';
        newString = cxtCount.replaceAll(find, replaceWith);
        cxtCount = newString;
      } else if (cxtCount.contains('-')) {
        find = '-';
        replaceWith = '  -  ';
        newString = cxtCount.replaceAll(find, replaceWith);
        cxtCount = newString;
      } else if (cxtCount.contains('*')) {
        find = '*';
        replaceWith = '  *  ';
        newString = cxtCount.replaceAll(find, replaceWith);
        cxtCount = newString;
      } else if (cxtCount.contains('/')) {
        find = '/';
        replaceWith = '  /  ';
        newString = cxtCount.replaceAll(find, replaceWith);
        cxtCount = newString;
      }
      // cxtCount.padLeft(4, '+');
      print('ini cxt1 ');
      print(cxtCount);
      output.add(
        Container(
          height: 40,
          color: Color(0XFFD2E7F7),
          child: Wrap(
            alignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            runAlignment: WrapAlignment.center,
            children: [
              Container(
                height: 15,
                decoration: const BoxDecoration(
                  color: Color(0XFFD2E7F7),
                ),
                child: Text(
                  "$cxtCount  = ",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'padauk',
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      );
      //Color(0XFFD2E7F7)
      output.add(
        Container(
          height: 50,
          color: Color(0XFFD2E7F7),
          child: Wrap(
            alignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            runAlignment: WrapAlignment.center,
            children: [
              Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0XFFD2E7F7),
                ),
                child: Text(
                  "$cxtValue",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'padauk',
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      );
      output.add(
        Container(height: 30, color: Color(0XFFD2E7F7)),
      );
    }).toList();
    return output;
  }

  final List<String> nama = ['diana', 'alfi', 'ainun', 'nur', 'kha', 'sanah'];
}

class AdaptiveTextSize {
  const AdaptiveTextSize();

  getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
    return (value / 720) * MediaQuery.of(context).size.height;
  }
}


// ListView(
//               shrinkWrap: true,
//               children: data_history
//                   .map(
//                     (e) => Container(
//                       height: 50,
//                       color: Color(0XFFD2E7F7),
//                       child: Wrap(
//                         alignment: WrapAlignment.end,
//                         crossAxisAlignment: WrapCrossAlignment.end,
//                         runAlignment: WrapAlignment.center,
//                         children: [
//                           Container(
//                             height: 20,
//                             decoration: const BoxDecoration(
//                               color: Colors.amber,
//                             ),
//                             child: Text(
//                               e,
//                               style: const TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20,
//                                   fontFamily: 'padauk',
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                   .toList(),
//             ),