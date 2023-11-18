import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TikTok Clone',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      // extendBody: true,
      extendBodyBehindAppBar: true,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.indigo,
          ),
          Container(
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
