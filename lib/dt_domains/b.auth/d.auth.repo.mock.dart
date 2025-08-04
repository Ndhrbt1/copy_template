part of '_index.dart';

class AuthRepoMock implements AuthRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from AuthRepoMock');
    return x;
  }

  @override
  Future<void> deleteAccount() {
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInAnonymous() {
    throw UnimplementedError();
  }

  @override
  Future signInByGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> createEP(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInEP(String email, String password) {
    throw UnimplementedError();
  }
}
