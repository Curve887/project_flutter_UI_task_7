import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter_ui/screens/login.dart';
import 'package:project_flutter_ui/screens/register.dart';

class OnBord extends StatefulWidget {
  const OnBord({super.key});

  @override
  State<OnBord> createState() => _OnBordState();
}

class _OnBordState extends State<OnBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/b5af/9daa/4d862790a8f360a2fb134c60f921ae28?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=m-Jr2uozbPz~Eh1JsNYEK4sEprUwM94ZvCkAS8xL2zvqBJsa3ZJ1YaQ2aD5SWSeUalD8Ud9Sy7zXRwsBIYaC2mcizCUNFlQAOgX0JE2QU9DsdLjXCAbda7GeZd~3j-A4wF9tnPEf6nEsvFL~euR0y4RuBu8l6qjDnZU912nuN3-Wf4WCJyX5JvlB8yP0tg28tOtSDVoiN6DhnyAjgFb~FDpVvDzmsTP2KUmWcCk3A6TigXN664Ns7OhkmR5Bg7s2YMwVGw5JuNHgCQzhIu94sIzT-O1bND8EDys-3FXNGvA371DoleR60uCcVZZ2VvJmc4kOUCH3E2qyukUJQWwUTQ__',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 260, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'UCARE',
                    style: TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 0),
                          blurRadius: 10.0,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Invest in your youthful face',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 140,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 140,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
