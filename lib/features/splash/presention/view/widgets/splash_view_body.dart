import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presention/view/screens/home.dart';
import 'package:bookly_app/features/splash/presention/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidigAnimaton();

    navigatToHome();
  }

  void navigatToHome() {
    
    Future.delayed(const Duration(seconds: 2), (){
      Get.to(()=>Home() ,transition: Transition.fade ,duration: kTransationDuration );
    });
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidigAnimaton() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(3, 0), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
}
