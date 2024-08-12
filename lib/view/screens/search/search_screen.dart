import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/controller/news_cubit/news_cubit.dart';
import 'package:news/view/widgets/conditional_Article_Item_Custom.dart';
import 'package:news/view/widgets/icon_button_back_custom.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var listArticleItem = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(
            leading: iconButtonBackCustom(context),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    textFormFieldSearchCustom(context),
                    const SizedBox(
                      height: 20.0,
                    ),
                    if (state is NewsGetSearchLoadingState)
                      const LinearProgressIndicator(),
                    Expanded(
                      child: conditionalArticleItemCustom(
                        listArticleItem: listArticleItem,
                        isSearch: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget textFormFieldSearchCustom(BuildContext context) {
    return TextFormField(
      controller: searchController,
      onFieldSubmitted: (searchArticleItem) {
        NewsCubit.get(context).getSearch(searchArticleItem);
      },
      validator: (value) {
        if (value!.isEmpty) return 'Enter name of Article';
        return null;
      },
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(
          Icons.search,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
