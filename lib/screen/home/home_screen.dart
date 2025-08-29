import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';
import 'package:qinveg_mobile/screen/detail/detail_screen.dart';
import 'package:qinveg_mobile/screen/home/model/item_model.dart';
import 'package:qinveg_mobile/screen/home/widget/food_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.name});

  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_homescreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hai 👋 Selamat datang',
                        style: TextStyle(color: MainColor.black[400]),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),

                        decoration: BoxDecoration(
                          color: MainColor.white[200],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xffB9BABD),
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: MainColor.primaryColor,
                              size: 18,
                            ),
                            SizedBox(width: 4),
                            Text(
                              ' ${widget.name} Home',
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
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MainColor.white[200],
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xffB9BABD), width: 1.5),
                    ),
                    child: Icon(Icons.notifications, color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Pay Day\nShop Day',
                style: TextStyle(
                  fontSize: 41,
                  fontWeight: FontWeight.w800,
                  color: MainColor.primaryColor[700],
                  letterSpacing: -1,
                  height: 1,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text(
                    'Voucher\nUp To',
                    style: TextStyle(
                      fontSize: 20,
                      color: MainColor.primaryColor[700],
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '75',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: MainColor.primaryColor[700],
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    '%',
                    style: TextStyle(
                      fontSize: 20,
                      color: MainColor.primaryColor[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
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
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _buildSectionMethod('Categories'),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                height: 80,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategory("Vegetable", Icons.local_florist),
                      _buildCategory("Fruit", Icons.apple),
                      _buildCategory("Meat", Icons.set_meal),
                      _buildCategory("Seafood", Icons.food_bank),
                      _buildCategory("Vegetable", Icons.local_florist),
                      _buildCategory("Fruit", Icons.apple),
                      _buildCategory("Meat", Icons.set_meal),
                      _buildCategory("Seafood", Icons.food_bank),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              color: MainColor.primaryColor[100],
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: _buildSectionMethod('Flash Sale 🔥'),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 280,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 195,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailScreen(),
                                    ),
                                  );
                                },
                                child: Container(
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
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _buildSectionMethod('Today Special'),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                height: 280,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
            ),
          ],
        ),
      ),
    );
  }

  Container _buildCategory(String name, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: MainColor.primaryColor[50],
              borderRadius: BorderRadius.circular(17),
            ),
            child: Icon(icon, color: MainColor.primaryColor, size: 30),
          ),
          SizedBox(height: 7),
          Text(
            name,
            style: const TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.bold,
              color: MainColor.black,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildSectionMethod(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text(
          "See all >",
          style: TextStyle(
            color: MainColor.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
