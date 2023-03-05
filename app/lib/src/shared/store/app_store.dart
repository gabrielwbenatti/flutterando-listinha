import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  final syncDate = ValueNotifier<DateTime?>(null);

  AppStore();

  void init() {
    //TODO: salvar os dados na base local
  }

  void save() {
    //TODO: salvar os dados na base local
  }

  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  void setSyncDate(DateTime date) {
    syncDate.value = date;
    save();
  }
}
