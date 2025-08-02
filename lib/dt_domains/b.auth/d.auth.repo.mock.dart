part of '_index.dart';

class AuthRepoMock implements AuthRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from AuthRepoMock');
    return x;
  }
}