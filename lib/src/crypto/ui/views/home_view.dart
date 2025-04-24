import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_crypto/src/crypto/ui/controller/crypto_controller.dart';
import 'package:test_crypto/src/crypto/ui/views/crypto_detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late CryptoController _controller;

  @override
  void initState() {
    _controller = Get.find<CryptoController>();
    _controller.fetchCryptoData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cryptos')),
      body: Column(
        children: [
          Obx(() {
            if (_controller.isLoading.value) {
              return Padding(
                padding: const EdgeInsets.only(top: 50),
                child: const Center(child: CircularProgressIndicator()),
              );
            } else if (_controller.cryptos.isEmpty) {
              return const SizedBox(height: 200, child: Center(child: Text('No data available')));
            }
            return Expanded(
              child: ListView.builder(
                itemCount: _controller.cryptos.length,
                itemBuilder: (context, index) {
                  final item = _controller.cryptos[index];
                  return ListTile(
                    onTap: () => Get.to(() => CryptoDetailView(crypto: item)),
                    // leading: CachedNetworkImage(
                    //   imageUrl: item.image,
                    //   placeholder: (context, url) => CircularProgressIndicator(),
                    //   errorWidget: (context, url, error) => Icon(Icons.error),
                    // ),
                    title: Text(item.name),
                    subtitle: Text(item.symbol),
                    trailing: Text(
                      '\$${item.price.toStringAsFixed(2)}',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
