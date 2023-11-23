part of '../_index.dart';

class SingleSnakePoint extends StatelessWidget {
  const SingleSnakePoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: OnReactive(
        () => Text(
          '${_dt.rmPoint.st}',
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
