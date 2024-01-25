import 'package:flutter/material.dart';
import 'package:sample_ui/screen/widget/review_item.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../data/dummy.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Worth every penny.",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w800
            ),
          ),
        ),
        const Center(
          child: Text(
            "Just a dime a day is all takes to grow happy, healthy plants.",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.height/3,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                          width: 5,
                          color: Colors.yellow.shade200
                      )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://th.bing.com/th/id/R.73c7ed4eef173253bdfc3af2c162527e?rik=33bxWw75WRd3wg&riu=http%3a%2f%2fwww.bonsaitreegardener.net%2fwp-content%2fuploads%2f2018%2f06%2fHow-To-Make-A-Bonsai-Tree-1-1024x884.jpg&ehk=Dns9gfXitemoSE1xGklnnsxNrOAHvVnZBdE8BaR9a58%3d&risl=&pid=ImgRaw&r=0',
                      height: MediaQuery.of(context).size.height/4-10,
                      width: MediaQuery.of(context).size.height/4-10,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5 - 15,
                    width: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                          width: 5,
                          color: Colors.yellow.shade200
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        'https://th.bing.com/th/id/OIP.Y6qBxrOHUxOMIqW66KkpywHaGQ?w=500&h=422&rs=1&pid=ImgDetMain',
                        height: MediaQuery.of(context).size.height / 5 - 25,
                        width: MediaQuery.of(context).size.height / 5 - 10,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        RatingBar.builder(
          initialRating: 4.8,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 1),
          itemBuilder: (context, _) => Icon(
            Icons.star_rounded,
            color: Colors.amber.shade300,
            size: 36,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        const Center(
          child: Text(
            "4.8 Rating(5.5K Reviews)",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ListView.builder(
            itemCount: reviews.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index)
            => ReviewItem(reviewModel: reviews[index])
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
