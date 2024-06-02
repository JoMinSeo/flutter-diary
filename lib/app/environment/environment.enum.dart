enum Environment {
  dev(type: "DEV"),
  prod(type: "PROD");

  final String type;
  // final String firebaseId;

  const Environment({
    required this.type,
    // required this.firebaseId,
  });

  String get dotFileName => switch (this) {
    dev => /*'.dev.env'*/ 'assets/env/dev.env',
    prod => 'assets/env/dev.env',
  };

  // String get openApiKey => switch (this) {
  //   dev => dotenv.env['OPENAPI_KEY']!,
  //   prod => dotenv.env['OPENAPI_KEY']!,
  // };

  // FirebaseOptions get firebaseOption => switch (this) {
  //   prod => prod_firebase.DefaultFirebaseOptions.currentPlatform,
  //   dev => dev_firebase.DefaultFirebaseOptions.currentPlatform,
  // };
}