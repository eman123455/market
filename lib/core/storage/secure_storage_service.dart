import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static const _storage = FlutterSecureStorage();
  static const _emailKey = 'secure_email';
  static const _passKey = 'secure_pass';

  Future<void> saveCredentials({
    required String email,
    required String pass,
  }) async {
    await _storage.write(key: _emailKey, value: email);
    await _storage.write(key: _passKey, value: pass);
  }

  Future<Map<String, dynamic>> readCredentials() async {
    final email = await _storage.read(key: _emailKey);
    final pass = await _storage.read(key: _passKey);
    return {'email': email, 'pass': pass};
  }
  Future<void> clearCredentials() async {
     await _storage.delete(key: _emailKey);
     await _storage.delete(key: _passKey);
  
  }
}
