import 'package:flutter/material.dart';

import '../utils/GetMaterail.dart';
import 'StartPage.dart';

class SlashPage extends StatefulWidget {
  const SlashPage({super.key});

  @override
  State<SlashPage> createState() => _SlashPageState();
}

class _SlashPageState extends State<SlashPage> {
  @override
  void initState() {
    //TODO: implement initState
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const StartPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MaterialColors.one,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
                child: SizedBox(
              height: 20,
            )),
            const Expanded(
              child: Center(
                child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage("lib/asset/image/logo.png")),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Wellcome to Mean Hotel",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  "Version: 1.0.0",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
