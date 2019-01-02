import 'dart:async';

class MyBloc {
  int _counter = 0;

  final StreamController<int> _ctrl = StreamController<int>();

  Stream<int> get output => _ctrl.stream;

  Sink<int> get input => _ctrl.sink;

  int increment() {
    _counter++;
    input.add(_counter);
    return _counter;
  }

  void dispose() {
    _ctrl.close();
  }
}
