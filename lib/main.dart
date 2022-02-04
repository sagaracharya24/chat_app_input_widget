import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 1,
                        child: Row(
                          children: <Widget>[
                            IconButton(
                                icon: const Icon(Icons.sentiment_satisfied,
                                    color: Colors.grey, size: 25),
                                onPressed: () {}),
                            Expanded(
                              child: TextField(
                                controller: inputController,
                                maxLines: 1,
                                minLines: 1,
                                keyboardType: TextInputType.multiline,
                                decoration: const InputDecoration.collapsed(
                                    hintText: 'Write a message'),
                                onChanged: (term) {},
                              ),
                            ),
                            IconButton(
                                icon: const Icon(Icons.photo_camera,
                                    color: Colors.grey, size: 25),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 1,
                      mini: true,
                      backgroundColor: Colors.blue[400],
                      child: const Icon(Icons.send, color: Colors.white),
                      onPressed: () {},
                    ),
                    Container(width: 5)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
