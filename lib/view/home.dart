import 'package:casa_apostas/data/dataController.dart';
import 'package:casa_apostas/model/moneyModel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Home(),
    );
  }
}

class _Home extends StatefulWidget {
  const _Home({Key? key}) : super(key: key);

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {

  moneyModel model = moneyModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 49, 153, 1),
        centerTitle: true,
        title: Text("appBar"),
      ),

      body: Column(
        children: [
          FutureBuilder<moneyModel?>(
            future: DataController().getMoney(),
            builder: (context, snapshot){
              
              if(snapshot.connectionState== ConnectionState.waiting){
                return CircularProgressIndicator();
              }
              if(snapshot.error == true){
                return Text("Erro ao carregar!");
              }
              model = snapshot.data ?? model;
              return Text(model.bTCBRL?.name ?? "");
            }

      ),
        ],
      ),
    );
  }
}
