import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';
import 'package:qinveg_mobile/screen/home/model/item_model.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({super.key, required this.item});

  final ItemFoodModel item;

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: MainColor.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xffe8e9ea), width: 1.5),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // === IMAGE + DISCOUNT BADGE ===
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.item.imagepath,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: MainColor.semanticRed[600],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    widget.item.discount,
                    style: TextStyle(
                      color: MainColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // === TITLE & SUBTITLE ===
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MainColor.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  widget.item.desc,
                  style: TextStyle(fontSize: 12, color: MainColor.black[200]),
                ),
                SizedBox(height: 8),

                Row(
                  children: [
                    Text(
                      widget.item.price,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: MainColor.black,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      widget.item.coret,
                      style: TextStyle(
                        fontSize: 10,
                        color: MainColor.semanticRed[600],
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 12),
                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Container(
                        decoration: BoxDecoration(
                          color: MainColor.primaryColor[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.add_outlined,
                          color: MainColor.primaryColor,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
