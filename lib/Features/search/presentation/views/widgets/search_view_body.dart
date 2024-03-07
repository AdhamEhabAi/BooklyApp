import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_textField.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_listView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 16,),

          Row(
            children: [
              Text(
                'Best Seller',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 16,),
          const SearchResultListView()

        ],
      ),
    );
  }
}

