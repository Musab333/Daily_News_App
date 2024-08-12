import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/helper/local/cache_helper.dart';
import 'package:news/shared/constants/bloc_observer/bloc_observer.dart';
import 'package:news/shared/styles/themes.dart';
import 'package:news/view/onboarding/onboarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  bool isModeApp = CacheHelper.getBoolean(key: 'isDark') != null;
  runApp(News(isModeApp));
}

class News extends StatelessWidget {
  final bool isModeApp;
  const News(this.isModeApp, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode:
      //     NewsCubit.get(context).isChange ? ThemeMode.dark : ThemeMode.light,
      //themeMode: ThemeMode.dark,
      home: const OnBoardingScreen(),
    );
  }
}
