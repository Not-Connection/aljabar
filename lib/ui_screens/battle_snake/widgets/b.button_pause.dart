part of '../_index.dart';

class BattleSnakeBtnPause extends StatelessWidget {
  const BattleSnakeBtnPause({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Visibility(
        visible: _dt.rxIsRunning.st,
        child: OutlinedButton.icon(
          onPressed: !_dt.rxIsRunning.st ? null : () => _ct.isPause(),
          icon: Icon(
            Icons.pause,
            color: _dt.rxIsPause.st ? Colors.green : Colors.orange,
          ),
          label: _dt.rxIsPause.st ? const Text('resume') : const Text('pause'),
        ),
      ),
    );
  }
}
