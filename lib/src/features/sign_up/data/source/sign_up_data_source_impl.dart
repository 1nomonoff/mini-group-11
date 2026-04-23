import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';
import 'package:mini_group_11/src/features/sign_up/data/source/sign_up_data_source.dart';

class SignUpDataSourceImpl extends SignUpDataSource {
  @override
  Future<Either<Failure, void>> signUp({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final res = await Dio().post('url ', data: userInfo);

      if (res.statusCode! >= 200 && res.statusCode! < 300) {
        await GetStorage().write('token', res.data['token']);
        return Right('');
      } else {
        throw Exception();
      }
    } on SocketException catch (e) {
      throw SocketException(e.message);
    } on TimeoutException catch (e) {
      throw TimeoutException(e.message);
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } catch (e) {
      throw Exception(e);
    }
  }
}
