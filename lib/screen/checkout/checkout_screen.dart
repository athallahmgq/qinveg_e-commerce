import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';
import 'package:qinveg_mobile/screen/home/widget/main_navigation.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key, required this.name});

  final String name;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MainColor.white,
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
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.bold, color: MainColor.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              icon: Icons.location_on,
              title: "Delivery address",
              subtitle: "Jalan By Pass Ngurah Rai, Denpasar, Bali,",
              status: 'Home',
              name: 'Dexter Morgan',
              number: '+ 081419042939 ',
            ),

            SizedBox(height: 12),

            _buildSection(
              icon: Icons.calendar_today,
              title: "Shipping schedule",
              trailing: Row(
                children: [
                  Text("Now", style: TextStyle(color: Colors.grey)),
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Shipping Duration
            Text(
              "Shipping duration",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),

            _buildOption("Standard", "Free", "2 hours", selected: false),
            SizedBox(height: 8),
            _buildOption(
              "Priority",
              "+\$15.00",
              "20–60 minutes",
              selected: true,
              isGreen: true,
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffe8e9ea)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  _buildItem(
                    "Australia beef tenderloin",
                    "450–500gr / pack",
                    "\$40.00",
                    "assets/images/beef.png",
                    discount: "20%",
                    oldPrice: "\$50.00",
                    qty: 1,
                  ),

                  SizedBox(height: 10),

                  _buildItem(
                    "Banana",
                    "1 pack",
                    "\$9.00",
                    "assets/images/beef.png",
                    qty: 1,
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            _buildSection(
              icon: Icons.edit,
              title: "Got a special request?",
              trailing: Text(
                "Write a notes",
                style: TextStyle(color: Colors.green),
              ),
            ),

            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: MainColor.white[200],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                children: [
                  _buildSummaryRow("Subtotal", "\$49.00"),
                  _buildSummaryRow("Taxes", "\$4.90"),
                  _buildSummaryRow("Service fee", "\$5.00"),
                  _buildSummaryRow("Delivery fee", "\$15.00"),
                  Divider(thickness: 1, color: MainColor.black[100]),
                  _buildSummaryRow("Total", "\$73.90", bold: true, green: true),
                ],
              ),
            ),

            SizedBox(height: 80),
          ],
        ),
      ),

      // Bottom Button
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffe8e9ea))),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 20,
            bottom: 40,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
            child: Text(
              "Proceed to Payment",
              style: TextStyle(
                fontSize: 16,
                color: MainColor.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required IconData icon,
    required String title,
    String? subtitle,
    String? name,
    String? number,
    Widget? trailing,
    String? status,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffe8e9ea)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.green),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                if (subtitle != null) SizedBox(height: 4),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),

                SizedBox(height: 10),

                Row(
                  children: [
                    if (name != null)
                      Text(
                        name,
                        style: TextStyle(
                          color: MainColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    SizedBox(width: 10),
                    if (number != null)
                      Text(
                        number,
                        style: TextStyle(color: MainColor.black, fontSize: 14),
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (trailing != null) trailing,
          if (status != null)
            Container(
              decoration: BoxDecoration(
                color: MainColor.primaryColor[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: MainColor.primaryColor[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildOption(
    String title,
    String price,
    String duration, {
    bool selected = false,
    bool isGreen = false,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected && isGreen
            ? MainColor.primaryColor[50]
            : MainColor.white,
        border: Border.all(
          color: selected ? Color(0xFF457B37) : Color(0xffe8e9ea),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.local_shipping, color: MainColor.primaryColor),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selected ? Color(0xFF457B37) : MainColor.black,
                  ),
                ),
                Text(price, style: TextStyle(color: MainColor.black[200])),
              ],
            ),
          ),
          Text(duration, style: TextStyle(color: MainColor.black[200])),
        ],
      ),
    );
  }

  Widget _buildItem(
    String title,
    String subtitle,
    String price,
    String imagePath, {
    String? discount,
    String? oldPrice,
    int qty = 1,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: MainColor.black[200], fontSize: 13),
                ),
                if (discount != null && oldPrice != null)
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: MainColor.semanticRed[600],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          discount,
                          style: TextStyle(
                            color: MainColor.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        oldPrice,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: MainColor.black[200],
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: TextStyle(
                  color: MainColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 4),
              Text("$qty pcs", style: TextStyle(color: MainColor.black[200])),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(
    String label,
    String value, {
    bool bold = false,
    bool green = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: MainColor.black[200])),
          Text(
            value,
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              color: green ? MainColor.primaryColor : MainColor.black[200],
              fontSize: bold ? 16 : 14,
            ),
          ),
        ],
      ),
    );
  }
}
