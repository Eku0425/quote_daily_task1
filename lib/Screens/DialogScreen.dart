import 'package:flutter/material.dart';

class Dialogscreen extends StatefulWidget {
  const Dialogscreen({super.key});

  @override
  State<Dialogscreen> createState() => _DialogscreenState();
}

class _DialogscreenState extends State<Dialogscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                backgroundColor: Color(0xfff5e7e5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, right: 60),
                      child: Text(
                        'Basic dialog title',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'use the Alt key in combination with a specific letter that corresponds to\n the group containing the dialog box launcher. \nthat appears in front of app content to provide critical information,or prompt for a decision to be made ',
                        style:
                        TextStyle(color: Color(0xff5b4d4b), fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Enabled',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Enabled',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            child: Center(
                child: Text(
                  ' Dialog Box',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.blueAccent),
                )),
          ),
        ],
      ),
    );
  }
}



