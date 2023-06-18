import 'package:flutter/material.dart';

import '../components/Template/TemplateTextFormField.dart';
import '../utils/FormType.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wellcome back",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  width: 220,
                  child: Text(
                    "Signin with your email and password",
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.left,
                  )),
              SizedBox(
                height: 40,
              ),
              Form(
                  child: Column(
                children: [
                  TemplateTextFormField(
                    formType: FormType.email,
                    controller: _emailController,
                  ),
                ],
              )),
              SizedBox(
                height: 25,
              ),
              Form(
                  child: Column(
                children: [
                  TemplateTextFormField(
                    formType: FormType.password,
                    controller: _passwordController,
                  ),
                ],
              )),
              SizedBox(
                height: 35,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.8, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () {

                    if(_emailController.text.isNotEmpty || _passwordController.text.isNotEmpty){
                      // Navigator.pushReplacementNamed(context, "index");

                      if(_emailController.text.length>10){
                        if(_passwordController.text.length <8 &&_emailController.text.substring(_emailController.text.length-10,_emailController.text.length)=="@gmail.com"){
                          setState(() {
                            error = "Password must be at least 8 characters";
                          });
                        }
                        else if(_passwordController.text.length >=8 &&!(_emailController.text.substring(_emailController.text.length-10,_emailController.text.length)=="@gmail.com")){
                          setState(() {
                            error = "Email must be include @gmail.com";
                          });
                        }else if(_passwordController.text.length >=8 &&_emailController.text.substring(_emailController.text.length-10,_emailController.text.length)=="@gmail.com"){
                          setState(() {
                            error = "sfsfsf";
                          });
                        }
                        else{
                          setState(() {
                            error = "Password must be at least 8 characters and email must be include @gmail.com";
                          });
                        }
                      }else if(_passwordController.text.length <8){
                        setState(() {
                          error = "Password must be at least 8 characters and email must be include @gmail.com";
                        });
                      }else if(_passwordController.text.length >=8){
                        setState(() {
                          error = "Email must be include @gmail.com";
                        });
                      }


                      if(_emailController.text.isEmpty){
                        setState(() {
                          error = "Please enter email before login";
                        });
                      }else if(_passwordController.text.isEmpty){
                        setState(() {
                          error = "Please enter password before login";
                        });
                      }
                    }else{
                      setState(() {
                        error = "Please enter email and password before login";
                      });
                    }
                    //Navigator.pushReplacementNamed(context, "index");
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                  child: Text(error,textAlign: TextAlign.center,style:TextStyle(color: Colors.red,fontSize: 14)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
