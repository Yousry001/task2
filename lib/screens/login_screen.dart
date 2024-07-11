import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

@override
Widget build(BuildContext context) {
  var sizedBox = SizedBox (
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/alien.png',
              height: 100,
              width: 100,
            ),),
const Spacer(),
Container(
  height: MediaQuery.of(context).size.height * 2 / 3,
  width: MediaQuery.of(context).size.width,
  decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),),),
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
        children: [

const Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: Text('Login',
    style: TextStyle(
    color: Colors.black,
    fontSize: 26,
    fontWeight: FontWeight.bold),),),

 TextFormField(

  validator: (value) {
    if (value!.isEmpty){
      return 'user field cant be empty';
    } else if (value.length<3){
      'username must be at least 3 characters';
    }

  },
  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(width: 0),
  borderRadius: BorderRadius.all(Radius.circular(20),),),

  focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(20),),),

      label: Text('Username'),
      prefixIcon: Icon(Icons.person),),),

 Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
    child: TextFormField(

      validator: (value) {
    if (value!.isEmpty){
      return 'password field cant be empty';
    } else if (value.length<8){
      'password must be at least 8 characters';
    }},
      decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0),
      borderRadius: BorderRadius.all(
        Radius.circular(20),),),

  focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(20),),),

  label: Text('Password'),
  prefixIcon: Icon(Icons.lock),
  suffixIcon: Icon(Icons.visibility_off), ),),),
                 
const Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text('New to quizz app?',style: TextStyle(color: Colors.black),),
    Text('Register',style: TextStyle(color: Colors.green),),
    ], ),

SizedBox(
  width: 150,
  child: Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    elevation: 10,),

onPressed: () {Navigator.push(
  context,
  MaterialPageRoute<void>(
    builder: (BuildContext context) =>
       CategoryScreen(),),);
      },
  child: const Text('Login',style: TextStyle(color: Colors.white),),),),),
                  
  Image.asset('assets/images/fingerprint.png',width: 50,),

  const Text('Use Touch ID',style: TextStyle(color: Colors.grey),),
                 
  Row(
      children: [
        Checkbox( 
                 activeColor: Colors.green,
                 value: true,
                 onChanged: (bool? value) {},),
    const Text('Remeber me'),
    const Spacer(),
    const Text('Forget Password?',style: TextStyle(color: Colors.green),)
    ],
),],
),),),],
),);
  return Scaffold(
    backgroundColor: Colors.green,
    body:SingleChildScrollView(
    child: sizedBox,),);
  }
}
