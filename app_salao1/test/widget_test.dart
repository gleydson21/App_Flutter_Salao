import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Teste de incremento do contador', (WidgetTester tester) async {
    // Constrói o widget do aplicativo e dispara uma atualização do widget.
    //await tester.pumpWidget(MyApp());

    // Verifica que o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toca no ícone '+' e dispara outra atualização do widget.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que o contador foi incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
