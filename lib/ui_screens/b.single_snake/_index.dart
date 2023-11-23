import 'dart:async';
import 'dart:math';

import 'package:aljabar/app/utils/_index.dart';
import 'package:aljabar/xtras/_index.dart';
import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'a.single_snake.data.dart';
part 'b.single_snake.ctrl.dart';
part 'c.single_snake.view.dart';
part 'widgets/a.appbar.dart';
part 'widgets/b.button_pause.dart';
part 'widgets/c.button_start.dart';
part 'widgets/d.swipe_direction.dart';
part 'widgets/e.layout_builder.dart';
part 'widgets/f.body.dart';
part 'widgets/g.background_snake.dart';
part 'widgets/h.item_gridview.dart';
part 'widgets/i.point.dart';
part 'widgets/j.snake.image_landscape.dart';
part 'widgets/k.snake.image_potrait.dart';
part 'widgets/l.snake_item.dart';

SingleSnakeData get _dt => Data.singleSnake.st;
SingleSnakeCtrl get _ct => Ctrl.singleSnake;
