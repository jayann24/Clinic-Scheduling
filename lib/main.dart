import 'package:clinic_scheduling/views/components/onboarding_screen.dart';
import 'package:flutter/material.dart';

// Views
import 'package:clinic_scheduling/views/admin/dashboard.dart';
import 'package:clinic_scheduling/views/components/login_screen.dart';
import 'package:clinic_scheduling/views/components/signup_screen.dart';
import 'package:clinic_scheduling/views/components/splash_screen.dart';
import 'package:clinic_scheduling/views/components/reset_password_screen.dart';

// Theme file (optional, for centralized color control)
import 'package:clinic_scheduling/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinic Scheduling',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, // easily switch to dark mode in the future
      theme: AppTheme.lightTheme, // light theme defined in a separate file
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/reset-password': (context) => const ResetPasswordScreen(),
        '/dashboard': (context) => const AdminDashboard(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const SplashScreen()),
    );
  }
}
