import 'package:dummy_academy/Shared/Background.dart';
import 'package:dummy_academy/Teacher/TeacherLogin.dart';
import 'package:flutter/material.dart';
import 'package:dummy_academy/Shared/Home.dart';
import 'package:dummy_academy/Shared/Loading.dart';
import 'package:dummy_academy/Shared/Constants.dart';
import 'package:dummy_academy/Services/Services.dart';

class TeacherHome extends StatefulWidget {
  const TeacherHome({Key key}) : super(key: key);

  @override
  _TeacherHomeState createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Teacher'),
          backgroundColor: Colors.orange,
        ),
        body: Stack(
          children: <Widget>[
            Background(),
            SafeArea(
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Teacher Home',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
                          )
                      ),


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
