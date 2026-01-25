import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomBookDetailsAppBar(),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.18 + 30),
                child: const CustomBookItem(),
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
              Expanded(child: const SizedBox(height: 50)),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: const SimilarBooksListView(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
