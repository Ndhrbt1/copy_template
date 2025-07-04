part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  Serv.sample.init();
  Serv.product.init();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  logx.wtf('inits success');
}
