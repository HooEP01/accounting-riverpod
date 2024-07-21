import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  factory Contact({
    required bool success,
    required List<Message> messages,
    @Default(null) List<Item>? item,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
class Message with _$Message {
  factory Message({
    @Default('') String type,
    @Default('') String text,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Item with _$Item {
  factory Item({
    required int id,
    @Default('') @JsonKey(name: 'company_name') String companyName,
    @Default('') @JsonKey(name: 'other_name') String otherName,
    required List<Address> addresses,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Address with _$Address {
  factory Address({
    @Default('us') @JsonKey(name: 'country_code') String countryCode,
    required int id,
    @Default(true) @JsonKey(name: 'is_default_billing') bool isDefaultBilling,
    @Default(true) @JsonKey(name: 'is_default_shipping') bool isDefaultShipping,
    @Default('Bill & Shipping Address') String name,
    @Default('') String postcode,
    // @Default('') String state,
    @Default('') String street,
    String? state,
    @Default('value') String city,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
