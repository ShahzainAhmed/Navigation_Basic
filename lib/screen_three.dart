import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  final String name;
  final int num;

  const ScreenThree({
    super.key,
    required this.name,
    required this.num,
  });

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen 3"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                onTap: () {
                  Navigator.pop((context));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      widget.name + " " + widget.num.toString(),
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
