part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<SingleData> get single => _singleData;
  static Injected<BattleData> get battle => _battleData;
}

final _homeData = RM1.inj(HomeData(), () => Ctrl.home.init);
final _singleData = RM1.inj(SingleData(), () => Ctrl.single.init);
final _battleData = RM1.inj(BattleData(), () => Ctrl.battle.init);
