part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<List<Product>> getColl() async {
    List<Product> product = [];
    final read = await FirebaseFirestore.instance.collection('product').get();

    for (var element in read.docs) {
      product.add(Product.fromMap(element.data()));
    }

    debugPrint(product.toString());

    return product;
  }

  readList() async {
    _dt.rxProductList.stateAsync = getColl();
  }
}
