import 'package:booky_app/features/home/presentation/viewmodels/widgets.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BookDetailsViewbody(),
    );
  }
}
