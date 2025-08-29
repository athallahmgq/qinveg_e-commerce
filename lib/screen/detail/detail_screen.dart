import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';
import 'package:qinveg_mobile/screen/home/model/item_model.dart';
import 'package:qinveg_mobile/screen/home/widget/food_item.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/images/beef.png', fit: BoxFit.cover),
                  Positioned(
                    top: 70,
                    left: 24,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    right: 24,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: MainColor.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bagian detail produk
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 24),
                  child: Text(
                    'Autralian beef tenderloin',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    '450-500gr /pack',
                    style: TextStyle(color: MainColor.black[200], fontSize: 12),
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: MainColor.semanticRed[600],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              "20%",
                              style: TextStyle(
                                color: MainColor.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Rp2.000",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              color: MainColor.primaryColor,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Rp10.000",
                            style: TextStyle(
                              fontSize: 10,
                              color: MainColor.semanticRed[600],
                              decoration: TextDecoration.lineThrough,
                              decorationColor: MainColor.semanticRed[600],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffe8e9ea),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Icon(
                                Icons.remove,
                                color: MainColor.black[200],
                              ),
                            ),
                          ),

                          SizedBox(width: 15),

                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(width: 15),

                          Container(
                            decoration: BoxDecoration(
                              color: MainColor.primaryColor[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Icon(
                                Icons.add,
                                color: MainColor.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Color(0xffe8e9ea)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Origin
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Origin",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Import",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.grey.shade300,
                        ),

                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Condition",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Fresh",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.grey.shade300,
                        ),

                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Fat content",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Non Fatty",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'In terms of quality, look for well-marbled tenderloin, where fat is interspersed within the muscle. This marbling enhances the flavor and juiciness when cooked. A high-quality tenderloin should have a vibrant red color with a fine grain.',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Show More >",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MainColor.primaryColor,
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Divider(color: MainColor.black[100], thickness: 1),
                ),

                SizedBox(height: 16),

                // Related product
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Related Product',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "See all >",
                        style: TextStyle(
                          color: MainColor.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 195,
                          child: FoodItem(
                            item: ItemFoodModel(
                              title: 'Australia beef tenderloin',
                              imagepath: 'assets/images/beef.png',
                              price: 'Rp10.000',
                              coret: '2000',
                              desc: '450-500gr /pack',
                              discount: '70%',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 195,
                          child: FoodItem(
                            item: ItemFoodModel(
                              title: 'Chicken brest frozen',
                              imagepath: 'assets/images/bg_onboarding.png',
                              price: 'Rp10.000',
                              coret: '2000',
                              desc: '450-500gr /pack',
                              discount: '70%',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 195,
                          child: FoodItem(
                            item: ItemFoodModel(
                              title: 'Chicken brest frozen',
                              imagepath: 'assets/images/bg_onboarding.png',
                              price: 'Rp10.000',
                              coret: '2000',
                              desc: '450-500gr /pack',
                              discount: '70%',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 80), // Buat ruang tombol Add to Cart
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 40),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffe8e9ea), width: 2)),
        ),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          icon: Icon(Icons.shopping_basket, color: MainColor.white),
          label: Text(
            "Add to Cart",
            style: TextStyle(
              color: MainColor.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          onPressed: () {
            // TODO: aksi tambah ke cart
          },
        ),
      ),
    );
  }
}
