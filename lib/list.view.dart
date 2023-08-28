import 'package:flutter/material.dart';
import 'package:flutter_week16/square.dart';

class ListViewDemo extends StatelessWidget {
  ListViewDemo({super.key});

  List<String> _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          print(index);
          return MySquare(child: _posts[index]);
        },
      ),
    );
  }
}