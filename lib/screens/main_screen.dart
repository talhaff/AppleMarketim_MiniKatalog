import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'favorite_screen.dart';
import 'cart_screen.dart';
import '../data/cart_data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFF6366F1).withOpacity(0.2),
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore_rounded, color: Color(0xFF6366F1)),
            label: 'Keşfet', // İngilizcesi Discover'dı
          ),
          const NavigationDestination(
            icon: Icon(Icons.favorite_border_rounded),
            selectedIcon: Icon(
              Icons.favorite_rounded,
              color: Color(0xFF6366F1),
            ),
            label: 'Favoriler', // İngilizcesi Favorites'tı
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: cartItems.isNotEmpty,
              label: Text('${cartItems.length}'),
              child: const Icon(Icons.shopping_cart_outlined),
            ),
            selectedIcon: Badge(
              isLabelVisible: cartItems.isNotEmpty,
              label: Text('${cartItems.length}'),
              child: const Icon(
                Icons.shopping_cart_rounded,
                color: Color(0xFF6366F1),
              ),
            ),
            label: 'Sepetim', // İngilizcesi Cart'tı
          ),
        ],
      ),
    );
  }
}
