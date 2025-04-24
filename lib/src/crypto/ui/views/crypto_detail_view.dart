import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_crypto/src/crypto/data/dtos/crypto_dto.dart';
import 'package:test_crypto/src/crypto/ui/controller/crypto_controller.dart';

class CryptoDetailView extends StatefulWidget {
  final CryptoDto crypto;
  const CryptoDetailView({super.key, required this.crypto});

  @override
  State<CryptoDetailView> createState() => _CryptoDetailViewState();
}

class _CryptoDetailViewState extends State<CryptoDetailView> {
  late CryptoController _controller;

  @override
  void initState() {
    _controller = Get.find<CryptoController>();
    super.initState();
  }

  Stream<num> get _stream =>
      Stream.periodic(const Duration(seconds: 5), (count) {
        final basePrice = widget.crypto.price;
        final variation = Random().nextBool() ? -0.1 : 0.1;

        final newPrice = basePrice * (1 + variation);

        return newPrice;
      }).take(10).asBroadcastStream();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.crypto.symbol)),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Text(
              widget.crypto.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          StreamBuilder(
            stream: _stream,
            builder: (_, value) {
              if (value.hasError) {
                return const Center(child: Text('Error fetching data'));
              }

              if (value.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              return Center(
                child: Text(
                  value.data?.toStringAsFixed(2) ?? '0.00',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
