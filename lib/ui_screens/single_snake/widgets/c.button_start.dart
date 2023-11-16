part of '../_index.dart';

class SingleSnakeBtnStart extends StatelessWidget {
  const SingleSnakeBtnStart({Key? key}) : super(key: key);

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => IconButton(
        icon: Icon(
          !dt.rmIsRunning.st ? Icons.play_arrow : Icons.stop,
          color: !dt.rmIsRunning.st ? Colors.green : Colors.red,
        ),
        onPressed: () {
          if (!dt.rmIsRunning.st) {
            ct.getStart();
          } else {
            ct.stop();
          }
        },
      ),
    );
  }
}
