// ignore_for_file: file_names

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/view/widgets/article_item_custom.dart';

Widget conditionalArticleItemCustom({
  required listArticleItem,
  isSearch = false,
}) =>
    ConditionalBuilder(
      condition: listArticleItem.isNotEmpty,
      builder: (context) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => articleItemCustom(
          listArticleItem[index],
          context,
        ),
        separatorBuilder: (context, index) => const Divider(
          height: 2,
          color: Colors.grey,
        ),
        itemCount: listArticleItem.length,
      ),
      fallback: (context) => isSearch
          ? onSearching()
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
              ),
            ),
    );

Widget onSearching() {
  return Padding(
    padding: const EdgeInsetsDirectional.only(top: 100),
    child: Column(
      children: [
        Expanded(
          child: Center(
            child: SvgPicture.asset(
              'assets/images/search.svg',
              height: 200.0,
            ),
          ),
        ),
        const SizedBox(
          height: 40.0,
        ),
        const Expanded(
          child: Text(
            'Searching...',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}
