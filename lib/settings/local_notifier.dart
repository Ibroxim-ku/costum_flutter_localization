import 'package:flutter/material.dart';

enum Language {
  en,
  uz,
  ru,
}

final localController = LocalController();

class LocalController with ChangeNotifier {
  String _appLocale = "ru";

  // ignore: unrelated_type_equality_checks
  Locale get appLocale => _appLocale == Language.uz.name
      ? const Locale("uz", "UZ")
      // ignore: unrelated_type_equality_checks
      : _appLocale == Language.ru.name
          ? const Locale("ru", "RU")
          : const Locale("en", "US");

  void changeLang(Language language) {
    _appLocale = language.name;
    notifyListeners();
  }
}
