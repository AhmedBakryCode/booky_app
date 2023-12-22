import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookCoverDetails extends StatelessWidget {
  const BookCoverDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),

          child: Image.asset("assets/images/test_image.png"   ,   height: 300,
            width: 200,),
        ),
       const Text("The Jungle Book",style: Styles.texrstyle30,),
        const Text("Rudyard Kipling",style: Styles.texrstyle18,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star,color: Colors.amber,size: 10,),
            Text("4.8",style: Styles.texrstyle16,),
            Text("(2390)",style: Styles.texrstyle14,),
          ],
        ),

      ],
    );
  }
}
