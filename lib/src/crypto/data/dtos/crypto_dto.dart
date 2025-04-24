import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_dto.freezed.dart';
part 'crypto_dto.g.dart';

@freezed
abstract class CryptoDto with _$CryptoDto {
  factory CryptoDto({
    required String name,
    required String symbol,
    required num price,
    required String image,
  }) = _CryptoDto;
  factory CryptoDto.fromJson(Map<String, dynamic> json) => _$CryptoDtoFromJson(json);
}
