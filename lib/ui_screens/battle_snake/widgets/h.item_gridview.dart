part of '../_index.dart';

class BattleSnakeItemGridView extends StatelessWidget {
  const BattleSnakeItemGridView({Key? key}) : super(key: key);

  Widget? itemX(int z) {
    switch (z) {
      case 0:
        return const BattleSnakeItem(z: 0);
      case 1:
        return const BattleSnakeItem(z: 1);
      case -1:
        return const BattleSnakeItem(z: -1);
      case 2:
        return const BattleSnakeItem(z: 2);
      case -2:
        return const BattleSnakeItem(z: -2);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return OnBuilder<List<List<int>>>.data(
      listenTo: _dt.rxSnakeBot,
      builder: (data) => GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _dt.totalX),
        itemCount: _dt.totalX * _dt.totalY,
        itemBuilder: (context, index) {
          var z = 9;
          var indexX = index % _dt.totalX;
          var indexY = (index / _dt.totalX).floor();

          var isHeadSnake = (indexX == _dt.rxSnake1.st[0][0]) && (indexY == _dt.rxSnake1.st[0][1]);
          var isHeadSnakeBot = (indexX == _dt.rxSnakeBot.st[0][0]) && (indexY == _dt.rxSnakeBot.st[0][1]);
          var isFood = (indexX == _dt.rxFoodX.st) && (indexY == _dt.rxFoodY.st);

          for (var item in _dt.rxSnake1.st) {
            if (item[0] == indexX && item[1] == indexY) {
              z = -1;
            }
          }

          for (var item in _dt.rxSnakeBot.st) {
            if (item[0] == indexX && item[1] == indexY) {
              z = -2;
            }
          }

          if (isFood) {
            z = 0;
          } else if (isHeadSnake) {
            z = 1;
          } else if (isHeadSnakeBot) {
            z = 2;
          }

          return InkWell(
            child: Container(
              // color: Colors.blue,
              // margin: const EdgeInsets.all(3),
              child: itemX(z),
            ),
            onTap: () => _ct.onTapCoordinat(indexX, indexY),
          );
        },
      ),
    );
  }
}
