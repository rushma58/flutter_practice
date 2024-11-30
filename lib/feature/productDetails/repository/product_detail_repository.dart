import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/product_detail_api.dart';
import '../response/product_detail_response.dart';

final productDetailRepositoryProvider =
    Provider((ref) => ProductDetailRepository());

class ProductDetailRepository {
  Future<ProductDetailResponse?> getProduct() {
    return ProductDetailApi().getProduct();
  }
}
