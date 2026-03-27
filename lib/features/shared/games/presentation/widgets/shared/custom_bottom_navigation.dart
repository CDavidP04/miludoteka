import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class CustomBottomNavigation extends StatelessWidget {

  const CustomBottomNavigation({super.key});

  // Mapas estáticos para optimizar el rendimiento y mantener consistencia
  static const Map<String, int> _routeToIndex = {
    '/': 0,
    '/partidas': 1,
    '/lista_deseos': 2,
    '/perfil': 3,
  };

  static const Map<int, String> _indexToRoute = {
    0: '/',
    1: '/partidas',
    2: '/lista_deseos',
    3: '/perfil',
  };

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    return _routeToIndex[location] ?? 0;
  }

  void onItemTapped(BuildContext context, int index) {
    final route = _indexToRoute[index];
    if (route != null) {
      context.go(route);
    }
  }  

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0,
      onDestinationSelected: (index) => onItemTapped(context, index),
      selectedIndex: getCurrentIndex(context),
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.collections_bookmark_outlined, color: Colors.black87,),
          icon: Icon(Icons.collections_bookmark_outlined),
          label: 'Colección'
        ),
        NavigationDestination(
          selectedIcon: Icon(Symbols.playing_cards, color: Colors.black87),
          icon: Icon(Symbols.playing_cards),
          label: 'Partidas'
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.favorite_outlined),
          icon: Icon(Icons.favorite_outline),
          label: 'Lista de deseos'
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person_outlined),
          icon: Icon(Icons.person_outline),
          label: 'Perfil'
        ),
      ],
    );
  }
}