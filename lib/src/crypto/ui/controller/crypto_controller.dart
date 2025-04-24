import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:test_crypto/src/crypto/data/dtos/crypto_dto.dart';
import 'package:test_crypto/src/crypto/data/repositories/i_crypto_repository.dart';

class CryptoController {
  final ICryptoRepository repository;
  CryptoController(this.repository);

  final cryptos = <CryptoDto>[].obs;
  final isLoading = false.obs;

  Future<void> fetchCryptoData() async {
    try {
      isLoading.value = true;
      if (kDebugMode) await Future.delayed(const Duration(milliseconds: 500));
      cryptos.value = await repository.fetchCryptoData();
    } catch (e) {
      debugPrintStack(label: 'Error fetching crypto data: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
