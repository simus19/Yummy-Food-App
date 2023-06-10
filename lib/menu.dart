import 'package:bottom_navigation_view/bottom_navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/favoritePage.dart';
import 'package:food_app/pages/homePage.dart';
import 'package:food_app/pages/loginPage.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late final BottomNavigationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = BottomNavigationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _controller.goBack();
        return false;
      },
      child: Scaffold(
        body: BottomNavigationView(
          controller: _controller,
          transitionType: BottomNavigationTransitionType.fadeInOut,
          backgroundColor: Colors.lime,
          children: const [
            // login(),
            homePage(),
            favoritePage(),
            // ColorScreen(color: Colors.amber),
            // ColorScreen(color: Colors.yellow),
            // ColorScreen(color: Colors.green),
          ],
        ),
        bottomNavigationBar: BottomNavigationIndexedBuilder(
          controller: _controller,
          builder: (context, index, child) {
            return BottomNavigationBar(
              currentIndex: index,
              onTap: (index) {
                _controller.goTo(index);
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xffF87146),
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Favorite',
                  icon: Icon(
                    Icons.favorite,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Order',
                  icon: Icon(
                    Icons.note,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Reward',
                  icon: Icon(
                    Icons.payment,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
