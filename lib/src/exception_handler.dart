import 'dart:developer';

import 'package:dio/dio.dart';

import 'deta_exception.dart';

DetaException detaExceptionHandler(Object e) {
  final Exception err = e as Exception;

  DetaException exc = DetaException(message: err.toString());

  if (err is DioError) {
    if (err.type == DioErrorType.response) {
      var errors = err.response?.data['error'] as List;
      exc.copyWith(message: errors.join(", "));
    }

    // general err
    else {
      exc.copyWith(message: err.message);
    }
  }

  log(exc.toString());

  return exc;
}
