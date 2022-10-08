import 'package:flutter/material.dart';

class calnapp extends StatefulWidget {
  const calnapp({Key? key}) : super(key: key);

  @override
  State<calnapp> createState() => _calnappState();
}

class _calnappState extends State<calnapp> {
  bool darkMode = false;
  bool isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Center(
                child: Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: isPressed
                        ? null
                        : [
                            BoxShadow(
                              color: Colors.blueGrey.shade200,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15,
                              spreadRadius: 1.0,
                            )
                          ],
                  ),
                  child: Center(
                      child: Text("Click me",
                          style: const TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
