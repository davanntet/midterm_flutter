
import 'package:flutter/material.dart';
import 'package:network_assigment_1/utils/GetMaterail.dart';

class RecommandedCard extends StatelessWidget {
  const RecommandedCard({super.key, required this.price, required this.title, required this.image, required this.distance});
  final double price;
  final String title;
  final double distance;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.7*0.6,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$$price per night",style: Theme.of(context).textTheme.labelMedium,),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      color: Colors.white.withOpacity(0.5),
                      border: Border.all(color: Colors.white,width: 1)
                    ),
                    child: Icon(Icons.favorite,color: Colors.white,size: 20,),
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(title,style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,),
            ),

              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_rounded,size: 25,color: MaterialColors.five,),
                        SizedBox(width: 5,),
                        Text("$distance km kilometres way",style: Theme.of(context).textTheme.bodySmall,),
                      ],
                    ),
                    CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 20,
                        child:Image.asset("lib/asset/image/arrowicon.png",fit: BoxFit.cover,width: 20,)
                    )

                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
