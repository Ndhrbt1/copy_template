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
}
