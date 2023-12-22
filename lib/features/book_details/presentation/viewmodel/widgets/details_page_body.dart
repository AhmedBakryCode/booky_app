import 'package:booky_app/features/book_details/presentation/viewmodel/widgets/book_salary_details.dart';
import 'package:booky_app/features/book_details/presentation/viewmodel/widgets/details_appbar.dart';
import 'package:flutter/material.dart';

import 'book_cover.dart';

class DetailsPagebody extends StatelessWidget {
  const DetailsPagebody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const  DetailsAppbar(),
        BookCoverDetails(),
        BookSalaryDetails(),
      ],
    );
  }
}
