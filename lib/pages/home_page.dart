import 'package:costum_flutter_localization/core/local/word.dart';
import 'package:costum_flutter_localization/settings/local_notifier.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(Words.welcome.tr(context)),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                localController.changeLang(Language.uz);
              },
              child: const Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}
