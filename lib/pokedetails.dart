import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokeDetails extends StatefulWidget {

  String pokeName;
  String pokeTy1;
  String pokeTy2;
  String pokeNext1;
  String pokeNext2;
  String pokeImg;
  String pokeHt;
  String pokeWt;
  String pokeCandy;
  String pokeWeak1;
  String pokeWeak2;
  String pokeWeak3;
  String pokeWeak4;

  PokeDetails({this.pokeCandy , this.pokeHt , this.pokeName , this.pokeWeak1 , this.pokeWeak2 , this.pokeWeak3 , this.pokeWeak4 , this.pokeWt, this.pokeImg , this.pokeTy1 , this.pokeTy2, this.pokeNext1 , this.pokeNext2});

  @override
  _PokeDetailsState createState() => _PokeDetailsState();
}

class _PokeDetailsState extends State<PokeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.pokeName,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 200)),
          new Image.network(widget.pokeImg),
          new Text(widget.pokeName , style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 5)),
          new Text("Types : "+widget.pokeTy1+" , "+widget.pokeTy2,style: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 5)),
          new Text("Height : "+widget.pokeHt,style: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 5)),
          new Text("Weight : "+widget.pokeWt,style: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 20)),
          new Text("Weaknesses",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 5)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new MaterialButton(
                child: new Text(widget.pokeWeak1,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  onPressed: (){},
                color: Colors.red[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
              new MaterialButton(
                child: new Text(widget.pokeWeak2,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                onPressed: (){},
                color: Colors.red[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
              new MaterialButton(
                child: new Text(widget.pokeWeak3,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                onPressed: (){},
                color: Colors.red[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
              new MaterialButton(
                child: new Text(widget.pokeWeak4,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                onPressed: (){},
                color: Colors.red[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(top: 20)),
          new Text("Next Evolution",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 5)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new MaterialButton(
                child: new Text(widget.pokeNext1,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                onPressed: (){},
                color: Colors.green[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
              new MaterialButton(
                child: new Text(widget.pokeNext2,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                onPressed: (){},
                color: Colors.green[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(top: 20)),
          new Text("Candy",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
          new Padding(padding: const EdgeInsets.only(top: 5)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new MaterialButton(
                child: new Text(widget.pokeCandy,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                onPressed: (){},
                color: Colors.blue[800],
                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: const EdgeInsets.all(5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
