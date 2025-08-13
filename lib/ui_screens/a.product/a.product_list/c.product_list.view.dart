part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductListAppbar()),
      floatingActionButton: ProductListFab(),

      body: OnBuilder.all(
        listenTo: _dt.rxProductList,
        onWaiting: () => Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => Text('$error'),
        onData: (data) => Column(
          children: [
            ...List.generate(
              data.length,
              (index) => Card(
                child: ListTile(
                  leading: SizedBox(width: 50, child: Image.network(data[index].imageUrl)),
                  title: Text(data[index].name),
                  subtitle: Text(data[index].id),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          _ct.deleteDoc(data[index].id);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                  onTap: () {
                    _ct.setSelectedId(data[index].id);
                    nav.to(Routes.productDetail);
                  },
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                _sva.deleteAccount();
              },
              child: Text("Delete Button"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _sva.signOut();
              },
              child: Text("SignOut Button"),
            ),
          ],
        ),
      ),
    );
  }
}
