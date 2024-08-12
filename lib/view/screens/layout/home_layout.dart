import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/controller/news_cubit/news_cubit.dart';
import 'package:news/view/screens/search/search_screen.dart';
import 'package:news/view/widgets/route_navigator.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getBusiness(),
      child: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          var newsCubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'News App',
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    RouteNavigator.navigateTo(
                      context,
                      SearchScreen(),
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    NewsCubit.get(context).changeIconModeAndSaveMode();
                  },
                  icon: Icon(
                    NewsCubit.get(context).iconChangeMode,
                  ),
                ),
              ],
            ),
            body: newsCubit.screens[newsCubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: newsCubit.currentIndex,
              items: newsCubit.bottomItems,
              onTap: (index) {
                newsCubit.changeBottomNavBar(index);
              },
            ),
          );
        },
      ),
    );
  }
}
