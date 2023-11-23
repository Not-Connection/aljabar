part of '../_index.dart';

class BattleSnakeBtnStart extends StatelessWidget {
  const BattleSnakeBtnStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => OutlinedButton.icon(
        autofocus: true,
        icon: Icon(
          !_dt.rxIsRunning.st ? Icons.play_arrow : Icons.stop,
          color: !_dt.rxIsRunning.st ? Colors.green : Colors.red,
        ),
        label: !_dt.rxIsRunning.st
            ? const Text(
                'play',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            : const Text('stop'),
        onPressed: () {
          if (!_dt.rxIsRunning.st) {
            _ct.getStart1();
            _ct.getStartBot();
          } else {
            _ct.stop();
          }
        },
      ),
    );
  }
}
