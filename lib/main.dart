import 'package:belajar_tabbar/views/message.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
// void main () { return MyApp()}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: TabBarPage(),
      ),
    );
  }
}

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            const Tab(
              icon: Icon(Icons.photo_camera),
            ),
            Tab(
              child: Row(
                children: const [
                  Text('Chat'),
                  SizedBox(width:5),
                  SizedBox(
                    width:20,
                    child: CircleAvatar(
                      child: Text('7'),
                    ),
                  ),
                ],
              ),
            ),
            const Tab(
              text: 'Status',
            ),
            const Tab(text: 'Panggilan'),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Center(child: Icon(Icons.photo_camera)),
          Message(),
          Center(child: Icon(Icons.abc_sharp)),
          Center(child: Icon(Icons.call)),
        ],
      ),
    );
  }
}
