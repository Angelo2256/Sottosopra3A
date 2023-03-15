import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(20.0),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 300,
            child: Column(children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Image.asset("lib/assets/fiori.jpg", width: 300,),
              )
            ]),
            ),
          );}}