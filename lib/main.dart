import 'package:flutter/material.dart';

void main() => runApp(MuestrarioApp());

class MuestrarioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Muestrario de Botones'),
        ),
        body: Container(
          color: Colors.amber[300],
          child: Center(
            
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 4/3,
              children: <Widget>[

                Muestra(
                  child: RaisedButton(
                  child: Text("Apretame!"),
                  onPressed: (){
                    print("apretado");
                  },
                ),
                text: 'Raised Button Clasico',
                ),

                Muestra(
                  child: RaisedButton(
                  child: Text("Apretame!"),
                  onPressed: (){
                    print("apretado");
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                ),
                text: 'Raised Button con Colores',
                ),

                Muestra(
                  child: RaisedButton(
                  child: Text("Apretame!"),
                  onPressed: null,
                ),
                text: 'Raised Button Desactivado',
                ),

                Muestra(
                  child: FlatButton(
                  child: Text("Apretame!"),
                  onPressed: (){},
                ),
                text: 'Flat Button',
                ),

                Muestra(
                  child: FlatButton(
                  child: Text("Apretame!"),
                  onPressed: (){},
                  color: Colors.blue[200],
                ),
                text: 'Flat Button con Color',
                ),

                Muestra(
                  child: OutlineButton(
                  child: Text("Apretame!"),
                  onPressed: (){},
                ),
                text: 'Outline Button',
                ),

                Muestra(
                  child: OutlineButton(
                  child: Text("Apretame!"),
                  onPressed: (){},
                  shape: StadiumBorder(),
                ),
                text: 'Outline Button con Forma',
                ),

                Muestra(
                  child: OutlineButton.icon(
                    icon: Icon(Icons.accessibility_new),
                    label: Text("Click Me!"),
                    onPressed: (){},
                    shape: StadiumBorder(),
                ),
                text: 'Outline Button con Icono',
                ),

                Muestra(
                  child: OutlineButton.icon(
                    icon: Icon(Icons.accessibility_new),
                    label: Text("Click Me!"),
                    onPressed: (){},
                    shape: StadiumBorder(),
                    highlightColor: Colors.green[300],
                ),
                text: 'Outline Button con Icono con color',
                ),

                Muestra(
                  child: IconButton(
                    icon: Icon(Icons.add_photo_alternate), 
                    onPressed: (){},
                    tooltip: "Agregar imagen",
                  ),
                text: 'Icon Button con Longpress',
                ),

                Muestra(
                  child: BackButton(),
                text: 'Back Button',
                ),

                Muestra(
                  child: CloseButton(),
                text: 'Close Button',
                ),

                Muestra(
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.adb),
                  ),
                  text: "Floattin Acton Button"
                )

                
              ],
            )
          ),
        ),
      ),
    );
  }
}

class Muestra extends StatelessWidget {

  final Widget child;
  final String text;

  const Muestra({
    @required this.child,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              this.child,
              SizedBox(height: 10),
              Text(this.text, 
              textAlign: TextAlign.center, 
              style: TextStyle(fontSize: 12)
              ),
            ]
          ),
        ),
      )
    );
  }
}