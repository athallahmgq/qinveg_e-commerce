import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: MainColor.white,
                hintText: 'Whats Your Daily Needs ?',
                hintStyle: TextStyle(color: MainColor.black[200]),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: MainColor.primaryColor,
                  ),
                  onPressed: () {},
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffe8e9ea), width: 2),
                  borderRadius: BorderRadius.circular(100),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MainColor.primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),

            SizedBox(height: 30),

            Text(
              "All categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    _buildCategories(
                      'Banana',
                      '15 Products',
                      'assets/images/banana.png',
                    ),
                    SizedBox(height: 15),
                    _buildCategories(
                      'Beef',
                      '10 Products',
                      'assets/images/beefphoto.png',
                    ),
                    SizedBox(height: 15),
                    _buildCategories(
                      'Seafood',
                      '12 Products',
                      'assets/images/crab.png',
                    ),
                  ],
                ),

                Column(
                  children: [
                    _buildCategories(
                      'Chicken',
                      '9 Products',
                      'assets/images/brest.png',
                    ),
                    SizedBox(height: 15),
                    _buildCategories(
                      'Protein',
                      '5 Products',
                      'assets/images/egg.png',
                    ),
                    SizedBox(height: 15),
                    _buildCategories(
                      'Seafood',
                      '12 Products',
                      'assets/images/crab.png',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildCategories(String title, String products, String images) {
    return Container(
      decoration: BoxDecoration(
        color: MainColor.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffe8e9ea), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  products,
                  style: TextStyle(fontSize: 12, color: MainColor.black[200]),
                ),
              ),
            ],
          ),

          SizedBox(width: 25),

          Image.asset(images, scale: 1.8),
        ],
      ),
    );
  }
}
