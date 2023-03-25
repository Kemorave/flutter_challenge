import 'package:get/get.dart';

import '../dto/loginResponceDTO.dart';
import 'base_repository.dart';

class UserRepository extends BaseRepository {
  UserRepository({required super.apiUrl});

  Future<LoginResponceDTO> login(String email, String password) async {
    var res = await client
        .post("/api/auth/signin", {'username': email, 'password': password});
    return LoginResponceDTO.fromJson(res.body);
  }

  Future<Response> register(String email, String password) async {
    var res = await client.post("/api/auth/signup",
        {'username': email, 'email': email, 'password': password});
    return res;
  }

  Future<String?> getUserContent() async {
    var res = await client.httpClient.get("/api/test/user");
    return (res.bodyString);
  }

  dispose() => client.dispose();
}
