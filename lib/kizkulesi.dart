import 'package:flutter/material.dart';
import 'package:turizmuyg/anasayfa.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/diller.dart';



class YanPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _YanPage2();


}
class _YanPage2 extends State<YanPage2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text('Star Tourism',style:TextStyle(color: Colors.white)),
        

      
      ),body: Icerik(),bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
   animationDuration: Duration(milliseconds: 300),onTap:(index){

   },items: [
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home() ));
    }, icon: Icon(Icons.home),color: Colors.white,),
    IconButton(onPressed:(){}, icon: Icon(Icons.search),color: Colors.white,),
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> Diller() ));
    }, icon: Icon(Icons.language),color: Colors.white,)
   ],),);
    //buraya favorilerim butonu eklenecek firebase işemi yazılacak
       
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
        image: DecorationImage(image: AssetImage("images/kızkulesi1.jpg"),fit: BoxFit.cover)
      ),
      )),Positioned(top: 240,child: Container(padding: EdgeInsets.only(left: 20,right: 20,top: 15),width: MediaQuery.of(context).size.width,height: 500,
       decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Text("Kız Kulesi",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.lightBlue),)// buton eklenebilir duruma göre

        
        ],),SizedBox(height: 2,),Row(children: [Icon(Icons.location_on,color: Colors.lightBlue,size: 20,),Text("Üsküdar - Salacak İskele",
        style: TextStyle(fontSize: 13),),

        ],),SizedBox(height: 2,),Row(
          children: [Text("Tanım",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)],
        ),SizedBox(height: 2,),Column(children: [Text("Kız Kulesi, İstanbul Boğazı'nın Marmara Denizi'ne yakın kısmında, Salacak açıklarında yer alan küçük adacık üzerinde inşa edilmiş yapıdır. 1110'da Bizans İmparatoru I. Aleksios, taş duvarla korunan ahşap bir kule inşa etti. Kuleden Konstantinopolis'teki Mangana semtinde (tarihi yarımadada bir mahalle) dikilmiş başka bir kuleye uzanan bir demir zincir gerildi. Adacık daha sonra su altı kalıntıları hala görülebilen bir savunma duvarı ile Asya kıyısına bağlandı. 1453'te İstanbul'un Osmanlılar tarafından fethi sırasında, kulede Venedikli Gabriele Trevisano tarafından yönetilen bir Bizans garnizonu bulunuyordu. Fatih Sultan Mehmed döneminde Osmanlı Türkleri tarafından gözetleme kulesi olarak kullanılmıştır.")],)],
       ),
         
      )

      )]),
     ),
   );

}
}
