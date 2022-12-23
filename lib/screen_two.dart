import 'package:flutter/material.dart';
import 'package:navigation_routing/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  final String name; // final means cannot be changed/constant
  final int num;
  const ScreenTwo({
    super.key,
    required this.name,
    this.num = 86,
  }); // Constructor

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen 2"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ScreenThree(
                            name: "Computer Systems",
                            num: 86,
                          )),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      widget.name.toString() + " " + widget.num.toString(),
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
