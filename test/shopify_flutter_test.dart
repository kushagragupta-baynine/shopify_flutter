import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_flutter/shopify_config.dart';

void main() {
  group('ShopifyConfig API version', () {
    test('defaults to 2026-04', () {
      ShopifyConfig.setConfig(
        storefrontAccessToken: 'dummy-token',
        storeUrl: 'dummy-store.myshopify.com',
      );
      expect(ShopifyConfig.apiVersion, '2026-04');
    });

    test('accepts a custom version', () {
      ShopifyConfig.setConfig(
        storefrontAccessToken: 'dummy-token',
        storeUrl: 'dummy-store.myshopify.com',
        storefrontApiVersion: '2025-01',
      );
      expect(ShopifyConfig.apiVersion, '2025-01');
    });
  });
}
