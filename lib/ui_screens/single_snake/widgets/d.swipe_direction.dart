part of '../_index.dart';

class SingleSnakeSwipeDirection extends StatelessWidget {
  const SingleSnakeSwipeDirection({Key? key}) : super(key: key);

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return SimpleGestureDetector(
      onVerticalSwipe: (details) {
        if (details == SwipeDirection.up) {
          ct.changeDirection('up');
        }
        if (details == SwipeDirection.down) {
          ct.changeDirection('down');
        }
      },
      onHorizontalSwipe: (details) {
        if (details == SwipeDirection.right) {
          ct.changeDirection('right');
        }
        if (details == SwipeDirection.left) {
          ct.changeDirection('left');
        }
      },
      child: const SingleSnakeLayoutBuilder(),
    );
  }
}
