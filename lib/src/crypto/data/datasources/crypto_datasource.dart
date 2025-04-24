import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_crypto/src/crypto/data/datasources/i_crypto_datasource.dart';
import 'package:test_crypto/src/crypto/data/dtos/crypto_dto.dart';

class CryptoDatasource implements ICryptoDatasource {
  
  @override
  Future<List<CryptoDto>> fetchCryptoData() async {
    final path = 'assets/cryptos.json';
    String data = await rootBundle.loadString(path);
    final json = jsonDecode(data);

    return (json['cryptos'] as List)
        .map<CryptoDto>((e) => CryptoDto.fromJson(e))
        .toList()
        .cast<CryptoDto>();
  }
}
