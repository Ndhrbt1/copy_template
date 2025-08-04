part of '_index.dart';

class AuthRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from AuthRepo');
    return x;
  }

  Future<UserCredential> signInAnonymous() async {
    final anon = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(anon.user.toString());
    return anon;
  }

  Future signInByGoogle() async {
    UserCredential google;
    try {
      GoogleAuthProvider provider = GoogleAuthProvider().setCustomParameters({'prompt': 'select_account'});
      google = await FirebaseAuth.instance.signInWithPopup(provider);
      debugPrint(google.user.toString());
      return google;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<UserCredential> createEP(String email, String password) async {
    final create = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    debugPrint(create.user.toString());
    return create;
  }

  Future<UserCredential> signInEP(String email, String password) async {
    final signinEP = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    debugPrint(signinEP.user.toString());
    return signinEP;
  }

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
    debugPrint('you already signed out');
  }

  Future<void> deleteAccount() async {
    FirebaseAuth.instance.currentUser?.delete();
    debugPrint('user has been deleted');
  }
}
