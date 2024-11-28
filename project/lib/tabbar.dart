import 'package:flutter/material.dart';
import 'package:project/dialog.dart';

void main() {
  runApp(const MyApp());
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
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Whatsapp"),
        centerTitle: false,
        bottom: TabBar(
            controller: tabC,
        tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "Chats",
          ),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          ),
          ],
        ),
      ),
      body: TabBarView(
          controller: tabC,
        children: [
          Center(
            child: Text("CAMERA"),
          ),
          Center(
            child: Text("Chats"),
          ),
          Center(
            child: Text("Status"),
          ),
          Center(
            child: Text("Calls"),
          ),
        ],
      ),
    );
  }
}