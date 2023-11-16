part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----

    Routes.home: (RouteData data) => const HomeView(),
    Routes.single: (RouteData data) => const SingleView(),
    Routes.singleSnake: (RouteData data) => const SingleSnakeView(),
    Routes.battle: (RouteData data) => const BattleView(),
  };
}
