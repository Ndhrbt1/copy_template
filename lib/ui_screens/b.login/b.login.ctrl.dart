part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<UserCredential> signInAnonymous() async {
    return _sv.signInAnonymous();
  }

  Future signInByGoogle() async {
    return _sv.signInByGoogle();
  }

  Future<UserCredential> signInEP() async {
    return _sv.signInEP(_dt.rxEmail.value, _dt.rxPassword.value);
  }

  Future<void> signOut() async {
    _sv.signOut();
  }

  Future<void> deleteAccount() async {
    _sv.deleteAccount();
  }

  submit() => _dt.rxForm.submit();
}
