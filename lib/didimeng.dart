import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfaeng.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/dillereng.dart';



class YanPageeng21 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPageeng21>{
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
        image: DecorationImage(image: AssetImage("images/didim.jfif"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Didim",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Didim/Aydın",
        style: TextStyle(fontSize: 14),),

        ],),SizedBox(height: 5,),Row(
          children: [Text("Definition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 3,),Column(children: [Text("The first settlement traces of Didim district date back to the Neolithic Period (8000 BC). In the 16th century BC, the existence of Mycenaean, Cretan and later Aka colonies is seen. After the Persians, Romans and Byzantines, after the Battle of Manzikert in 1071, after the gates of Anatolia were opened to the Turks, this region, which was first called Karia, passed into the hands of the Turks. After the 1st Crusade, it passed into the hands of Byzantium again. With the establishment of the Menteşe Principality in Caria after 1261, Didim and its surroundings were included in this principality. During the Ottoman Empire, it continued its existence under the name Yeronda - Yoran. In accordance with the Treaty of Lausanne on March 23, 1924, the exchanges from Thessaloniki's Pravuşta region and its villages (Kuçkar, Devekıran) became the first owners of Didim. The Greeks who went from Yoran, on the other hand, established a village in Nea Yeronda, which means New Yoran.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
