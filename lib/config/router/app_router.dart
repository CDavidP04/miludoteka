import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/shared/games/presentation/screens/screens.dart';
import '../../features/shared/games/presentation/widgets/widgets.dart';

Widget _placeholderView(String title) {
  return Scaffold(
    appBar: AppBar(title: Text(title)),
    body: Center(
      child: Text(
        '$title en desarrollo',
        style: TextStyle(fontSize: 18),
      ),
    ),
  );
}

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeScreen(childView: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (context, state) {
                // TODO: Reemplazar con const HomeView() cuando se implemente
                return const HomeView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/partidas',
              builder: (context, state) {
                // TODO: Reemplazar con const PartidasView() cuando se implemente
                return _placeholderView('Partidas');
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/lista_deseos',
              builder: (context, state) {
                // TODO: Reemplazar con const ListaDeseosView() cuando se implemente
                return _placeholderView('Lista de deseos');
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/perfil',
              builder: (context, state) {
                // TODO: Reemplazar con const PerfilView() cuando se implemente
                return _placeholderView('Perfil');
              },
            ),
          ],
        ),
      ],
    ),
  ],
);