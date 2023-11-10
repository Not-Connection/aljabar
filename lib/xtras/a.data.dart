part of '_index.dart';

abstract class Data {
  static Injected<CobaSatuData> get cobaSatu => _cobaSatuData;
  static Injected<CobaDuaData> get cobaDua => _cobaDuaData;
  static Injected<CobaTigaData> get cobaTiga => _cobaTigaData;
  static Injected<HomeData> get home => _homeData;
  static Injected<SingleData> get single => _singleData;
  static Injected<BattleData> get battle => _battleData;
}

final _cobaSatuData = RM1.inj(CobaSatuData(), Ctrl.cobaSatu.init);
final _cobaDuaData = RM1.inj(CobaDuaData(), Ctrl.cobaDua.init);
final _cobaTigaData = RM1.inj(CobaTigaData(), Ctrl.cobaTiga.init);
final _homeData = RM1.inj(HomeData(), () => Ctrl.home.init);
final _singleData = RM1.inj(SingleData(), () => Ctrl.single.init);
final _battleData = RM1.inj(BattleData(), () => Ctrl.battle.init);
