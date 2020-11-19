import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathFoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;

  Review(this.pathFoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEstrellas, this.textoComentario);

  @override
  Widget build(BuildContext context) {

    final foto = Container(
      margin:EdgeInsets.only(
        top: 10,
        right: 10
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
              pathFoto
          ),
          fit: BoxFit.cover
        )
      ),



    );
    final nombreUsuario = Container(
      child: Text(
        textoNombreUsuario,
            style: TextStyle(
          fontFamily: "Lato",
          fontSize: 22,
      ),
      ),
    );

    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text(
        textoResumenUsuario,
        style: TextStyle(
          fontFamily: "Lato",
          color: Colors.black54
        ),
      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 18,
      ),
    );

    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
        size: 18,
      ),
    );
    List<Container> estrellas = new List();
    for(int i=0; i<5; i++){
      if(i < cantidadEstrellas){
        estrellas.add(estrella);
      }
      else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaEstrellas = Row(
      children: estrellas,
    );

    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filaEstrellas
      ],
    );

    final Comentario = Container(
      child: Text(
          textoComentario,
        style: TextStyle(
          fontFamily: "Lato",
        ),
      ),
    );

    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        filaResumen,
        Comentario
      ],
    );

    final review = Row(
      children: <Widget>[
        foto,
        columnaReview
      ],
    );

  return review;
      }
  }
