import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:qinveg_mobile/preference/color.dart';
import 'package:qinveg_mobile/screen/cart/cart_screen.dart';
import 'package:qinveg_mobile/screen/checkout/checkout_screen.dart';
import 'package:qinveg_mobile/screen/explore/explore_screen.dart';
import 'package:qinveg_mobile/screen/home/home_screen.dart';
import 'package:qinveg_mobile/screen/profile/profile_screen.dart';

class MainNavigation extends StatefulWidget {
  final String name;

  const MainNavigation({super.key, required this.name});

  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation>
    with TickerProviderStateMixin {
  int _selectedIndex = 2; // Start with home as default
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  List<Widget> get _pages => [
    ExploreScreen(),
    CartScreen(),
    HomeScreen(name: '${widget.name}'),
    CheckoutScreen(),
    ProfileScreen()
  ];

  final List<NavigationItem> _navigationItems = [
    NavigationItem(Icons.grid_view_rounded, 0),
    NavigationItem(Icons.shopping_cart_rounded, 1),
    NavigationItem(Icons.home_rounded, 2),
    NavigationItem(Icons.receipt_long_rounded, 3),
    NavigationItem(Icons.person_rounded, 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ), // Adjusted padding
              child: BottomBar(
                borderRadius: BorderRadius.circular(
                  100,
                ), // Increased border radius
                barColor: Colors.transparent,
                body: (context, controller) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 0,
                    ), // Better padding
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, Colors.grey.shade50],
                      ),
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12),
                          blurRadius: 25,
                          spreadRadius: 0,
                          offset: Offset(0, 8),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 10,
                          spreadRadius: -2,
                          offset: Offset(0, 4),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 6,
                          spreadRadius: -4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly, // Better spacing
                      children: _navigationItems
                          .map((item) => _navItem(item.icon, item.index))
                          .toList(),
                    ),
                  );
                },
                child: const SizedBox(height: 0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() => _selectedIndex = index);
        if (isActive) {
          _animationController.forward().then((_) {
            _animationController.reverse();
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Smooth transitions
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: isActive ? 16 : 12, // Dynamic padding
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            100,
          ), // Rounded rectangle instead of circle
          gradient: isActive
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    MainColor.primaryColor,
                    MainColor.primaryColor.withOpacity(0.8),
                  ],
                )
              : null,
          color: isActive ? null : Colors.grey.withOpacity(0.05),
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: MainColor.primaryColor.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedBuilder(
              animation: _scaleAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: isActive && _animationController.isAnimating
                      ? _scaleAnimation.value
                      : 1.0,
                  child: Icon(
                    icon,
                    size: isActive ? 26 : 22, // Dynamic icon size
                    color: isActive
                        ? Colors.white
                        : Colors.grey.shade600, // Better inactive color
                  ),
                );
              },
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isActive ? 5 : 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: isActive ? 1.0 : 0.0,
                child: SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final int index;

  NavigationItem(this.icon, this.index);
}
