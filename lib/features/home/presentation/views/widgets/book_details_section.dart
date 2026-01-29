import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18 + 30),
          child: const CustomBookItem(image: '',),
        ),
        const SizedBox(height: 38),

        Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 4),

        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(color: Color(0xFFB7B6BC)),
        ),
        const SizedBox(height: 14),

        const BookRating(),
        const SizedBox(height: 39),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BooksAction(),
        ),
      ],
    );
  }
}
