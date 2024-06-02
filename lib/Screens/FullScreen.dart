import 'package:flutter/material.dart';

class Fullscreen extends StatefulWidget {
  const Fullscreen({super.key});

  @override
  State<Fullscreen> createState() => _FullscreenState();
}

class _FullscreenState extends State<Fullscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => Dialog.fullscreen(
                child: SingleChildScrollView(
                  child : Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 20),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(Icons.close_rounded)),
                          ),
                          const  SizedBox(
                            width: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              'Full Screen dialog title',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 25),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Save',
                                style:
                                TextStyle(color: Color(0xff824f51), fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 60,
                          child: const TextField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.arrow_drop_down),
                                hintText: 'Nikta1325@gmail.com'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 60,
                          child:const TextField(
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                hintText: 'Event name'
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(right: 290, top: 50),
                        child: Text(
                          'Form',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 190,
                            child: const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.arrow_drop_down),
                                hintText: 'Date',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 60,
                            width: 130,
                            child:const  TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  hintText: 'Time'
                              ),
                            ),
                          ),
                        ],
                      ),
                      const  Padding(
                        padding:  EdgeInsets.only(right: 290, top: 20),
                        child: Text(
                          'To',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 190,
                            child:const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  hintText: 'Date'
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 60,
                            width: 130,
                            child: const TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  suffixIcon: Icon(Icons.arrow_drop_down),
                                  hintText: 'Time'
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            child: Center(child: Text(' Full Screen dialog',style: TextStyle(fontSize: 25,color: Colors.lightBlueAccent),)),
          ),
        ],
      ),
    );
  }
}
