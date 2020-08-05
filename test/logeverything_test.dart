import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logeverything/logeverything.dart';

void main() {
  const MethodChannel channel = MethodChannel('logeverything');

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
    expect(await Logeverything.platformVersion, '42');
  });
}
