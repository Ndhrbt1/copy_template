part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductDetailAppbar()),
      floatingActionButton: ProductDetailFab(),
      body: OnBuilder.all(
        onError: (error, refreshError) => Text('$error'),
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        listenTo: _dt.rxProductDetail,
        onData: (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${data?.id}'),
              Text('${data?.name}'),
              Text('${data?.price}'),
              Text('${data?.qty}'),
              Text('${data?.createdAt}'),
              Text('${data?.updatedAt}'),
            ],
          ),
        ),
      ),
    );
  }
}
