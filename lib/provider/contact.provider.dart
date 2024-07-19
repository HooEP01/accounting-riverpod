import 'package:accounting/model/contact.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact.provider.g.dart';

@riverpod
class ContactList extends _$ContactList {
  @override
  Future<List<Item>> build() async {
    return fetchContact();
  }

  Future<List<Item>> fetchContact({contactType = "success"}) async {
    var dio = Dio();
    await Future.delayed(const Duration(seconds: 2));

    if (kDebugMode) {
      print("Fetching contacts of type: $contactType");
    }

    try {
      var response = await dio.get('http://localhost:8080/contacts', queryParameters: {
        'type': contactType,
      });

      if (response.statusCode == 200) {
        final contact = Contact.fromJson(response.data);
        state = AsyncData(contact.item ?? []);
        return contact.item ?? [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Catch error: $e');
      }
    }

    state = const AsyncData([]);
    return [];
  }
}
