import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18 + 30),
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 38),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            bookModel.volumeInfo!.title!,
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 4),

        Text(
          bookModel.volumeInfo?.authors?.toString() ?? '',
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
