
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midterm/views/StartPage.dart';

class SlashPage extends StatefulWidget {
  const SlashPage({super.key});

  @override
  State<SlashPage> createState() => _SlashPageState();

}

class _SlashPageState extends State<SlashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const StartPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child:SizedBox(height: 20,)),
            Expanded(
              child:Center(
              child: CircleAvatar(
                radius: 130,
                child: Icon(Icons.home_outlined,size: 230,),
              ),
            ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Wellcome to Mean Hotel"),
                    Text("Version: 1.0.0"),
                    SizedBox(height: 40,),
                  ],
            ))
            
          ],
        ),
      ),
    );
  }
}