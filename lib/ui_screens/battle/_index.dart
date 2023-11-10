import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.battle.data.dart';
part 'b.battle.ctrl.dart';
part 'c.battle.view.dart';
part 'widgets/a.battle.appbar.dart';
part 'widgets/b.battle.fab.dart';
part 'widgets/c.battle.charlie.dart';
part 'widgets/d.battle.delta.dart';
part 'widgets/e.battle.echo.dart';

BattleData get _dt => Data.battle.st;
BattleCtrl get _ct => Ctrl.battle;

// static BattleCtrl get battle => BattleCtrl();
// final _battleData = RM1.inj(BattleData(), Ctrl.battle.init);
// static Injected<BattleData> get battle => _battleData;
// export 'battle/_index.dart';

