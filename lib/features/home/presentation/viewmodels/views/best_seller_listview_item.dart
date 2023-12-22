import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BestSeLLerItemListView extends StatelessWidget {
  const BestSeLLerItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: const Text(
            "Harry Potter and the Goblet of Fire",
            style: Styles.texrstyle20,
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "J.K. Rowling",
          style:
              Styles.texrstyle14.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "19.99 €",
              style: Styles.texrstyle20,
            ),
            SizedBox(
              width: 41,
            ),
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            SizedBox(
              width: 6.3,
            ),
            Text(
              "4.8",
              style: Styles.texrstyle16,
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              "(2390)",
              style: Styles.texrstyle14
                  .copyWith(color: Colors.white.withOpacity(0.5)),
            )
          ],
        ),
      ],
    );
    ;
  }
}
