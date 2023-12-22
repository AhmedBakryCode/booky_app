import 'package:flutter/material.dart';

import '../widgets/details_page_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsPagebody(),
    );
  }
}
