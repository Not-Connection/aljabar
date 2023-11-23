part of '../_index.dart';

class SingleSnakeBtnPause extends StatelessWidget {
  const SingleSnakeBtnPause({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Visibility(
        visible: _dt.rmIsRunning.st,
        child: TextButton.icon(
          label: _dt.rmIsPause.st ? const Text('resume') : const Text('pause'),
          icon: Icon(
            Icons.pause,
            color: _dt.rmIsPause.st ? Colors.green : Colors.orange,
          ),
          onPressed: !_dt.rmIsRunning.st ? null : () => _ct.pause(),
        ),
      ),
    );
  }
}
