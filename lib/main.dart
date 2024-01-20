import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:textvefont/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: "AnaFont"),
      home: const MyHomePage(title: 'Mob Dev Uygulama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //const Image(image: AssetImage("lib/assets/images/resim1.jpg")),
            // const Image(
            //   image: NetworkImage(
            //       "https://cdn.pixabay.com/photo/2015/05/12/09/13/freelancer-763730_960_720.jpg"),
            // ),
            Image.network(
                "https://cdn.pixabay.com/photo/2015/05/12/09/13/freelancer-763730_960_720.jpg"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Veksis Business Flutter Eğitimi",
              //style: TextStyle(
              //fontFamily: "AnaFont",
              //fontSize: 22,
              //fontWeight: FontWeight.w400,
              //letterSpacing: 10,
              //color: Colors.deepOrange[900],
              //color: HexColor("#D94F04"),
              //color: Color.fromARGB(255, 242, 147, 37),
              //color: HexColor(anaRenk),
              //backgroundColor: HexColor(arkaplanRengi),
              //),
              style:
                  GoogleFonts.poppins(fontSize: 22, color: HexColor(anaRenk)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
