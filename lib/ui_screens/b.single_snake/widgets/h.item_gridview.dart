part of '../_index.dart';

class SingleSnakeItemGridView extends StatelessWidget {
  const SingleSnakeItemGridView({Key? key}) : super(key: key);

  Widget? itemX(int z) {
    switch (z) {
      case 0:
        return const SingleSnakeItem(z: 0);
      case 1:
        return const SingleSnakeItem(z: 1);
      case -1:
        return const SingleSnakeItem(z: -1);
      case 2:
        return const SingleSnakeItem(z: 2);
      case -2:
        return const SingleSnakeItem(z: -2);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return OnBuilder<List<List<int>>>.data(
      listenTo: _dt.rmSnake,
      builder: (data) => GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _dt.totalX),
        itemCount: _dt.totalX * _dt.totalY,
        itemBuilder: (context, index) {
          var z = 16;
          var indexX = index % _dt.totalX;
          var indexY = (index / _dt.totalX).floor();

          var isHeadSnake = (indexX == _dt.rmSnake.st[0][0]) && (indexY == _dt.rmSnake.st[0][1]);

          var isFood = (indexX == _dt.rmFoodX.st) && (indexY == _dt.rmFoodY.st);

          for (var item in _dt.rmSnake.st) {
            if (item[0] == indexX && item[1] == indexY) {
              z = -1;
            }
          }

          if (isFood) {
            z = 0;
          } else if (isHeadSnake) {
            z = 1;
          }

          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color.fromARGB(229, 126, 199, 0),
              ),
              margin: const EdgeInsets.all(0.5),
              child: itemX(z),
            ),
            onTap: () => _ct.onTapCoordinat(indexX, indexY),
          );
        },
      ),
    );
  }
}
