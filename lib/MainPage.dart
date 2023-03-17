import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/AppProvider.dart';
class InitialPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Consumer<AppProvider>(builder: (context,provider,x){
    return Theme(
      data:provider.isDark?ThemeData.dark(): ThemeData.light(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("App Provider"),
            actions: [
              Switch(value: provider.isDark, onChanged: (v){
                provider.changeIsDark();

              })
            ],
          ),
          body:   Center(
            child: Column(
              children: [
                Text(provider.name),
                Text(provider.country),
                Text(provider.city),
                ElevatedButton(onPressed: (){
                  provider.changeIsDark();
                }, child: Text("change Name"))
              ],
            ),
          )

      ),
    );
  });

  }

}