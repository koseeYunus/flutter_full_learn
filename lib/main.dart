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
      title: 'YuKo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(
        title: 'yK',
        money: 55,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.money})
      : super(key: key);

  final String title;
  final int money;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _decreaseConter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Text(widget.money.toString(),
              style: Theme.of(context).textTheme.displaySmall)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Butona Bastıktan Sonraki Sayaç:",
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          FloatingActionButton.extended(
            onPressed: _decreaseConter,
            tooltip: 'decrease',
            label: Row(
              children: const [
                Text("Çıkar"),
                Icon(Icons.remove_circle),
              ],
            ),
          ),
          Spacer(),
          FloatingActionButton.extended(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            label: Row(
              children: const [
                Text("Ekle"),
                Icon(Icons.add_circle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
