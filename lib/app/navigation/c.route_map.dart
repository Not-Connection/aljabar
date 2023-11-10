part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.cobaSatu: (RouteData data) => const CobaSatuView(),
    Routes.cobaDua: (RouteData data) => const CobaDuaView(),
    Routes.cobaTiga: (RouteData data) => const CobaTigaView(),
    Routes.home: (RouteData data) => const HomeView(),
    Routes.single: (RouteData data) => const SingleView(),
    Routes.battle: (RouteData data) => const BattleView(),
  };
}
