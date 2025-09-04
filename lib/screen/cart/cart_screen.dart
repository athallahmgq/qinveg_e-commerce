import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';
import 'package:qinveg_mobile/screen/home/home_screen.dart';
import 'package:qinveg_mobile/screen/home/model/item_model.dart';
import 'package:qinveg_mobile/screen/home/widget/food_item.dart';
import 'package:qinveg_mobile/screen/home/widget/main_navigation.dart';

class CartScreen extends StatefulWidget {
  final String name;

  const CartScreen({super.key, required this.name});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isChecked = false;
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.white,
      appBar: AppBar(
        backgroundColor: MainColor.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: MainColor.black),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => MainNavigation(name: '${widget.name}'),
              ),
              (route) => false,
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                Container(
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xffe8e9ea)),
                  ),
                  child: Column(
                    children: [
                      _buildCart(
                        'Austarlian Beef Tenderloin',
                        'assets/images/beef.png',
                        '0.9-kg/pack',
                        'Rp 15.000',
                        '70%',
                      ),

                      _buildCart(
                        'Austarlian Beef Tenderloin',
                        'assets/images/beef.png',
                        '0.9-kg/pack',
                        'Rp 15.000',
                        '70%',
                      ),

                      _buildCart(
                        'Austarlian Beef Tenderloin',
                        'assets/images/beef.png',
                        '0.9-kg/pack',
                        'Rp 15.000',
                        '70%',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "You might like",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(height: 12),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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

                SizedBox(height: 20),
              ],
            ),
          ),

          /// Bottom Checkout Bar
          Container(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 15),
            decoration: BoxDecoration(
              color: MainColor.white,
              border: Border(top: BorderSide(color: Color(0xffe8e9ea))),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF457B37), width: 1),
                    color: MainColor.primaryColor[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.percent, color: MainColor.primaryColor[700]),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Got any voucher? Check it here",
                          style: TextStyle(
                            color: MainColor.primaryColor[700],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: MainColor.primaryColor[700],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: isChecked
                                ? MainColor.primaryColor
                                : Color(0xffe8e9ea),
                            width: 2,
                          ),
                          color: isChecked
                              ? MainColor.primaryColor
                              : Colors.transparent,
                        ),
                        child: isChecked
                            ? Icon(
                                Icons.check,
                                size: 16,
                                color: MainColor.primaryColor,
                              )
                            : null,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text("Select all"),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            color: MainColor.black[200],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "\$49.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Checkout",
                        style: TextStyle(color: MainColor.white),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildCart(
    String title,
    String images,
    String kg,
    String price,
    String discount,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // ✅ Checkbox
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isChecked ? Colors.green : Colors.grey,
                  width: 2,
                ),
                color: isChecked ? Colors.green : Colors.transparent,
              ),
              child: isChecked
                  ? Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
          ),
          SizedBox(width: 10),

          // 🖼️ Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              images,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),

          // 📖 Title + Desc + Price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(kg, style: TextStyle(fontSize: 13, color: Colors.grey)),
                SizedBox(height: 6),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: MainColor.semanticRed[600],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    discount,
                    style: TextStyle(
                      color: MainColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),

          // ➖ qty ➕
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (qty > 1) {
                    setState(() {
                      qty--;
                    });
                  }
                },
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Icon(Icons.remove, size: 18, color: Colors.grey[700]),
                ),
              ),
              SizedBox(width: 8),
              Text(
                qty.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() {
                    qty++;
                  });
                },
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MainColor.primaryColor[100],
                  ),
                  child: Icon(
                    Icons.add,
                    size: 18,
                    color: MainColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
