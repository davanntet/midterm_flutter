import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_midterm/utils/FormType.dart';
import '../utils/GetColors.dart';

class TemplateTextFormField extends StatefulWidget {
  TemplateTextFormField({super.key,formType});
  final String formType = FormType.email;
  @override
  State<TemplateTextFormField> createState() => _TemplateTextFormFieldState();
}
class _TemplateTextFormFieldState extends State<TemplateTextFormField> {
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "username@gmail.com",
        labelText: "Email",
        hintStyle: TextStyle(color: Colors.grey),
        focusColor: Colors.black,
         fillColor: Colors.black, 
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: MaterialColors.black),
        )
      ),
    );
  }
}