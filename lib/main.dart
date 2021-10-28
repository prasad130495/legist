import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LegistApp());
}

class LegistApp extends StatelessWidget {
  const LegistApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: ' Teczo Legist', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    Color bgColor = Colors.grey.shade200;

    return Scaffold(
      key: _key,
      drawer: Drawer(child: Text('test')),
      appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.menu),
            onTap: () {
              _key.currentState!.openDrawer();
            },
          ),
          backgroundColor: Color(0XFF000000),
          title: Center(child: Text("Teczo Legist"))),
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: bgColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded (
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Clients',
                              style: GoogleFonts.openSans(color: Colors.black, fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Total Clients: 2',
                              style: GoogleFonts.openSans(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.person, color: Colors.black,size:100),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: bgColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded (
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Cases',
                              style: GoogleFonts.openSans(color: Colors.black, fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Total Cases: 0',
                              style: GoogleFonts.openSans(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.book, color: Colors.black,size:100),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),


          ],
        )
      ),
    );
  }
}
