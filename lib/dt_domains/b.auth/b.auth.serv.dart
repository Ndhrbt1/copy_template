part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
    try {
      _pv.rxUser.subscription = FirebaseAuth.instance.authStateChanges().listen((event) => _pv.rxUser.st = event);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(AuthServ, 'rxCounter setState success');
  }

  // responseAuthStates(User? user) async {
  //   if (user != null) {
  //     // Jika user sudah login (baik setelah register atau login)
  //     // Cek dari mana user datang
  //     if (nav.routeData.location == '/register') {
  //       // Jika datang dari halaman register, arahkan ke login
  //       nav.toReplacement(Routes.login);
  //     } else {
  //       // Jika datang dari halaman lain, arahkan ke productList
  //       nav.toReplacement(Routes.productList);
  //     }
  //   } else {
  //     // Jika user belum login atau logout
  //     nav.toAndRemoveUntil(Routes.login);
  //   }
  //   debugPrint('response auth state triggered');
  // }

  responseAuthStates(User? user) async {
    if (nav.routeData.location == '/register') {
      if (user != null) {
        user = null;
        nav.toReplacement(Routes.login);
      }
    }

    if (nav.routeData.location == '/login') {
      if (user != null) {
        nav.toReplacement(Routes.productList);
      }
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.login);
      }
    }
    debugPrint('response auth state triggered');
  }

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
