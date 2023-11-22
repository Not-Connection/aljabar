part of '../_index.dart';

class BattleSnakeItem extends StatelessWidget {
  final int z;
  const BattleSnakeItem({
    this.z = 0,
    Key? key,
  }) : super(key: key);

  String getPathImage(int z) {
    if (z == 1) {
      return _dt.headSnake1;
    }
    if (z == 2) {
      return _dt.headSnakeBot;
    } else {
      return _dt.imageApple;
    }
  }

  int getRotate(String direction) {
    switch (direction) {
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
                quarterTurns: z == 0
                    ? 0
                    : getRotate(
                        z == 1 ? _dt.rxArahSnake1.st : _dt.rxArahSnakeBot.st,
                      ),
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
          borderRadius: BorderRadius.circular(5),
          color: z == -1 ? Colors.green : Colors.lightGreen.shade300,
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
