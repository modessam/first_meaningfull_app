import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BMI CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  double z = 171;
  int wh = 55, age = 20;
  bool num = false;

  @override
  Widget build(BuildContext context) {
    // Color? getcolor() {
    //   int s = 1;
    //   if (num == 1) {
    //     if (s == 1) {
    //       return const Color(0xff24263b);
    //     } else {
    //       return const Color(0xff323244);
    //     }
    //   }
    //   if (num == 2) {
    //     if (s == 1) {
    //       return const Color(0xff323244);
    //     } else {
    //       return const Color(0xff24263b);
    //     }
    //   }
    // }

    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          print(
              "${(2.20462262 * wh.toDouble()) / ((0.393700787 * z) * (0.393700787 * z)) * 703}");
        },
        child: Container(
            decoration: const BoxDecoration(
                color: Color(
              0xffd7466a,
            )),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "calculate",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            )),
      ),
      backgroundColor: Color(0xff1d2136),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        num = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: num ? Color(0xff323244) : Color(0xff24263b),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.male,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            "male",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff848492)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        num = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: num ? Color(0xff24263b) : Color(0xff323244),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 100,
                          ),
                          Text(
                            "female",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff848492)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff323244),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(15),
                width: double.infinity,
                child: Column(
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 20, color: Color(0xff848492)),
                    ),
                    Text(
                      "${z.toInt()} cm",
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Slider(
                      max: 250,
                      inactiveColor: const Color(0xff848492),
                      activeColor: const Color(0xffd7466a),
                      value: z,
                      onChanged: (double value) {
                        setState(() {
                          z = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff323244),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const Text(
                          "weight",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff848492)),
                        ),
                        Text(
                          "$wh",
                          style: const TextStyle(
                              fontSize: 40, color: Colors.white),
                        ),
                        Row(
                          children: [
                            FlatButton(
                              minWidth: 0,
                              shape: CircleBorder(),
                              color: Color(0xff5d5f6e),
                              child: const Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (wh != 0) wh--;
                                });
                              },
                            ),
                            FlatButton(
                              minWidth: 0,
                              shape: CircleBorder(),
                              color: Color(0xff5d5f6e),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {
                                  wh++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff323244),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const Text(
                          "age",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff848492)),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                              fontSize: 40, color: Colors.white),
                        ),
                        Row(
                          children: [
                            FlatButton(
                              minWidth: 0,
                              shape: CircleBorder(),
                              color: Color(0xff5d5f6e),
                              child: const Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (age != 0) age--;
                                });
                              },
                            ),
                            FlatButton(
                              minWidth: 0,
                              shape: CircleBorder(),
                              color: Color(0xff5d5f6e),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
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
