import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/anasayfaeng.dart';
import 'package:turizmuyg/diller.dart';

class Diller1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Diller1();
  
}
class _Diller1 extends State<Diller1>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     appBar:AppBar(backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Star Tourism',style: TextStyle(color: Colors.white),
        ), 
      ),body:Container( padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Languages",style: TextStyle(fontSize: 30,color: Colors.lightBlue,fontWeight: FontWeight.w500),),SizedBox(height: 150,),ListIcerik(),SizedBox(height: 15,),ListIcerik1()]), ) ,bottomNavigationBar:CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
   animationDuration: Duration(milliseconds: 300),onTap:(index){

   },items: [
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home1() ));
    }, icon: Icon(Icons.home),color: Colors.white,),
    IconButton(onPressed:(){}, icon: Icon(Icons.search),color: Colors.white,),
    IconButton(onPressed: (){}, icon: Icon(Icons.language),color: Colors.white,)
   ],), 
  );

}
}

class ListIcerik extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _ListIcerik();

}
class _ListIcerik extends State<ListIcerik>{
  @override
  Widget build(BuildContext context) {
  return Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,children:
     [ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> Diller() ));
     }, child: Text("Türkçe",style: TextStyle(color: Colors.lightBlue),),style: ElevatedButton.styleFrom(minimumSize: Size(200, 50),
     backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),side: BorderSide(color: Colors.lightBlue,),
     ),)],
  ),);
  
}
}
class ListIcerik1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _ListIcerik1();

}
class _ListIcerik1 extends State<ListIcerik1>{
  @override
  Widget build(BuildContext context) {
  return Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,children:
     [ElevatedButton(onPressed: (){}, child: Text("English",style: TextStyle(color: Colors.lightBlue),),style: ElevatedButton.styleFrom(minimumSize: Size(200, 50),
     backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),side: BorderSide(color: Colors.lightBlue,),
     ),)],
  ),);
  
}
}
