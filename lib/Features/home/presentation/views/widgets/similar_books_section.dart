import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('You Can Also Like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
          ],
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}
