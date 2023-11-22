part of '../_index.dart';

class BattleSnakePoint extends StatelessWidget {
  const BattleSnakePoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: OnReactive(
        () => Text(
          '${_dt.rxPoint.st}',
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
