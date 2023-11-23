part of '../_index.dart';

class SingleSnakeItem extends StatelessWidget {
  final int z;
  const SingleSnakeItem({
    this.z = 0,
    Key? key,
  }) : super(key: key);

  String getPathImage(int z) {
    if (z == 1) {
      return dt.headSnake;
    } else {
      return dt.imageApple;
    }
  }

  int getRotate(String arah) {
    switch (arah) {
      case 'up':
        return 2;
      case 'down':
        return 0;
      case 'right':
        return 3;
      case 'left':
        return 1;
    }
    return 0;
  }

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    if (z == 0 || z == 1 || z == 2) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          OnReactive(
            () => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          OnReactive(
            () => Positioned(
              top: -5,
              bottom: -5,
              left: -5,
              right: -5,
              child: RotatedBox(
                quarterTurns: z == 0 ? 0 : getRotate(dt.rmArah.st),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(getPathImage(z)),
                ),
              ),
            ),
          ),
        ],
      );
    }

    if (z == -1 || z == -2) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.green.shade900,
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
