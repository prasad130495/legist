import 'package:flutter/material.dart';

void main() {
  runApp(const LegistApp());
}
class LegistApp extends StatelessWidget {
  const LegistApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ' Teczo Legist',
      home: HomeScreen()
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF000000),
        title: Center(child: Text("Teczo Legist"))
      ),

    );
  }
}


