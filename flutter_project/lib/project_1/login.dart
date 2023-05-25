
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset('images/Frame 5.png'),
            //username
            login(
              labeltext: "Username:",
            ),
            //password
            login(
              labeltext: "Password:",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "if you don't have  an account",
                    style: TextStyle(color: Color(0xff565656)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('singup');
                    },
                    child: Text(
                      '  clicke here',
                      style: TextStyle(color: Color(0xff8BA8B5), fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
             MaterialButton(
              padding: EdgeInsets.all(8),
              
              onPressed: () {
              Navigator.of(context).pushNamed('homepage');
              },
              color: Color(0xff8BA8B5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Login',
                style: TextStyle(color: Color(0xff565656), fontSize: 15),
              ),
            )
          
          ],
        )),
      ),
    );
  }
}
class login extends StatelessWidget {
  const login({
    Key? key,
    this.labeltext,
  }) : super(key: key);
  final labeltext;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(            
              cursorColor: Color(0xff8BA8B5),
              decoration: InputDecoration(
                labelText: labeltext,
                labelStyle: TextStyle(color: Color(0xff565656), fontSize: 17),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff8BA8B5),
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff8BA8B5),
                    )),
              )),
               
        ],
      ),
    );
  }
}
