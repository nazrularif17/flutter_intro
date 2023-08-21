import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

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
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
            title: const Text("Hello World"), backgroundColor: Colors.indigo[300]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(
              children: [
                Text(
                  "Welcome to my app",
                  style: GoogleFonts.dancingScript(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("This is my first app"),
                const SizedBox(
                  height: 8,
                ),
                const Text("This is how you make app"),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text("This is left"),
                    SizedBox(
                      width: 15,
                    ),
                    Text("This is right")
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.network(
                    "https://live.staticflickr.com/4027/4395095464_51a84459e1_b.jpg"),
                const SizedBox(
                  height: 8,
                ),
                Image.asset("images/room1.jpg"),
                TextField(
                  decoration: const InputDecoration(hintText: "Enter your name"),
                  controller: nameEditingController,
                ),
                TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg:
                            "Hello ${nameEditingController.text}, welcome to my app",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: Text(
                    "Press Me!",
                    style: GoogleFonts.lato(
                      textStyle:
                          const TextStyle(color: Colors.yellowAccent, fontSize: 24),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
