
import 'package:flutter/material.dart';
import 'package:flutter_midterm/utils/GetColors.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                padding: EdgeInsets.only(top: 50,bottom: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft:Radius.circular(100) ),
                  child: Image.network(width: 200,height: 250,"https://external-preview.redd.it/q032QHa5OrPYnaiJOt6FJFoXkeJnULMplAMmDrH69Mg.jpg?auto=webp&s=60faee0693b1f2b7d9d934cc674b9c4bf632385d",fit: BoxFit.cover,),
                )
              ),
            ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Let's get",style: TextStyle(fontSize: 35,color: MaterialColors.black),),
                      Container(
                        width: 60,height: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network("https://www.luxury4play.com/wordpress/wp-content/uploads/2016/08/Screen-Shot-2016-08-04-at-11.51.46-AM-600x351.png",fit: BoxFit.cover,),
                        )
                      ),
                      Text("Started",style: TextStyle(fontSize: 35,color: MaterialColors.black))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Login to your account below or signup for an amazing experience",style: TextStyle(fontSize: 15,color: MaterialColors.gray),textAlign: TextAlign.center)
                    ),
                ],  
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                  children: [
                    SizedBox(height: 40,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(MediaQuery.of(context).size.width*0.8, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                        )
                      ),
                      onPressed: (){},
                      child: Text("SignUP with mobile",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have a account?",style: TextStyle(color: MaterialColors.gray)),
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "login");
                            }
                          , child: Text("Login",style: TextStyle(color: MaterialColors.green)),
                          ),
                        
                        ],
                      )
                  ],
              ),
            ),
        ],
      ),
    );
  }
}