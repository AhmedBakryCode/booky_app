import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/features/home/presentation/viewmodels/views/home_view.dart';
import 'package:booky_app/features/splash/presentation/view_models/widegets/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animatedContainer;
  late Animation<Offset> slideanimation;

  @override
  void initState() {
    super.initState();
initslideanimation();

navigateToHome();
  }



  void initslideanimation() {
    animatedContainer= AnimationController(vsync:this,duration:const Duration(seconds: 1),);
    slideanimation=Tween<Offset>( begin:Offset(0,10) ,end: Offset.zero).animate(animatedContainer);
    animatedContainer.forward();
    slideanimation.addListener(() {
      setState(() {

      });
    });
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(logoimg),
         SlideTransition(
           position: slideanimation,
           child: Text(
            "Read Free Books",
            textAlign: TextAlign.center,
        ),
         ),
      ],
    );
  }
  void navigateToHome() {
    Future.delayed(Duration(seconds: 2),
        (){
      GoRouter.of(context).push(AppRouter.khomepage);
    });
  }
}
