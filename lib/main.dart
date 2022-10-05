import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var anjay = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
        "My First Flutter App",
        style: TextStyle(fontSize: 20),
      ))),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 45),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                anjay++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: () {
                if (anjay != 0) {
                  setState(() {
                    anjay--;
                  });
                }
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "$anjay",
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
