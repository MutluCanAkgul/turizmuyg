import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfaeng.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/dillereng.dart';



class YanPageeng22 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPageeng22>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Star Tourism',style: TextStyle(color: Colors.white),),
        

        
      ),body: Icerik(),bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
   animationDuration: Duration(milliseconds: 300),onTap:(index){

   },items: [
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home1() ));
    }, icon: Icon(Icons.home),color: Colors.white,),
    IconButton(onPressed:(){}, icon: Icon(Icons.search),color: Colors.white,),
    IconButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder:(context)=> Diller1() ));
    }, icon: Icon(Icons.language),color: Colors.white,)
   ],),
      );
    
       
  }
}
class Icerik extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Icerik(); 
}

class _Icerik extends State<Icerik>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
      width: double.maxFinite,
      height: double.maxFinite,child: Stack(children: [ Positioned(left: 0,right: 0,child: Container(
      width: double.maxFinite,height: 270,decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/dilekyarımada1.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Dilek Peninsula",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Kuşadası/Aydın",
        style: TextStyle(fontSize: 14),),

        ],),SizedBox(height: 5,),Row(
          children: [Text("Definition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 3,),Column(children: [Text("It is a national park located at the last point where Dilek Mountain reaches the Aegean Sea within the borders of Aydın province. It has an area of ​​27,675 hectares. 10,985 hectares of this area belong to Dilek Peninsula, which was declared a National Park on 19.05.1966, and 16,690 hectares to Büyük Menderes Delta, which was declared a National Park in 1994. The Dilek Peninsula section of the National Park, opposite the Greek island of Samos, is the last point of the Samsun Mountains extending towards the Aegean Sea. geological structure; It is composed of Paleozoic schists, Mesozoic limestones and marbles and Neogene sedimentary masses.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
