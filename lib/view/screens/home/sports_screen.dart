import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/controller/news_cubit/news_cubit.dart';
import 'package:news/view/widgets/conditional_Article_Item_Custom.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var listArticleItem = NewsCubit.get(context).sports;
        return conditionalArticleItemCustom(listArticleItem: listArticleItem);
      },
    );
  }
}
