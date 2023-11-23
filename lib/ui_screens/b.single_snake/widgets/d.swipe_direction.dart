part of '../_index.dart';

class SingleSnakeSwipeDirection extends StatelessWidget {
  const SingleSnakeSwipeDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleGestureDetector(
      onVerticalSwipe: (details) {
        if (details == SwipeDirection.up) {
          _ct.changeDirection('up');
        }
        if (details == SwipeDirection.down) {
          _ct.changeDirection('down');
        }
      },
      onHorizontalSwipe: (details) {
        if (details == SwipeDirection.right) {
          _ct.changeDirection('right');
        }
        if (details == SwipeDirection.left) {
          _ct.changeDirection('left');
        }
      },
      child: const SingleSnakeLayoutBuilder(),
    );
  }
}
