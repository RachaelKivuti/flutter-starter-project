import 'package:flutter/material.dart';
import 'package:stack/widgets/stack.dart';
import 'package:stack/widgets/stack_favorite.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              if (index.isEven) {
                return const StackWidget();
              } else {
                return const StackFavoriteWidget();
              }
            }),
      ),
    );
  }
}
