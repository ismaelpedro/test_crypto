// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CryptoDto _$CryptoDtoFromJson(Map<String, dynamic> json) => _CryptoDto(
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  price: json['price'] as num,
  image: json['image'] as String,
);

Map<String, dynamic> _$CryptoDtoToJson(_CryptoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'price': instance.price,
      'image': instance.image,
    };
