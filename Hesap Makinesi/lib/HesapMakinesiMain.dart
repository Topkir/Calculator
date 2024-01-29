import 'dart:math';

import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {

  String sonuc = '0';
  String geciciSayi = '0';
  String operator = '';
  String operator2 = '';

  bool isButtonEnable = true;

  void hesapla() {
    double sayi1 = double.parse(geciciSayi.replaceAll(',', '.'));
    double sayi2 = double.parse(sonuc.replaceAll(',', '.'));

    switch (operator) {
      case '+':
        sonuc = (sayi1 + sayi2).toString();
        break;
      case '-':
        sonuc = (sayi1 - sayi2).toString();
        break;
      case '/':
        sonuc = (sayi1 / sayi2).toString();
        break;
      case '*':
        sonuc = (sayi1 * sayi2).toString();
        break;
    }
  }

  void YuzdeHesaplama () {
    double sayi1 = double.parse(sonuc);
    switch (operator) {
      case '%':
        sonuc = (sayi1 / 100).toString();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 260),
              child: Text(sonuc,
                style: TextStyle(
                  color: Colors.white,
                  height: 2,
                  fontSize: 70,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc = '0';
                      });
                    },
                    child: Text(
                      'AC',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        if (sonuc != '0') {
                          String parsedSonuc = (int.parse(sonuc) * -1).toInt().toString();
                          sonuc = parsedSonuc.toString();
                        } else {
                          sonuc = sonuc.startsWith('-') ? sonuc.substring(1) : '-' + sonuc;
                        }
                      });

                    },
                    child: Text(
                      '±',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),

                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        YuzdeHesaplama();
                      });
                    },
                    child: Text(
                      '%',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      operator = '/';
                      geciciSayi = sonuc;
                      sonuc = '0';
                    },
                    child: Text(
                      '/',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc = sonuc == '0' ? '7' : sonuc + '7';
                      });
                    },
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc == '0' ? sonuc = '8' : sonuc += '8';
                      });
                    },
                    child: Text(
                      '8',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc == '0' ? sonuc = '9' : sonuc += '9';
                      });
                    },
                    child: Text(
                      '9',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      operator = '*';
                      geciciSayi = sonuc;
                      sonuc = '0';
                    },
                    child: Text(
                      'x',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc = sonuc == '0' ? '4' : sonuc + '4';
                      });
                    },
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc == '0' ? sonuc = '5' : sonuc += '5';
                      });
                    },
                    child: Text(
                      '5',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc == '0' ? sonuc = '6' : sonuc += '6';
                      });
                    },
                    child: Text(
                      '6',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      operator = '-';
                      geciciSayi = sonuc;
                      sonuc = '0';
                    },
                    child: Text(
                      '—',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc = sonuc == '0' ? '1' : sonuc + '1';
                      });
                    },
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc == '0' ? sonuc = '2' : sonuc += '2';
                      });
                    },
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        sonuc == '0' ? sonuc = '3' : sonuc += '3';
                      });
                    },
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      operator = '+';
                      geciciSayi = sonuc;
                      sonuc = '0';
                    },
                    child: Text(
                      '+',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[600],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        fixedSize: Size.fromHeight(75),
                      ),
                      onPressed: () {
                        setState(() {
                          sonuc == '0' ? sonuc = '0' : sonuc += '0';
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[600],
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      if (isButtonEnable){
                        setState(() {
                          sonuc += ',';
                          isButtonEnable = false;
                        });
                      }
                      if (operator.isNotEmpty){
                        setState(() {
                          sonuc += ',';
                          operator = '';
                        });
                      }
                    },
                    child: Text(
                      ',',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: CircleBorder(),
                      fixedSize: Size.fromHeight(75),
                    ),
                    onPressed: () {
                      setState(() {
                        hesapla();
                      });
                    },
                    child: Text(
                      '=',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}