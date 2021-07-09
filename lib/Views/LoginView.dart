import 'package:bankapp3/Brand/Extensions.dart';
import 'package:flutter/material.dart';

import 'MainView.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: BrandColors.accentColor,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: BrandColors.backgroundColorVariant,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bienvenido",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Usuario",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Contraseña",
                        ),
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, MainView.routeName);
                      },
                      child: Container(
                          height: 40,
                          width: double.infinity,
                          child: Center(
                              child: Text("Ingresar",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white))))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
