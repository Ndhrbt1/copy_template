part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
