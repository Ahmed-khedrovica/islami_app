import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islami/core/routing/app_routes.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    final currentIndex = _getSelectedIndex(location);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      backgroundColor:
      Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      selectedItemColor:
      Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      unselectedItemColor:
      Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      onTap: (index) => _onItemTapped(context, index, currentIndex),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          activeIcon: Icon(Icons.menu_book),
          label: 'Quran',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books_outlined),
          activeIcon: Icon(Icons.library_books),
          label: 'Hadith',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fingerprint_outlined),
          activeIcon: Icon(Icons.fingerprint),
          label: 'Sebha',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.radio_outlined),
          activeIcon: Icon(Icons.radio),
          label: 'Radio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_outlined),
          activeIcon: Icon(Icons.access_time),
          label: 'Time',
        ),
      ],
    );
  }

  int _getSelectedIndex(String location) {
    if (location.startsWith(AppRoutes.quran)) return 0;
    if (location.startsWith(AppRoutes.hadith)) return 1;
    if (location.startsWith(AppRoutes.sebha)) return 2;
    if (location.startsWith(AppRoutes.radio)) return 3;
    if (location.startsWith(AppRoutes.time)) return 4;
    return 0;
  }

  void _onItemTapped(
      BuildContext context,
      int tappedIndex,
      int currentIndex,
      ) {
    if (tappedIndex == currentIndex) return;

    switch (tappedIndex) {
      case 0:
        context.go(AppRoutes.quran);
        break;
      case 1:
        context.go(AppRoutes.hadith);
        break;
      case 2:
        context.go(AppRoutes.sebha);
        break;
      case 3:
        context.go(AppRoutes.radio);
        break;
      case 4:
        context.go(AppRoutes.time);
        break;
    }
  }
}
