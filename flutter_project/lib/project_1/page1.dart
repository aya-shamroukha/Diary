// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 class Page1 extends StatefulWidget {
   const Page1({super.key});
 
   @override
   State<Page1> createState() => _Page1State();
 }
 
 class _Page1State extends State<Page1> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(child: 
    
            Column(children: [
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                      alignment: Alignment.topRight,
                      child: Text('Skip',style: TextStyle(color: Colors.grey),),
                     ),
                     Image.asset('images/cuate1.png',scale: 2.5,),
                     SizedBox(height: 20,),
                     Text('Write Lists',style: TextStyle(color: Colors.black,fontSize: 24)),
                      SizedBox(height: 10,),
                     Text('Write your tasks in a list and \n check them when done!',
                     style: TextStyle(color: Colors.grey,fontSize: 17))

                     
            ]),);
   }
 }