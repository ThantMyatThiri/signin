import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthService{
  //google sign in
  signInWithGoogle()async{
    final GoogleSignInAccount? currentUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication currentUserAuth = await currentUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: currentUserAuth.accessToken,
      idToken: currentUserAuth.idToken
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  
  }
}