import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfaeng.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/dillereng.dart';



class YanPageeng12 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPageeng12>{
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
        image: DecorationImage(image: AssetImage("images/nebiler1.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Nebiler Waterfall",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Nebiler, Nebiler Şelale Sk No:18,35980,Dikili/İzmir",
        style: TextStyle(fontSize: 12),),

        ],),SizedBox(height: 5,),Row(
          children: [Text("Definition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 3,),Column(children: [Text("Izmir and its surroundings have beautiful exploration routes. Nebiler Waterfall, which is not known enough yet, is one of the hidden beauties. Nebiler Waterfall, also known as Lovers Waterfall, is located within the borders of Nebiler Village of Dikili district of Izmir. With a lush nature, old plane trees, caves of various sizes, small waterfalls, pleasant walking paths, impressive scenery and sinkhole, Lovers Waterfall has the appropriate infrastructure to meet nature. The restaurant, where the sound of water rising from the waterfall can be heard, and the view of the lush plane trees, is the first structure to come across those who want to see the waterfall. The waterfall is descended from a wooden staircase consisting of 86 steps.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
