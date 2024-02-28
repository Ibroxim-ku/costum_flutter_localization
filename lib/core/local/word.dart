import 'package:costum_flutter_localization/core/local/app_local.dart';
import 'package:flutter/material.dart';

extension MyWords on Words {
  String tr(BuildContext context) => AppLocalization.of(context).tr(name);
}

enum Words {
  welcome;
}
