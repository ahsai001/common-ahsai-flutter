import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:common_ahsai/common_ahsai.dart';

void main() {
  const MethodChannel channel = MethodChannel('common_ahsai');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CommonAhsai.platformVersion, '42');
  });
}
