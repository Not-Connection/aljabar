import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.single.data.dart';
part 'b.single.ctrl.dart';
part 'c.single.view.dart';
part 'widgets/a.single.appbar.dart';
part 'widgets/b.single.fab.dart';
part 'widgets/c.single.charlie.dart';
part 'widgets/d.single.delta.dart';
part 'widgets/e.single.echo.dart';

SingleData get _dt => Data.single.st;
SingleCtrl get _ct => Ctrl.single;

// static SingleCtrl get single => SingleCtrl();
// final _singleData = RM1.inj(SingleData(), Ctrl.single.init);
// static Injected<SingleData> get single => _singleData;
// export 'single/_index.dart';

