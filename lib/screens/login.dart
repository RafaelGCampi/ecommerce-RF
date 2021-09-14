import 'package:flutter/material.dart';
import 'package:eccommerce_rf/constants.dart';
import 'package:eccommerce_rf/screens/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/baixados.jpg"),
                  fit: BoxFit.scaleDown,
                  scale: 1,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /* Text(
                        "Entrar",
                        style: Theme.of(context).textTheme.headline4,
                      ), */
                      /* Text(
                        "SIGN UP",
                        style: Theme.of(context).textTheme.button,
                      ), */
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.alternate_email,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Email Address",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Informe o email corretamente.';
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                          validator: (value) {
                          if (value!.isEmpty) {
                              return 'Informa sua senha.';
                            } else if (value.length < 6) {
                              return 'Sua senha deve ter no mínimo 6 caracteres';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  
                ],
              ),
            ),
          ),
          FittedBox(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 25),
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kPrimaryColor,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Entrar",
                      /*  style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                                ), */
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}