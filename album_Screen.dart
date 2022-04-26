import 'package:flutter/material.dart';
import 'package:spotify/Song_Item.dart';
import 'package:spotify/song.dart';
import 'package:spotify/song_item.dart';

class AlbumScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color.fromARGB(255, 49, 219, 6),
      leading: BackButton(),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Theme buildBottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromARGB(255, 2, 204, 29),
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Your Library',
          ),
        ],
        currentIndex: 2,
        fixedColor: Colors.white,
        onTap: null,
      ),
    );
  }

  BoxDecoration buildGradientDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
          colors: [Color.fromARGB(220, 18, 196, 2), Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.center,
          tileMode: TileMode.clamp),
    );
  }

  Padding buildCoverImage() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage('images/indir.jpg'),
        width: 200,
        height: 200,
      ),
    );
  }

  Padding buildAlbumTitle() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'This Is BTS',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Container buildFollowButton() {
    return Container(
      child: Text(
        'Follow',
        style: TextStyle(color: Colors.white),
      ),
      margin: EdgeInsets.only(top: 8.0),
      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.transparent,
          border: Border.all(color: Colors.grey, width: 1.0)),
    );
  }

  Padding buildFollowerCountText() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'BY SPOTİFY • 6.427.864 FOLLOWERS',
        style: TextStyle(fontSize: 12.0, color: Colors.grey),
      ),
    );
  }

  Container buildShufflePlayButton() {
    return Container(
      child: Text(
        'SHUFFLE PLAY',
        style: TextStyle(fontSize: 10.0, color: Colors.white),
      ),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFF2AB859),
          border: Border.all(color: Color(0xFF2AB859), width: 1.0)),
    );
  }

  Padding buildDownloadSection() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'Download',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Switch(
            value: false,
            onChanged: null,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: Container(
        decoration: buildGradientDecoration(),
        child: Center(
          child: Column(
            children: <Widget>[
              buildCoverImage(),
              buildAlbumTitle(),
              buildFollowButton(),
              buildFollowerCountText(),
              buildShufflePlayButton(),
              buildDownloadSection(),
            ],
          ),
        ),
      ),
    );
  }
}
