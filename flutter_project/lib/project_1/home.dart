// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool laundry = false;
  bool doingDishes = false;
  bool dishes = false;
  bool changing = false;
  bool state = false;
  Radio(String checkboxName, String target, String notes) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Checkbox(
              activeColor: Color(0xff8BA8B5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              value: (checkboxName == 'doingDishes')
                  ? doingDishes
                  : (checkboxName == 'laundry')
                      ? laundry
                      : changing,
              onChanged: ((val) {
                setState(() {
                  setCheckboxValue(checkboxName, val!);
                });
              })),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              target,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Text(
              notes,
              style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1), fontSize: 10.5),
            )
          ],
        )
      ],
    );
  }

  setCheckboxValue(String name, bool value) {
    if (name == 'doingDishes') {
      doingDishes = value;
    } else if (name == 'laundry') {
      laundry = value;
    } else if (name == 'changing') {
      changing = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        body: SafeArea(
            child: Column(children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(
                      179,
                      179,
                      179,
                      1,
                    ),
                  ),
                ),
                Text(
                  "lists",
                  style: TextStyle(
                      color: Color.fromRGBO(153, 153, 153, 1), fontSize: 15),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home",
                style: TextStyle(
                    color: Color.fromRGBO(139, 168, 181, 1), fontSize: 34),
              ),
              Text(
                "12 task - 0 completed",
                style: TextStyle(
                    color: Color.fromRGBO(153, 153, 153, 1), fontSize: 10),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: 317,
                  height: 46,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32),
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
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Radio('doingDishes', "Doing laundry", "some notes...."),
          Radio('laundry', "Clean dishes", "some notes...."),
          Radio('changing', "Changing out bedding", "some notes....")
        ])));
  }
}