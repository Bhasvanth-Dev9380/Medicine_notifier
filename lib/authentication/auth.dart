import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<User?> signUpWithEmailAndPassword(String name, String email, String password, String imagePath) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      // Upload profile image to Firebase Storage
      File imageFile = File(imagePath);
      TaskSnapshot snapshot = await _storage.ref().child('profile_images/${user!.uid}').putFile(imageFile);
      String downloadUrl = await snapshot.ref.getDownloadURL();

      // Save user info to Firestore
      await _firestore.collection('users').doc(user.uid).set({
        'uid': user.uid,
        'name': name,
        'email': email,
        'profile_image': downloadUrl,
      });

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
