// ignore_for_file: prefer_const_constructors

import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/config/theme.dart';
import 'package:web_portfolio/sections/header/widgets/button.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppTheme.secondaryBackgroundColor,
      expandedHeight: 400,
      collapsedHeight: 400,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        title: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Olá, seja bem vindo(a) ao meu portfolio.',
                    style: GoogleFonts.rockSalt(
                        color: AppTheme.textPrimaryColordark)),
                Text(
                  'Eu me chamo Carlos Eduardo, tenho 26 anos e acho fascinante o que algumas linhas de códigos podem fazer. Atualmente curso Análise de sistemas e sou estagiário de TI na universidade Augusto Motta, mais conhecida como Unisuam.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
                Divider(
                  thickness: 2.0,
                  color: AppTheme.textPrimaryColordark,
                ),
                Text(
                  'Para conhecer mais sobre meus projetos ou trajetória, confira abaixo no Github e linkedin',
                  style: TextStyle(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconHeader(
                        title: 'GitHub',
                        icon: Icon(DevIcons.gitPlain),
                        voidCallback: () async {
                          //Navigator.push(
                          //context,
                          //MaterialPageRoute(
                          //builder: (context) => MyHomePageMobile()));

                          const _urlGitHub = "https://github.com/Tklao";
                          if (!await launch(_urlGitHub)) {
                            throw 'Could not launch $_urlGitHub';
                          }
                        },
                      ),
                      VerticalDivider(),
                      IconHeader(
                        title: 'Linkedin',
                        icon: Icon(DevIcons.linkedinPlain),
                        voidCallback: () async {
                          const _urlLinkedin =
                              'https://www.linkedin.com/in/carlos-eduardo-9b03b4149/';
                          if (!await launch(_urlLinkedin)) {
                            throw 'Could not launch $_urlLinkedin';
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            )),
        background: const Image(
          image: AssetImage('../assets/images/perfil.png'),
          fit: BoxFit.contain,
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}
