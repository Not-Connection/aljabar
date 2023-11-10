part of '../_index.dart';

class BattleAppbar extends StatelessWidget {
  const BattleAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
