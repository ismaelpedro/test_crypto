import 'package:test_crypto/src/crypto/data/datasources/i_crypto_datasource.dart';
import 'package:test_crypto/src/crypto/data/dtos/crypto_dto.dart';
import 'package:test_crypto/src/crypto/data/repositories/i_crypto_repository.dart';

class CryptoRepository implements ICryptoRepository {
  final ICryptoDatasource datasource;

  CryptoRepository(this.datasource);

  @override
  Future<List<CryptoDto>> fetchCryptoData() async {
    return await datasource.fetchCryptoData();
  }
}
