import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Subscribe",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Taste their own attention",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
                  Divider()
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 7,),
                    _trends(),
                   SizedBox(height: 20,),
                   _subscribe(
                      2,
                      kun: '12 days',
                      name: 'Yakudza',
                      avatar: 'assets/images/img_9.png',
                      content: 'В период раннего доступа большинство игровых веб-сайтов решили не делать подробных обзоров на PlayerUnknown’s Battlegrounds, хотя при этом высоко оценили игру.',
                      imageOne: 'assets/images/img_2.png',
                      imageTwo: 'assets/images/img_5.png',
                    ),
                    _subscribe(
                      3,
                      kun: '5 hours',
                      name: 'theDonni',
                      avatar: 'assets/gta/img.png',
                      content: 'Grand Theft Auto V (сокр. GTA V) — мультиплатформенная компьютерная игра в жанре action-adventure с открытым миром, разработанная компанией Rockstar North и изданная компанией Rockstar Games.',
                      imageOne: 'assets/gta/img_7.png',
                      imageTwo: 'assets/gta/img_5.png',
                      imageThere: 'assets/gta/img_4.png'
                    ),
                    _subscribe(
                        3,
                        kun: '7 mins',
                        name: 'Aslam',
                        avatar: 'assets/images/img_8.png',
                        content: 'Aslam vs Yakudza kim yudti arenada.Kimni tituli kuchli',
                        imageOne: 'assets/images/img_7.png',
                        imageTwo: 'assets/images/img_4.png',
                        imageThere: 'assets/images/img_3.png'
                    ),
                    _subscribe(
                      2,
                      kun: '3 hours',
                      name: 'AbbosThe',
                      avatar: 'assets/gta/img_3.png',
                      content: "Bugun kechda strim bo'ladi.Strimda mafiyalar boshlig'ini o'ldirgan Qahramon ning sudi muhokama qilinadi ",
                      imageOne: 'assets/gta/img.png',
                      imageTwo: 'assets/gta/img_7.png',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _subscribe(int count,{imageOne,imageTwo,imageThere,name,content,avatar,kun}) {
    return (count==3)?Container(
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.only(left: 17,right: 17,bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey,blurRadius: 10,offset: Offset(0, 0))
          ]
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.withOpacity(.1),
                        foregroundImage: AssetImage(avatar),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text('$kun ago',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 140,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageOne)
                      )
                  ),
                ),
                Container(
                  height: 140,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageTwo)
                      )
                  ),
                ),
                Container(
                  height: 140,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageThere)
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text(
              content,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(color: Colors.grey,fontSize: 14),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PopupMenuButton(
                  icon: Icon(Icons.more_horiz,color: Colors.grey,),
                  elevation: 30,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  itemBuilder: (context) => [
                    PopupMenuItem(child: Text('Nima qiziq narsa chiqishi kerak edimi?'),onTap: (){},)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ):Container(
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.only(left: 17,right: 17,bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey,blurRadius: 10,offset: Offset(0, 0))
          ]
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.withOpacity(.1),
                        foregroundImage: AssetImage(avatar),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text('$kun ago',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageOne)
                      )
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageTwo)
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text(
              content,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(color: Colors.grey,fontSize: 14),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PopupMenuButton(
                  icon: Icon(Icons.more_horiz,color: Colors.grey,),
                  elevation: 30,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  itemBuilder: (context) => [
                    PopupMenuItem(child: Text('Nima qiziq narsa chiqishi kerak edimi?'),onTap: (){},)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _trends() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 145,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey,blurStyle: BlurStyle.normal,blurRadius: 5,offset: Offset(0, 0))
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.withOpacity(.1),
                foregroundImage: AssetImage('assets/gta/img_2.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("GTA V",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Follovers 2648",style: TextStyle(fontSize: 11),)
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          width: 145,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey,blurStyle: BlurStyle.normal,blurRadius: 5,offset: Offset(0, 0))
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.withOpacity(.1),
                foregroundImage: AssetImage('assets/images/img_9.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("PUBG",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Follovers 17293",style: TextStyle(fontSize: 11),)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }



}
