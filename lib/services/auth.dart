import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pesh_brew/models/user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on firebase user
  GetUid? _userFromFirebaseUser(User user){
    // ignore: unnecessary_null_comparison
    return user != null ? GetUid(uid: user.uid) : null;
  }

  //auth change user stream

  Stream<GetUid?> get user{
    return _auth.authStateChanges()
    .map((User? user) => _userFromFirebaseUser(user!));
   
    
  }
  
  // sign in anon
  Future signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User?  user = result.user;
      return _userFromFirebaseUser(user!);

    }catch(e){
      print(e.toString());
      return null;
    }
  }
  
  //sign in with email n password

  //register with email n password
}




