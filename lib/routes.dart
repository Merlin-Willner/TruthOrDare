import 'package:truthordare/about/about.dart';
import 'package:truthordare/profile/profile.dart';
import 'package:truthordare/login/login.dart';
import 'package:truthordare/topics/topics.dart';
import 'package:truthordare/home/home.dart';
import 'package:truthordare/CivilizedMode/CivilizedMode.dart';
import 'package:truthordare/PartyMode/PartyMode.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
  '/Civilized': (context) => const CivilizedModeScreen(),
  '/Party': (context) => const PartyModeScreen(),
};