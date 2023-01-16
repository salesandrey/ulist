



import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ulistproject/main.dart' as app;

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("Adicionando uma nova lista - End to End - Integração", () {
    testWidgets("Adicionando Elementos no formulario de nova lista", (
        WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key("btAdd")));

      await tester.pumpAndSettle();

      await tester.enterText(
          find.byKey(const Key("inputName")), "Meus Desejos");

      await Future.delayed(Duration(seconds: 2));

      await tester.enterText(
          find.byKey(Key("inputDescription")), "Desejos para o ano de 2023");

      await Future.delayed(Duration(seconds: 2));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key("btInsert")));

      await tester.pumpAndSettle(const Duration(seconds: 5));

      expect(find.text("Meus Desejos"), findsOneWidget);

      await tester.pumpAndSettle(Duration(minutes: 1));
    });
  });
}