import 'package:flutter/material.dart';

class MassangerUi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/66757978?v=4'),

            ),
            SizedBox(width: 20.0),
            Text('Chats',
            style: TextStyle (
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black

            ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {},
            icon:CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.camera_alt_rounded ,
                size: 16.0,
                color: Colors.black,
                ),
            ),


          ),
          IconButton(onPressed: () {},
            icon:CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.edit ,
                size: 16.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300],
                ),
                  child: Row(
                  children: [
                    Icon(
                      Icons.search
                    ),
                    SizedBox(width: 10.0,),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 100.0,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context , index) => buildStoryList(),
                    separatorBuilder: (context,index) => SizedBox(width: 20.0,),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    ),
              ),
              SizedBox(height: 30.0,),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context , index) => buildChatList(),
                  separatorBuilder: (context , index) => SizedBox(height: 20.0,),
                  itemCount: 15)
            ],
          ),
        ),
      ),
      
    );
  }

  Widget buildChatList()  =>  Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/66757978?v=4'),

          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                end: 3.0,
                bottom: 3.0
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.green,

            ),
          ),

        ],
      ),
      SizedBox(width: 10.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohamed Sayed',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5.0,),
            Row(
              children: [
                Expanded(
                  child: Text('This My dummy Text For Massanger UI LOL!' ,
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 3.0,),
                CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 3.0,),
                Text('12:00 Pm',

                )
              ],
            )
          ],
        ),
      )
    ],
  );
  Widget buildStoryList() =>  Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/66757978?v=4'),

            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  end: 3.0,
                  bottom: 3.0
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.green,

              ),
            ),

          ],
        ),
        SizedBox(height: 5.5,),
        Text('Mohamed Sayed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 12.0
          ),
        )
      ],
    ),
  );


}
