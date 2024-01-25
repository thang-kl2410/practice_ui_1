import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sample_ui/model/review_model.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key, required this.reviewModel});
  final ReviewModel reviewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, bottom: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            reviewModel.name,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800
            ),
          ),
          RatingBar.builder(
            initialRating: reviewModel.rating,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 24,
            itemPadding: const EdgeInsets.symmetric(horizontal: 1),
            itemBuilder: (context, _) => Icon(
              Icons.star_rounded,
              color: Colors.amber.shade300,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Wrap(
            children: [
              RichText(
                text: TextSpan(
                  text: (reviewModel.content),
                  style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                overflow: TextOverflow.fade,
              ),
            ],
          )
        ],
      )
    );
  }
}
