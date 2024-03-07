import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle20
                .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18
                .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 18,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookRating(),
            ],
          ),
          const SizedBox(height: 30,),
          const BooksAction(),
          const SizedBox(height: 40,),
          Row(
            children: [
              Text('You Can Also Like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
            ],
          ),
          const SizedBox(height: 16,),
          const SimilarBooksListView(),

        ],
      ),
    );
  }
}


