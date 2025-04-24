import 'package:test_crypto/src/crypto/data/dtos/crypto_dto.dart';

abstract class ICryptoRepository {
  Future<List<CryptoDto>> fetchCryptoData();
}
