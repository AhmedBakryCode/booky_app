import 'package:booky_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/view_models/views/splash_view.dart';
import 'features/splash/presentation/view_models/widegets/constants.dart';


void main() {
  runApp(const BookyApp());
}
class BookyApp extends StatelessWidget {
  const BookyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimarycolor
      ,textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
    );
  }
}
