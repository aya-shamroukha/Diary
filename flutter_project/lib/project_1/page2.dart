import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

 class Page2 extends StatefulWidget {
   const Page2({super.key});
 
   @override
   State<Page2> createState() =>  _Page2State();
 }
 
 class _Page2State extends State<Page2> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(child: 
    
            Column(children: [
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){
                           Navigator.of(context).pushNamed('login');
                        },
                        child: Text('Skip',style: TextStyle(color: Colors.grey),)),
                     ),
                     Image.asset('images/cuate2.png',scale: 1,),
                     SizedBox(height: 20,),
                     Text('Stay Organized',style: TextStyle(color: Colors.black,fontSize: 24)),
                      SizedBox(height: 10,),
                     Text('Group your tasks and keep  \n them organized',
                     style: TextStyle(color: Colors.grey,fontSize: 17)),


                     
            ]),);
   }
 }