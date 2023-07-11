
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future <dynamic> storageRead(FlutterSecureStorage secureStorage)async{

  FlutterSecureStorage secureStorage =FlutterSecureStorage();
  var Token=await  secureStorage.read(key: "Token");
  return Token;


}