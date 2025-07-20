part of '_index.dart';

class ProductListData {
  final rxTitle = 'Product List'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductList = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(initState: () => _ct.readList()),
  );

  final rxProductDetail = RM.injectFuture<Product?>(() => Future.value(null));
}
