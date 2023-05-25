import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

 class Page3 extends StatefulWidget {
   const Page3({super.key});
 
   @override
   State<Page3> createState() =>_Page3State();
 }
 
 class _Page3State extends State<Page3> {
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
                     Image.asset('images/cuate.png',scale: 0.8,),
                     SizedBox(height: 40,),
                     Text('Check Progress',style: TextStyle(color: Colors.black,fontSize: 24)),
                      SizedBox(height: 10,),
                     Text('See how much you have \n done from your tasks',
                     style: TextStyle(color: Colors.grey,fontSize: 17))

                     
            ]),);
   }
 }