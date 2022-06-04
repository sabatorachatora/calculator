import 'package:flutter/material.dart';

import 'components/display.dart';
import 'components/long_button.dart';
import 'components/rect_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<StatefulWidget> {
  String displayText = "1";

  _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello world'),
        ),
        body: Center(
          child: SizedBox(
            width: 240,
            height: 300,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Display(displayText),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      createButton('1'),
                      createButton('2'),
                      createButton('3'),
                      createButton('÷'),
                      //createButton('--'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      createButton('4'),
                      createButton('5'),
                      createButton('6'),
                      createButton('×'),
                      //createButton('--'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          createButton('7'),
                          createButton('='),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          createButton('8'),
                          createButton('0'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          createButton('9'),
                          createButton('－'),
                        ],
                      ),
                      createLongButton('＋')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createButton(String name) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: RectButton(name, () {
        print("<><><> こんにちは。 <><><> $displayText");
        setState(() {
          displayText += "1";
        });
      }),
    );
  }

  Widget createLongButton(String name) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: LongButton(name, () {
        print("<><><> こんにちは。 <><><> $displayText");
        setState(() {
          displayText += "1";
        });
      }),
    );
  }
}
