part of '../_index.dart';

class SingleSnakeItemGridView extends StatelessWidget {
  const SingleSnakeItemGridView({Key? key}) : super(key: key);

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeData.st;

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
      listenTo: dt.rmSnake,
      builder: (data) => GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: dt.totalX),
        itemCount: dt.totalX * dt.totalY,
        itemBuilder: (context, index) {
          var z = 16;
          var indexX = index % dt.totalX;
          var indexY = (index / dt.totalX).floor();

          var isHeadSnake = (indexX == dt.rmSnake.st[0][0]) && (indexY == dt.rmSnake.st[0][1]);

          var isFood = (indexX == dt.rmFoodX.st) && (indexY == dt.rmFoodY.st);

          for (var item in dt.rmSnake.st) {
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
              // color: const Color.fromARGB(229, 126, 199, 0),
              child: itemX(z),
            ),
            onTap: () => ct.onTapCoordinat(indexX, indexY),
          );
        },
      ),
    );
  }
}
