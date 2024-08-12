import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/view/screens/layout/home_layout.dart';
import 'package:news/view/widgets/button_custom.dart';
import 'package:news/view/widgets/route_navigator.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: SvgPicture.asset('assets/images/search2.svg',
                  fit: BoxFit.cover,),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text('NEWS App',
                style: TextStyle(
                  //color: AppColors.secondColors,
                  fontSize: 24,
                ),
                ),
                const SizedBox(height: 30.0,),
                const Text('NEWS App',
                  style: TextStyle(
                    //color: AppColors.secondColors,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 70.0,),
                ButtonCustom(text: 'Get Start',
                  widthSize: 200,
                  fontSize: 18,
                  onPress: () {
                    RouteNavigator.navigateAndFinish(context, const HomeLayout());
                },),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
