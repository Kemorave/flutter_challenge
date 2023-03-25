
import 'repositories/user_repository.dart';

class UnitOfWork {
  final String baseUrl;
  UnitOfWork._(this.baseUrl);
  static UnitOfWork production() =>
      UnitOfWork._('https://kemo-auth-examp.glitch.me/');
  static UnitOfWork staging() =>
      UnitOfWork._('https://kemo-auth-examp.glitch.me/');
  late UserRepository userRepository = UserRepository(apiUrl: baseUrl);
  dispose() {
    userRepository.dispose();
  }
}
