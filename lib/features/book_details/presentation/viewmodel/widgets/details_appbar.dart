import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 35),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){
            GoRouter.of(context).pop();
          }, icon: Icon(Icons.close,color: Colors.white,size: 35,),),
          Spacer(flex: 5,),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,size: 35,)),
        ],
      ),
    );
  }
}
