
import 'package:flutter/material.dart';
import 'package:turizmuyg/allianoieng.dart';
import 'package:turizmuyg/ayasofyaeng.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turizmuyg/bodrumeng.dart';
import 'package:turizmuyg/cesmeilicaeng.dart';
import 'package:turizmuyg/didimeng.dart';
import 'package:turizmuyg/dilekyarimadaeng.dart';
import 'package:turizmuyg/fethiyeeng.dart';
import 'package:turizmuyg/galataeng.dart';
import 'package:turizmuyg/kizkulesieng.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:turizmuyg/dillereng.dart';
import 'package:turizmuyg/kusadas%C4%B1eng.dart';
import 'package:turizmuyg/milasuykueng.dart';
import 'package:turizmuyg/nebilereng.dart';
import 'package:turizmuyg/olimposeng.dart';
import 'package:turizmuyg/pitaneeng.dart';
import 'package:turizmuyg/saklig%C3%B6leng.dart';
import 'package:turizmuyg/saklikentkanyoneng.dart';
import 'package:turizmuyg/sideeng.dart';
import 'package:turizmuyg/sultanahmeteng.dart';
import 'package:turizmuyg/topkapieng.dart';
import 'package:turizmuyg/konyaltieng.dart';
import 'package:turizmuyg/kaleicieng.dart';
import 'package:turizmuyg/dudeneng.dart';
import 'package:turizmuyg/efeseng.dart';

class Home1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Home1();
}

class _Home1 extends State<Home1>{
 final db=FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(backgroundColor: Colors.lightBlue,
      centerTitle: true,
      title: Text('Star Tourism',style:TextStyle(color: Colors.white)),
     

      
    ),body:StreamBuilder<QuerySnapshot>(
    stream: db.collection("Sehirlereng").snapshots(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        
        return SingleChildScrollView(
         child:Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,  children:
      [Text("Cities",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 30),),
        SizedBox(height: 15,),Text("İstanbul",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),PhotoPicture1(),SizedBox(height: 15,),
        Text("Antalya",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),AntalyaHomePage1(),SizedBox(height: 15,),
        Text("İzmir",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),IzmirHomePage1(),SizedBox(height: 15,),
        Text("Muğla",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),MuglaHomePage1(),SizedBox(height: 15,),
        Text("Aydın",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 20)),AydinHomePage1(),SizedBox(height: 11,)]),),
    
        );
      } else if (snapshot.hasError) {
        return Text("An error occurred while retrieving data.");
      } else {
        return Center(child: CircularProgressIndicator(),);
      }
    },
  ),bottomNavigationBar: CurvedNavigationBar(backgroundColor: Colors.lightBlue,color: Colors.lightBlue.shade200,
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

class PhotoPicture1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _PhotoPicture1();

}
class _PhotoPicture1 extends State<PhotoPicture1>{


  @override
  Widget build(BuildContext context) {
    
      return Container(margin: const EdgeInsets.symmetric(vertical: 5),height: 220.0, child: ListView(
        scrollDirection: Axis.horizontal,children:<Widget> [
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  YanPageeng(
              
            )));
          },child: Container(child: Stack(
            children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/ayasofya3.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Hagia Sophia",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),  ],
                ),)
        ],),),),SizedBox(width:5 ,),GestureDetector(onTap:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> YanPageeng1() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/galata2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Galata Tower",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 5,),GestureDetector(onTap:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng2() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/topkapı3.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Topkapı Palace",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),GestureDetector(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng3() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/kızkulesi1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Maiden's Tower",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),GestureDetector(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng4() ) );
          },

            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/sultanahmet3.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Sultanahmet",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
        
      );
    }
  }


class AntalyaHomePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _AntalyaHomePage1();


}
class _AntalyaHomePage1 extends State<AntalyaHomePage1>{

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical: 5),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng5() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/konyalti1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Konyaltı Beach",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng6() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/kaleici3.jfif",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Kaleici",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng7() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/düden2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Düden Waterfall",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng8() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/olimpos1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Olimpos",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng9() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/side1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Side",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
    );


  }
}

class IzmirHomePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _IzmirHomePage1();


}

class _IzmirHomePage1 extends State<IzmirHomePage1>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng10() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/efes1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Ephesus Ancient City",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng11() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/cesmeılıca2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 141, 134, 134)),child: Text("Çesme Spas",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng12() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/nebiler1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 141, 133, 133)),child: Text("Nebiler Waterfall",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng13() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/allianoi1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 167, 150, 150)),child: Text("Allianoi Ancient City",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng14() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/pitane1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Pitane Castle",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
    );



  }
}
class MuglaHomePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _MuglaHomePage1();
}
class _MuglaHomePage1 extends State<MuglaHomePage1>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng15() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/fethiye2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Fethiye",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng16() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/Saklikent-Kanyonu1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Mugla Saklikent Canyon",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng17() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/bodrum1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 114, 104, 104)),child: Text("Bodrum",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng18() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/marmaris-saklıgöl2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Marmaris Saklıgöl",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),SizedBox(width: 10,),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng19() ) );
          },
            child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                child:Image.asset("images/milasuykuvadisi1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
              Container(height: 220,width: 390,child: Column(
                children: [Row(children:[
                  Container(
                    margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Milas Sleep Valley",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                  ),]),
                ],
              ),)
            ],),
          ),
        ],
      ),
    );

  }
}
class AydinHomePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _AydinHomePage1();

}
class _AydinHomePage1 extends State<AydinHomePage1>{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 220.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng20() ) );
            },
              child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/kusadası2.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Kuşadası",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),
                  ],
                ),)
              ],),
            ),SizedBox(width: 10,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng21() ) );
            },
              child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/didim.jfif",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Didim",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),
                  ],
                ),)
              ],),
            ),SizedBox(width: 10,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>YanPageeng22() ) );
            },
              child: Stack(children: [ClipRRect(borderRadius: BorderRadius.circular(8),
                  child:Image.asset("images/dilekyarımada1.jpg",fit: BoxFit.cover,height: 220,width: 390,)),
                Container(height: 220,width: 390,child: Column(
                  children: [Row(children:[
                    Container(
                      margin: EdgeInsets.only(left:8 ,top: 175 ),padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(95, 199, 187, 187)),child: Text("Dilek Peninsula",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
                    ),]),
                  ],
                ),)
              ],),
            ),
          ], ));


  }
}