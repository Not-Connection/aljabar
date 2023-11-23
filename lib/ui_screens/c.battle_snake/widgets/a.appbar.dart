part of '../_index.dart';

class BattleSnakeAppbar extends StatelessWidget {
  const BattleSnakeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_dt.title),
      actions: [
        MediaQuery.of(context).size.width > 600
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BattleSnakeBtnPause(),
                  SizedBox(width: 5),
                  BattleSnakeBtnStart(),
                  SizedBox(width: 5),
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
