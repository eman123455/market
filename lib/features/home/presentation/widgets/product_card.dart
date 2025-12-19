import 'package:flutter/material.dart';
import 'package:market/core/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius:BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Stack(
                 children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: double.infinity,
                      
                      child: Image.network('https://images.unsplash.com/photo-1542291026-7eec264c27ff',
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.kGreyColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)
                      ),
                      child: IconButton(
                        onPressed:(){

                        } , 
                        icon: Icon(
                        Icons.favorite,
                        color: AppColors.kWhiteColor,
                        fontWeight: FontWeight.bold,
                        size: 28,
                        ),
                        ),
                    ),
                  ),
                 ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Men Support shoes',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'this is the best shoes you can buy at this price point it stand',
                      style: TextStyle(
                        color: AppColors.kGreyColor,
                        fontSize: 16
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text(
                            '\$1989',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                            ),
                          ),
                         Spacer(),
                         Container(
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 12),
                          decoration: BoxDecoration(
                            color: AppColors.kBlackColor,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text(
                            'Buy',
                            style: TextStyle(
                              color: AppColors.kWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                         )
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        );
  }
}