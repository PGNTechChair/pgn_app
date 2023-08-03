import 'package:firebase_auth/firebase_auth.dart';
import 'package:pgn_app/models/user.dart';
import 'package:pgn_app/services/database.dart';


class AuthService
{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on FirebaseUser
  NewUser? _userFromFirebaseUser(User? user)
  {
    return user != null ? NewUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<NewUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in email and password
  Future signInWithEmailAndPassword(String email, String password) async
  {
    try
    {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );

      User? user = result.user;

      return _userFromFirebaseUser(user);

    }
    catch(e)
    {
      print(e.toString());
      return null;
    }
  }



  //register with email and password
  Future registerWithEmailAndPassword(String email, String password, String major, String year, String firstName, String lastName, String memberStatus
    ) async {
    try
    {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      User? user = result.user;

      //create a new document for the user with the uid
      await DatabaseService(uid: user!.uid).updateUserData(major,year,firstName,lastName, memberStatus);

      return _userFromFirebaseUser(user);
    }
    catch(e)
    {
      print(e.toString());
      return null;
    }
  }


  //sign out
  Future signOut() async
  {
    try
    {
      return await _auth.signOut();
    }
    catch(e)
    {
      print(e.toString());
      return null;
    }
  }


}