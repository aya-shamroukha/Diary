
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Home.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  getCard(String title, int totalTasks, int complTasks) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          margin: EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 58, top: 10),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(totalTasks.toString()+ " tasks" + ' - ' + complTasks.toString()+ " completed",
                  style: TextStyle(
                      color: Color.fromRGBO(153, 153, 153, 1), fontSize: 10.5)),
              SizedBox(height: 11),
              Stack(
                children: complTasks == 0
                    ? [
                        Image.asset("images/Rectangle 3.png"),
                      ]
                    : [
                        Image.asset("images/Rectangle 3.png"),
                        Image.asset("images/Rectangle 4.png")
                      ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(34),
                      child: Container(
                        child: Text(
                          "Lists",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              width: 317,
              height: 46,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(children: [
                  MaterialButton(
                      splashColor: Colors.white,
                      height: 0.2,
                      minWidth: 0.1,
                      onPressed: () {},
                      child: Image.asset(
                        "images/search.png",
                        scale: 1,
                      )),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              )),
          Expanded(
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
              ),
              children: [
                /// 1
                getCard("Work", 10, 5),
                getCard("School", 12, 0),
                getCard("Home", 10, 5),
                getCard("Other", 15, 0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35, left: 283),
            child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            height: 240,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Center(
                                    child: Image.asset(
                                        "images/Rectangle 20.png")),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Container(
                                      color: Color.fromRGBO(246, 245, 245, 1)
                                          .withOpacity(0.5),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              hintText: "group name",
                                              hintStyle: TextStyle(
                                                  color: Color.fromRGBO(
                                                      153, 153, 153, 1),
                                                  fontSize: 18))),
                                    ),
                                  )),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('home');
                                },
                                child: Container(
                                    width: 350,
                                    height: 65,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color.fromRGBO(139, 168, 181, 1)),
                                    child: Center(
                                        child: Text(
                                      "create group",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ))),
                              )
                            ]));
                      });
                },
                child: Image.asset("images/Vector (3).png")),
          ),
        ],
      ),
    );
  }
}