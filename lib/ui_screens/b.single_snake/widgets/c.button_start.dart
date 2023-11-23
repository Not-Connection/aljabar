part of '../_index.dart';

class SingleSnakeBtnStart extends StatelessWidget {
  const SingleSnakeBtnStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => TextButton.icon(
        label: _dt.rmIsRunning.st ? const Text('stop') : const Text('start'),
        icon: Icon(
          !_dt.rmIsRunning.st ? Icons.play_arrow : Icons.stop,
          color: !_dt.rmIsRunning.st ? Colors.green : Colors.red,
        ),
        onPressed: () {
          if (!_dt.rmIsRunning.st) {
            _ct.getStart();
          } else {
            _ct.stop();
          }
        },
      ),
    );
  }
}
