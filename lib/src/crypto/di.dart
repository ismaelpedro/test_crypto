import 'package:get/get.dart';
import 'package:test_crypto/src/crypto/data/datasources/crypto_datasource.dart';
import 'package:test_crypto/src/crypto/data/datasources/i_crypto_datasource.dart';
import 'package:test_crypto/src/crypto/data/repositories/crypto_repository.dart';
import 'package:test_crypto/src/crypto/data/repositories/i_crypto_repository.dart';
import 'package:test_crypto/src/crypto/ui/controller/crypto_controller.dart';

abstract class CryptoDI {
  static void initDI() {
    Get.lazyPut<ICryptoDatasource>(() => CryptoDatasource());
    Get.lazyPut<ICryptoRepository>(() => CryptoRepository(Get.find()));
    Get.lazyPut<CryptoController>(() => CryptoController(Get.find()));
  }
}
