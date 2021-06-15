import 'package:dartz/dartz.dart';
import 'package:firebase_authentor/src/constants/value.objects.dart';

import '/src/constants/auth.failures.dart';

///{@template}
///Authenticator Repository Interface
abstract class IAuthFacade {
  Future<Either<Authfailures, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<Authfailures, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<Authfailures, Unit>> signInWithGoogle();
  Future<void> signOut();
}
