
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

import '../models/User.dart';

class AWSauthRepo {
  Future<String> getUser() async {
    try {
      final user = await Amplify.Auth.getCurrentUser();
      return user.userId;
    } catch (e) {
      print(e);
      return 'not signed in';
    }
  }

  Future<void> resetPassword(String username) async {
    try {
      await Amplify.Auth.resetPassword(
        username: username,
      ).then((value) => print(value));
    } on AuthException catch (e) {
      safePrint('Error resetting password: ${e.message}');
    }
  }

  Future<void> confirmUser({
    required String username,
    required String confirmationCode,
  }) async {
    try {
      await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
      ).then((value) => print(value));
    } on AuthException catch (e) {
      safePrint('Error confirming user: ${e.message}');
    }
  }

  Future<void> signIn(String email, String password) async {
    try {
      await Amplify.Auth.signIn(username: email, password: password)
          .then((value) => print(value));
    } catch (e) {
      print(e);
    }
  }

  Future<void> socialSignIn() async {
    try {
      await Amplify.Auth.signInWithWebUI(
        provider: AuthProvider.google,
      );
    } on AuthException catch (e) {
      safePrint('Error signing in: ${e.message}');
    }
  }

  Future<void> signUp(String email, String password, String userName) async {
    try {
      final userAttributes = {AuthUserAttributeKey.name: email};
      await Amplify.Auth.signUp(
              username: email,
              password: password,
              options: SignUpOptions(userAttributes: userAttributes))
          .then((value) => print(value));
    } on Exception {
      rethrow;
    }
  }
      static Future<void> save(User user) async {
    try {
      print(user);
      await Amplify.DataStore.save(user);
    } catch (e) {
     // logger.e(e);
      return null;
    }
  }


  Future<void> createUser(String email, String userName) async {

   

    try {
      final model = User(
          name: email,
          username: email,
       
          level: 1020,
          picture: "Lorem ipsum dolor sit amet");
      // final request = ModelMutations.create(model);

      // final response = await Amplify.API.mutate(request: request).response;

      // final createdUser = response.data;
      // if (createdUser == null) {
      //   safePrint('errors: ${response.errors}');
      //   return;
      // }

      await Amplify.DataStore.save<User>(model);
      // safePrint('Mutation result: ${createdUser.id}');
    } on ApiException catch (e) {
      safePrint('Mutation failed: $e');
    }
  }


// Future<void> signUpUser({
//   required String username,
//   required String password,
//   required String email,
// }) async {
//   try {
//     final userAttributes = {
//       AuthUserAttributeKey.email: email,
//     };
//     final result = await Amplify.Auth.signUp(
//       username: username,
//       password: password,
//       options: SignUpOptions(
//         userAttributes: userAttributes,
//       ),
//     );
//     await _handleSignUpResult(result);
//   } on AuthException catch (e) {
//     safePrint('Error signing up user: ${e.message}');
//   }
// }

// Future<void> _handleSignUpResult(SignUpResult result) async {
//   switch (result.nextStep.signUpStep) {
//     case AuthSignUpStep.confirmSignUp:
//       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
//       _handleCodeDelivery(codeDeliveryDetails);
//       break;
//     case AuthSignUpStep.done:
//       safePrint('Sign up is complete');
//       break;
//   }
// }

// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
//   safePrint(
//     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
//     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
//   );
// }
}