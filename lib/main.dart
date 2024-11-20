import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detectar la plataforma y renderizar Material o Cupertino
    if (UniversalPlatform.isIOS) {
      return CupertinoApp(
        title: 'Login App',
        theme: CupertinoThemeData(
          primaryColor: CupertinoColors.activeBlue,
        ),
        home: CupertinoLoginPage(),
      );
    } else {
      return MaterialApp(
        title: 'Login App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MaterialLoginPage(),
      );
    }
  }
}

class CupertinoLoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Login'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: FlutterLogo(size: 100),
            ),
            // Username TextField
            CupertinoTextField(
              controller: usernameController,
              placeholder: 'Username',
              padding: EdgeInsets.all(16),
            ),
            SizedBox(height: 16),
            // Password TextField
            CupertinoTextField(
              controller: passwordController,
              placeholder: 'Password',
              obscureText: true,
              padding: EdgeInsets.all(16),
            ),
            SizedBox(height: 20),
            // Login Button
            CupertinoButton.filled(
              onPressed: () {
                // Acción del botón
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            // Forgot Password
            GestureDetector(
              onTap: () {
                // Acción para olvidó contraseña
              },
              child: Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  color: CupertinoColors.systemBlue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MaterialLoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: FlutterLogo(size: 100),
            ),
            // Username TextField
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Password TextField
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Login Button
            ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            // Forgot Password
            GestureDetector(
              onTap: () {
                // Acción para olvidó contraseña
              },
              child: Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
