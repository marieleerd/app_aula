import 'package:flutter/material.dart';

import 'login_screen.dart';

class Dashbord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DASHBORD'),
        actions: <Widget>[
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Login()
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Icon(Icons.exit_to_app),
            ),
          )
        ],
      ),
      body: Column (
        children: <Widget>[
          _msgSuperiorTXT(),
          _imgCentral(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _ItemElemento('PACIENTES', Icons.accessibility_new,
                onClick: (){
                    debugPrint('pacientes');
                },),
              _ItemElemento('RESULTADOS', Icons.check_circle_outline,
                onClick: (){
                    debugPrint('resultados');
              },),
            ],
          )
        ],
      ),
    );
  }

  Widget _imgCentral(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Image.asset('imagens/check1.jpg'),
    );
  }

  Widget _msgSuperiorTXT(){
    return Container(
      //color: Colors.amberAccent,
      alignment: Alignment.topRight,
      padding: const EdgeInsets.all(8.0),
      child: Text('Checklist para o COVID-19', style: TextStyle(
        color: Colors.black.withOpacity(0.6),
        fontFamily: 'OpenSans',
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),),
    );
  }
}

class _ItemElemento extends StatelessWidget {

  final String titulo;
  final IconData icone;
  final Function onClick;

  _ItemElemento(this.titulo, this.icone, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        elevation: 10.0,
        child: InkWell(
          onTap: this.onClick(),
          child: Container(
            //color: Colors.amberAccent,
            width: 150,
            height: 70,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(this.icone, color: Colors.white),
                Text(this.titulo, style: TextStyle(color: Colors.white, fontSize: 16
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
