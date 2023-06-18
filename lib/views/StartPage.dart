
import 'package:flutter/material.dart';
import '../utils/GetMaterail.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.only(top: 100),
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(1000),topLeft:Radius.circular(1000) ),
                        child: Image.asset("lib/asset/image/show.png",fit: BoxFit.cover,width: MediaQuery.of(context).size.width*0.6,)
                    )
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Let's get",style: Theme.of(context).textTheme.bodyLarge,),
                        Container(

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.asset("lib/asset/image/title.png",fit: BoxFit.cover,height: 30,),
                            )
                        ),
                        Text("Started",style: Theme.of(context).textTheme.bodyLarge)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: Text("Login to your account below or signup for an amazing experience",style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center)
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
                      onPressed: (){
                        Navigator.pushNamed(context, "signup");
                      },
                      child: Text("SignUP with mobile",style: Theme.of(context).textTheme.titleMedium,),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have a account?",style: Theme.of(context).textTheme.titleSmall),
                        TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "login");
                            }
                            , child: Text("Login",style: Theme.of(context).textTheme.displaySmall)
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}