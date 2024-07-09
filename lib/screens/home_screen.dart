import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

  decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
        "assets/images/background.jpg",),
          fit: BoxFit.cover)),

    child: Column(
    children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
            Image.asset("assets/images/home_page.png",
              height: MediaQuery.of(context).size.height * 0.2,),
            
    Text(
        "ITI Quiz App",
          style: GoogleFonts.pacifico(fontSize: 30, color: Colors.yellow),),
        const SizedBox(height: 20,),

    Text(
        "We are creative, enjoy our app",
          style:
        GoogleFonts.dancingScript(fontSize: 20, color: Colors.white),),

const Spacer(),
Padding(
  padding: const EdgeInsets.all(16.0),
    child: Row(
    children: [
Expanded(
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
            shape: const RoundedRectangleBorder()),
        onPressed: () {
Navigator.push(
  context,
  MaterialPageRoute<void>(
    builder: (BuildContext context) =>
      const LoginScreen(),),);
},

    child: const Text(
     "Start",
    style: TextStyle(fontSize: 20, color: Colors.white),),),),]  ,),),],),),);
  }
}
