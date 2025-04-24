// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CryptoDto {

 String get name; String get symbol; num get price; String get image;
/// Create a copy of CryptoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoDtoCopyWith<CryptoDto> get copyWith => _$CryptoDtoCopyWithImpl<CryptoDto>(this as CryptoDto, _$identity);

  /// Serializes this CryptoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoDto&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,price,image);

@override
String toString() {
  return 'CryptoDto(name: $name, symbol: $symbol, price: $price, image: $image)';
}


}

/// @nodoc
abstract mixin class $CryptoDtoCopyWith<$Res>  {
  factory $CryptoDtoCopyWith(CryptoDto value, $Res Function(CryptoDto) _then) = _$CryptoDtoCopyWithImpl;
@useResult
$Res call({
 String name, String symbol, num price, String image
});




}
/// @nodoc
class _$CryptoDtoCopyWithImpl<$Res>
    implements $CryptoDtoCopyWith<$Res> {
  _$CryptoDtoCopyWithImpl(this._self, this._then);

  final CryptoDto _self;
  final $Res Function(CryptoDto) _then;

/// Create a copy of CryptoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? symbol = null,Object? price = null,Object? image = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CryptoDto implements CryptoDto {
   _CryptoDto({required this.name, required this.symbol, required this.price, required this.image});
  factory _CryptoDto.fromJson(Map<String, dynamic> json) => _$CryptoDtoFromJson(json);

@override final  String name;
@override final  String symbol;
@override final  num price;
@override final  String image;

/// Create a copy of CryptoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoDtoCopyWith<_CryptoDto> get copyWith => __$CryptoDtoCopyWithImpl<_CryptoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoDto&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,price,image);

@override
String toString() {
  return 'CryptoDto(name: $name, symbol: $symbol, price: $price, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CryptoDtoCopyWith<$Res> implements $CryptoDtoCopyWith<$Res> {
  factory _$CryptoDtoCopyWith(_CryptoDto value, $Res Function(_CryptoDto) _then) = __$CryptoDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String symbol, num price, String image
});




}
/// @nodoc
class __$CryptoDtoCopyWithImpl<$Res>
    implements _$CryptoDtoCopyWith<$Res> {
  __$CryptoDtoCopyWithImpl(this._self, this._then);

  final _CryptoDto _self;
  final $Res Function(_CryptoDto) _then;

/// Create a copy of CryptoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? symbol = null,Object? price = null,Object? image = null,}) {
  return _then(_CryptoDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
