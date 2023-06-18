import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius:34,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.asset("lib/asset/image/profile.png",fit: BoxFit.cover,),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Davann",style: Theme.of(context).textTheme.bodySmall,),
            Text("Let's Find the best Hotel",style: Theme.of(context).textTheme.displayLarge,)
          ],
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){},
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Theme.of(context).hintColor,width: 1),
                      color: Colors.white
                  ),
                  child: Icon(Icons.notifications_none_rounded,size: 30,),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
