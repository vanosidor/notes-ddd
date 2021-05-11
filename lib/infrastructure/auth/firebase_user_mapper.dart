import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:notes_ddd/domain/auth/user.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';

extension FirebaseUserDomainEx on firebase_auth.User {
  User toDomain() => User(id: UniqueId.fromUniqueString(uid));
}