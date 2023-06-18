import 'package:flutter/material.dart';

import '../../utils/FormType.dart';
import '../../utils/GetMaterail.dart';

class TemplateTextFormField extends StatefulWidget {
  TemplateTextFormField({super.key, required this.formType,required TextEditingController controller}):_controller=controller;
  final String formType;
  TextEditingController _controller;
  @override
  State<TemplateTextFormField> createState() => _TemplateTextFormFieldState();
}
class _TemplateTextFormFieldState extends State<TemplateTextFormField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TextFormField(
        controller: widget._controller,
        style: Theme.of(context).textTheme.displayMedium,
        keyboardType: TextInputType.emailAddress,
        obscureText: widget.formType==FormType.password?_obscureText:false,
        decoration: InputDecoration(
          hintText: widget.formType==FormType.email?"username@gmail.com":widget.formType==FormType.password?"Input more than 8":"Tet Davann",
          labelStyle: Theme.of(context).textTheme.displayMedium,
          labelText: "${widget.formType}",
          suffix: widget.formType==FormType.password?GestureDetector(
            //borderRadius: BorderRadius.circular(100),
            onTap: (){
              setState(() {
                _obscureText=!_obscureText;
              });
            },
            child:_obscureText?Icon(Icons.visibility_off,color: MaterialColors.four,size: 17,):Icon(Icons.visibility,color: MaterialColors.four,size: 17,),
          ):SizedBox(),
          hintStyle: TextStyle(color: MaterialColors.four),
          focusColor: MaterialColors.one,
          fillColor: MaterialColors.two,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.yellow,width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: MaterialColors.two,width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: MaterialColors.one,width: 2),
          ),
        ),
      ),
    );
  }
}