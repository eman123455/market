import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/core/resource/app_colors.dart';
import 'package:market/core/components/cache_image.dart';
import 'package:market/core/components/custom_text_field.dart';
import 'package:market/core/functions/app_functions.dart';
import 'package:market/features/product_details/presentation/widgets/comments_List.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});
  final TextEditingController feedbackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppFunctions.customAppBar(text: 'Product Details'),
      body: ListView(
        children: [
          CacheImage(
            imageUrl:
                'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Title', style: TextStyle(fontSize: 18)),
                    Text('200 LE', style: TextStyle(fontSize: 18)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('0', style: TextStyle(fontSize: 18)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star, color: Colors.amber),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: AppColors.kGreyColor),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Product Description', style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) =>
                      Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 40),
                CustomTextField(
                  hint: 'Type Your Feedback',
                  controller: feedbackController,
                  inputType: TextInputType.text,
                  sufficon: Icon(Icons.send),
                ),
                SizedBox(height: 10),
                Row(
                  children: [Text('Comments', style: TextStyle(fontSize: 18))],
                ),
                SizedBox(height: 10),
                CommentsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




