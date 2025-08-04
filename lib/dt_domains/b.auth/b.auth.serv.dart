part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
    // _pv.rxUser.subscription = FirebaseAuth.instance.authStateChanges().listen((event) => _pv.rxUser.st = event);
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(AuthServ, 'rxCounter setState success');
  }

  // responseAuthStates(User? user) async {
  //   if (nav.routeData.location == '/login' || nav.routeData.location == '/register') {
  //     if (user != null) {
  //       nav.toReplacement(Routes.productList);
  //     }
  //   } else {
  //     if (user == null) {
  //       nav.toAndRemoveUntil(Routes.login);
  //     }
  //   }
  // }

  Future<UserCredential> signInAnonymous() async {
    return _rp.signInAnonymous();
  }

  Future signInByGoogle() async {
    return _rp.signInByGoogle();
  }

  Future<UserCredential> createEP(String email, String password) async {
    return _rp.createEP(email, password);
  }

  Future<UserCredential> signInEP(String email, String password) async {
    return _rp.signInEP(email, password);
  }

  Future<void> signOut() async {
    _rp.signOut();
  }

  Future<void> deleteAccount() async {
    _rp.deleteAccount();
  }
}
