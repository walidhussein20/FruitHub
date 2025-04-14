import 'package:fruites_e_commerce/core/services/database_service.dart';
import 'package:fruites_e_commerce/core/services/firebase_auth_services.dart';
import 'package:fruites_e_commerce/core/services/firestore_services.dart';
import 'package:fruites_e_commerce/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruites_e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DatabaseService>(FirestoreService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );
}
