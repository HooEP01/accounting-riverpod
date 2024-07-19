// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      success: json['success'] as bool,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      item: (json['item'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
      'item': instance.item,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      type: json['type'] as String? ?? '',
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: (json['id'] as num).toInt(),
      companyName: json['company_name'] as String? ?? '',
      otherName: json['other_name'] as String? ?? '',
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'other_name': instance.otherName,
      'addresses': instance.addresses,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      countryCode: json['country_code'] as String? ?? 'us',
      id: (json['id'] as num).toInt(),
      isDefaultBilling: json['is_default_billing'] as bool? ?? true,
      isDefaultShipping: json['is_default_shipping'] as bool? ?? true,
      name: json['name'] as String? ?? 'Bill & Shipping Address',
      postcode: json['postcode'] as String? ?? '',
      street: json['street'] as String? ?? '',
      state: json['state'] as String?,
      city: json['city'] as String? ?? 'value',
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'id': instance.id,
      'is_default_billing': instance.isDefaultBilling,
      'is_default_shipping': instance.isDefaultShipping,
      'name': instance.name,
      'postcode': instance.postcode,
      'street': instance.street,
      'state': instance.state,
      'city': instance.city,
    };
