import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookSalaryDetails extends StatelessWidget {
  const BookSalaryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 150,
            height: 48,
            child: Center(child: Text("19.99€",style: TextStyle(color: Colors.black,fontSize: 20),)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(12),bottomLeft:Radius.circular(12) ),
            ),
          ),
          Container(width: 150,
            height: 48,
            child: Center(child: Text("Free preview",style: Styles.texrstyle16,)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight:Radius.circular(12),bottomRight:Radius.circular(12) ),
              color: Color(0xFFEF8262),
            ),
          ),
        ],
      ),
    );
  }
}
