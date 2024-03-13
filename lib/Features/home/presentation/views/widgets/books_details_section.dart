import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imgUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle20
              .copyWith(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18
              .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(
              counts: bookModel.volumeInfo.averageRating ?? 1651,
              rating: bookModel.volumeInfo.ratingsCount ?? 100,
            ),
          ],
        ),
        const SizedBox(height: 30,),
        const BooksAction(),
        const SizedBox(height: 40,),
      ],
    );
  }
}
