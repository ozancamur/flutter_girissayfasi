import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 55.0),
            Container(
                width: 170.0,
                height: 170.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/tiger-3297540_640.png")))),
            SizedBox(height: 25.0),
            Text(
              "socialworld",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.0),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 7.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Mail İle Giriş",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),

                        width: double.infinity, //max genişlik
                        height: 52.0,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 52.0,
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "G-Mail",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 52.0,
                              decoration: BoxDecoration(
                                  color: Color(0xffe34264),
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight, //kutunun rengi
                    borderRadius: BorderRadius.circular(20.0), //kutunun şekli
                    gradient: LinearGradient(
                        begin: Alignment.topLeft, // solüstten başlar
                        end: Alignment.bottomRight, //sağ altta biter
                        colors: [
                          Colors.purple[300], //koyu renk ile başlar
                          Colors.purple[50], // açık renge doğru kayar
                        ])),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 70.0,
/*kullanılan cihazın boyunu ne olursa olsun kutunun eni cihazın 
enini komple kaplamasını istersek "MediaQuery.of(context).size.width",
yarısını kaplamasını istersek "MediaQuery.of(context).size.width / 2" deriz*/
                height: 180.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
