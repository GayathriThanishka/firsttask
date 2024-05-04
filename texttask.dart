import 'package:flutter/material.dart';
import 'package:sidemenu/navi.dart';

class TextDemo extends StatefulWidget {
  const TextDemo({super.key});

  @override
  State<TextDemo> createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('TEXT FIELD'),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 169, 237, 172),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: "USER NAME",
                    icon: Icon(Icons.abc),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "PASSWORD", icon: Icon(Icons.abc)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(200, 50)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NextPage();
                          },
                        ),
                      );
                    },
                    child: Text('SUBMIT'),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
