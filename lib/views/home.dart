import 'package:flutter/material.dart';
import 'package:quizapp2/addpatient.dart';
import 'package:quizapp2/managepatient.dart';
import 'package:quizapp2/misbehavior.dart';
import 'package:quizapp2/trackpatient.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
children: [
  GestureDetector(
    onTap: (){
      addPatient();
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
        padding: EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(30)),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 48,
        child: Text(
          "Add Patient",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
    ),
  ),
  GestureDetector(
    onTap: (){
      managePatient();
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 48,
      child: Text(
        "Manage Patient",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  ),
  GestureDetector(
    onTap: (){
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 48,
      child: Text(
        "Misbehavior",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  ),
  GestureDetector(
    onTap: (){
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 48,
      child: Text(
        "Track Patients",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  ),
],
        ),
      ),
    );
  }

  addPatient() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AddPatient()));
  }
  managePatient() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ManagePatient()));
  }
  misbehavior() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Misbehavior()));
  }
  trackPatient() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> TrackPatient()));
  }
}
