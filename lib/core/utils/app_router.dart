
import 'package:booky_app/features/book_details/presentation/viewmodel/views/details_view.dart';
import 'package:booky_app/features/home/presentation/viewmodels/views/home_view.dart';
import 'package:booky_app/features/splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
static const khomepage='/homepage';
static const kdetailspage='/detailspage';

  static final router=GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state)=>const SplashView(),name: "/"),
    GoRoute(path: khomepage,builder: (context,state)=>const HomePage()),
    GoRoute(path: kdetailspage,builder: (context,state)=>const DetailsPage()),

  ]);
}