part of '_index.dart';

class AuthRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from AuthRepo');
    return x;
  }
}