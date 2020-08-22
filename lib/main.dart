import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pokedetails.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal[600],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map pokeData;
  fetchData() async {
    http.Response response = await http.get("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    setState(() {
      pokeData = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Poke App",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        actions: [
          new IconButton(icon: new Icon(Icons.search,size: 25,color: Colors.white,),onPressed: (){},)
        ],
      ),
      drawer: new Drawer(),
      body: pokeData==null ? new Center(
        child: new CircularProgressIndicator(),
      ) :  new GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
          ),
          itemCount: 151,
          itemBuilder: (context , index)=>
              new Container(
                //padding:const EdgeInsets.all(5),
                child: new GestureDetector(
                  child: new Card(
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    elevation: 5,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new Image.network(pokeData["pokemon"][index]["img"]),
                        new Text(pokeData["pokemon"][index]["name"],style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PokeDetails(pokeName:pokeData["pokemon"][index]["name"] , pokeImg: pokeData["pokemon"][index]["img"],pokeCandy: pokeData["pokemon"][index]["candy"],pokeHt: pokeData["pokemon"][index]["height"],pokeWt: pokeData["pokemon"][index]["weight"],pokeWeak1: pokeData["pokemon"][index]["weaknesses"][0],pokeWeak2: pokeData["pokemon"][index]["weaknesses"][1],pokeWeak3: pokeData["pokemon"][index]["weaknesses"][2], pokeWeak4: pokeData["pokemon"][index]["weaknesses"][3],pokeTy1: pokeData["pokemon"][index]["type"][0],pokeTy2: pokeData["pokemon"][index]["type"][1],pokeNext1: pokeData["pokemon"][index]["next_evolution"][0]["name"],pokeNext2: pokeData["pokemon"][index]["next_evolution"][0]["name"],)));
                  },
                ),
              )
      )
    );
  }
}

