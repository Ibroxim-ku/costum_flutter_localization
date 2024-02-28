import 'package:costum_flutter_localization/settings/local_notifier.dart';
import 'package:flutter/material.dart';

class InheritedLocalNotifier extends InheritedNotifier<LocalController> {
  const InheritedLocalNotifier({
    required LocalController localController,
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          notifier: localController,
          child: child,
        );

  static LocalController? maybeOf(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<InheritedLocalNotifier>()
          ?.notifier;
    } else {
      final inhw = context
          .getElementForInheritedWidgetOfExactType<InheritedLocalNotifier>()
          ?.widget;

      return inhw is InheritedLocalNotifier ? inhw.notifier : null;
    }
  }
}
