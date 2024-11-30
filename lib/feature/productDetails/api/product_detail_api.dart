import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/feature/productDetails/response/product_detail_response.dart';

import '../../../core/constant/url.dart';
import '../../../core/helper/exception_handler.dart';
import '../../../core/helper/http_services.dart';

class ProductDetailApi {
  Future<ProductDetailResponse?> getProduct() async {
    ProductDetailResponse? productDetailResponse;
    Dio dio = HttpServices().getDioInstance();

    try {
      Response response = await dio.get(
        productDetailUrl,
      );
      if (response.statusCode == 200) {
        productDetailResponse = ProductDetailResponse.fromJson(response.data);
      }
    } catch (e) {
      if (e is DioException) {
        String errorMessage =
            DioExceptionHandler(exception: e).getErrorMessage();
        throw Exception(errorMessage);
      } else {
        debugPrint(e.toString());
      }
      return productDetailResponse;
    }
    return productDetailResponse;
  }
}
