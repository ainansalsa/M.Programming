import 'package:flutter/material.dart';
import 'package:project/dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Padding(
        padding: const EdgeInsets.all(20.0),
    child: ListView(
    children: [
    TextField(
    controller: emailC,
    autocorrect: false,
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    labelText: "Email",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    prefixIcon: Icon(Icons.email),
    ),
    ),
    SizedBox(height: 20),
    TextField(
    controller: passC,
    autocorrect: false,
    obscureText: isHidden,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    labelText: "Password",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    prefixIcon: Icon(Icons.vpn_key),
    suffixIcon: IconButton(
    onPressed: () {
    setState(() {
    isHidden = !isHidden;
    });
    },
    icon:  Icon(isHidden ? Icons.remove_red_eye : Icons.visibility_off),
    ),
    ),
    ),
    ],
    ),
    ),
    );
  }
}