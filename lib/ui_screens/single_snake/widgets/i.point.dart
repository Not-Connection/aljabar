part of '../_index.dart';

class SingleSnakePoint extends StatelessWidget {
  const SingleSnakePoint({Key? key}) : super(key: key);

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: OnReactive(
        () => Text(
          '${dt.rmPoint.st}',
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
