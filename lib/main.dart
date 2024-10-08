//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        shape: CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.add),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.deepPurple.shade800, Colors.deepPurpleAccent],
              )),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple.shade800, Colors.deepPurpleAccent],
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 110.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('assets/erza.jpg'),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Erza Scarlet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'S Class Mage',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    )
                  ]),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                      child: Card(
                          margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                          child: Container(
                              width: 310.0,
                              height: 290.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Information",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.grey[300],
                                    ),
                                    InfoItem(
                                        icon: Icon(Icons.home,
                                            color: Colors.blue),
                                        title: 'Guild',
                                        details:
                                            'Member of Fairy Tail Magnolia'),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    InfoItem(
                                        icon: Icon(
                                          Icons.auto_awesome,
                                          color: Colors.yellowAccent,
                                        ),
                                        title: 'Magic',
                                        details: 'Spartial Warrior of death'),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    InfoItem(
                                        icon: Icon(Icons.favorite),
                                        title: "Loves",
                                        details: "Eating cakes"),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.people,
                                          color: Colors.lightGreen[400],
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Team",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                              ),
                                            ),
                                            Text(
                                              "Team Natsu",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )))),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BattleBox(counter: counter),
                        InfoBox(
                          title: Text('Age'),
                          subtitle: Text(
                            '19 yrs',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        InfoBox(
                          title: Text('Birthday'),
                          subtitle: Text(
                            '19 yrs',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ]),
                ),
              ))
        ],
      ),
    );
  }
}

class Infoitem extends StatelessWidget {
  const Infoitem(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});
  final Icon icon;
  final Text title;
  final Text subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        icon,
        SizedBox(
          width: 25,
        ),
        Column(
          children: [title, subtitle],
        ),
      ]),
    );
  }
}

class BattleBox extends StatelessWidget {
  const BattleBox({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          'Battles',
          style: TextStyle(color: Colors.grey[400], fontSize: 14.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "$counter",
          style: TextStyle(
            fontSize: 15.0,
          ),
        )
      ],
    ));
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({super.key, required this.title, required this.subtitle});

  final Widget title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        title,
        SizedBox(
          height: 5.0,
        ),
        subtitle,
      ]),
    );
  }
}
