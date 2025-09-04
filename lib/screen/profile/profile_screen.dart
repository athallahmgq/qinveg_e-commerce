import 'package:flutter/material.dart';
import 'package:qinveg_mobile/preference/color.dart';

class ProfileScreen extends StatefulWidget {
  final String name;

  const ProfileScreen({super.key, required this.name});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: MainColor.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xffe8e9ea), width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 140,
                            height: 140,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 20,
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: MainColor.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  right: 0,
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: MainColor.primaryColor[200],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: MainColor.primaryColor[800],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Profile picture
                          Positioned.fill(
                            child: Center(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: MainColor.white,
                                    width: 4,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MainColor.black.withOpacity(0.2),
                                      blurRadius: 15,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: ClipOval(
                                  child: Container(
                                    color: MainColor.white,
                                    child: Image.asset(
                                      'assets/images/gr.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Text(
                        '${widget.name}',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: MainColor.black,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Formula 1 Driver',
                        style: TextStyle(
                          fontSize: 16,
                          color: MainColor.black[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(height: 25),

                      Container(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 8,
                            shadowColor: MainColor.black.withOpacity(0.3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                                size: 20,
                                color: MainColor.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Share Your Profile',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: MainColor.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // Statistics section
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: MainColor.primaryColor[50],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFF457B37)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatItem('Success', '98%'),
                      _buildStatItem('Jobs', '52'),
                      _buildStatItem('Hours', '2095'),
                      _buildStatItem('Rate', '4.8'),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Complete Profile section
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: MainColor.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xffe8e9ea)),
                    boxShadow: [
                      BoxShadow(
                        color: MainColor.black.withOpacity(0.05),
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: MainColor.black,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Usename | Alamat | Riwayat | Etc',
                              style: TextStyle(
                                fontSize: 14,
                                color: MainColor.black[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: MainColor.primaryColor[50],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: MainColor.primaryColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Portfolio section
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: MainColor.semanticYellow[800],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: MainColor.black.withOpacity(0.2),
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Metode Pembayaran',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: MainColor.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Bank | Transfer | E-Wallet | Etc',
                              style: TextStyle(
                                fontSize: 14,
                                color: MainColor.white,
                              ),
                            ),
                            SizedBox(height: 15),
                            // Progress bar
                            Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: MainColor.black[700],
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.7,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: MainColor.white,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: MainColor.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: MainColor.black,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: MainColor.black[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: MainColor.primaryColor[700],
          ),
        ),
      ],
    );
  }
}
