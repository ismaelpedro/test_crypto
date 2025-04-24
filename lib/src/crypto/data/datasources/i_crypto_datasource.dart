import 'package:test_crypto/src/crypto/data/dtos/crypto_dto.dart';

abstract class ICryptoDatasource {
  Future<List<CryptoDto>> fetchCryptoData();
}
