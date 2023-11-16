part of '../_index.dart';

class SingleSnakeBtnPause extends StatelessWidget {
  const SingleSnakeBtnPause({Key? key}) : super(key: key);

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Visibility(
        visible: dt.rmIsRunning.st,
        child: IconButton(
          icon: Icon(
            Icons.pause,
            color: dt.rmIsPause.st ? Colors.green : Colors.orange,
          ),
          onPressed: !dt.rmIsRunning.st ? null : () => ct.pause(),
        ),
      ),
    );
  }
}
