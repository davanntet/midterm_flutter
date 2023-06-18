
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xffECF3EE),
          borderRadius: BorderRadius.circular(15)
      ),
      child: SearchBar(
        hintText: "Search for hotels",
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.search_outlined,size: 30,),
        ),
        overlayColor:MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(Color(0xffECF3EE)),
        textStyle: MaterialStateProperty.all(TextStyle(color: Theme.of(context).secondaryHeaderColor,fontSize: 18,fontWeight: FontWeight.w400)),
        elevation: MaterialStateProperty.all(0),
      ),
    );
  }
}
