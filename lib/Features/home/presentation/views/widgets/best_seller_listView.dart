import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
          if (state is NewsetBooksSuccess) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(bookModel: state.books[index],),
                );
              },
            );
          }else if (state is NewsetBooksFailure)
          {
            return CustomErrorWidget(errMassage: state.errMassage);
          }else
          {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
