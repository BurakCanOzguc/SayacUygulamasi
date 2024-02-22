import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _plusCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Sayaç Uygulaması"),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 185,
              right: 65,
              child: _countBackground(),
            ),
            Image.asset('assets/images/sayac.png'),
            Positioned(top: 180, right: 75, child: _countText()),
            Positioned(
              top: 75,
              right: 107,
              child: _plusButton(),
            ),
            Positioned(
              bottom: 75,
              right: 125,
              child: _resetButton(),
            )
          ],
        ),
      ),
    );
  }

  Container _countBackground() {
    return Container(
      width: 175,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(10)),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: () => _resetCounter(),
      child: Container(
        width: 55,
        height: 35,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  GestureDetector _plusButton() {
    return GestureDetector(
      onTap: () => _plusCounter(),
      child: Container(
        width: 85,
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text _countText() {
    return Text("$_counter",
        style: TextStyle(
            fontFamily: "Digital7", color: Colors.white, fontSize: 50));
  }
}
