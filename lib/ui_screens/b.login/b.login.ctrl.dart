part of '_index.dart';

class LoginCtrl {
  init() {
    logxx.i(LoginCtrl, '...');
    debugPrint('hi aku login');
  }

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<UserCredential> signInAnonymous() async {
    return _sv.signInAnonymous();
  }

  Future signInByGoogle() async {
    return _sv.signInByGoogle();
  }

  Future<UserCredential> signInEP() async {
    final userCredential = await _sv.signInEP(_dt.rxEmail.value, _dt.rxPassword.value);
    _pv.rxUser.setState((s) => userCredential.user);
    return userCredential;
  }

  Future<void> signOut() async {
    _sv.signOut();
  }

  Future<void> deleteAccount() async {
    _sv.deleteAccount();
  }

  submit() => _dt.rxForm.submit();
}
