import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfaeng.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/dillereng.dart';



class YanPageeng9 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage();


}
class _YanPage extends State<YanPageeng9>{
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
        image: DecorationImage(image: AssetImage("images/side1.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Side",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Side/Manavgat/Antalya",
        style: TextStyle(fontSize: 13),),

        ],),SizedBox(height: 5,),Row(
          children: [Text("Definition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 3,),Column(children: [Text("Side, VII. century, it became a settlement center. VI. BC. century, it came under the rule of the Lydian Kingdom with all Pamphylia, and after the collapse of the Lydian Kingdom in 547/46, it came under the rule of the Persians. The city, which preserved its freedom to some extent in this period, minted coins in its own name. Side, which opened its doors to the Macedonian king without showing any resistance during the Anatolian campaign of Alexander the Great (334 BC), later became one of the great coinage centers established by Alexander. Side, which constantly changed hands between the Hellenistic Period kingdoms after the death of Alexander, was built in BC III. century, first the Ptolemies,")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
