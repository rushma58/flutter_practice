import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/product_detail_repository.dart';

final productDetailProvider = FutureProvider((ref) async {
  final productDetailRepository = ref.watch(productDetailRepositoryProvider);
  return productDetailRepository.getProduct();
});

final selectedColorProvider = StateProvider<int>((ref) => 0);
