import 'package:flutter/material.dart';
import 'package:flutter_midterm/components/TemplateTextFormField.dart';
import 'package:flutter_midterm/utils/FormType.dart';
import 'package:flutter_midterm/utils/GetColors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Wellcome back",
              style: TextStyle(
                  fontSize: 30,
                  color: MaterialColors.black,
                  fontWeight: FontWeight.w600),
            ),
            Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                width: 170,
                child: const Text(
                  "Signin with your email and password",
                  style: TextStyle(color: MaterialColors.gray),
                  textAlign: TextAlign.left,
                )),
            SizedBox(
              height: 30,
            ),
            Form(
                child: Column(
              children: [
                TemplateTextFormField(
                  formType: FormType.email,
                ),
              ],
            )),
            SizedBox(height: 10,),
             Form(
                child: Column(
              children: [
                TemplateTextFormField(
                  formType: FormType.email,
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.8, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "home");
                },
            
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
