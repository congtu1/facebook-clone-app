import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../utilities/constants/api_constants.dart';
import '../../models/account/login/login_request_model.dart';
import '../../models/account/login/login_response_model.dart';
import '../../models/core/api_response_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(ApiConstants.login)
  Future<ApiResponseModel<LoginResponseModel>> login(
    @Body() LoginRequestModel loginRequestModel,
  );

  @POST(ApiConstants.logout)
  Future<ApiResponseModel> logout();
}
