import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'constants.dart';

class Focusmusic extends StatefulWidget {
  @override
  _FocusmusicState createState() => _FocusmusicState();
}

class _FocusmusicState extends State<Focusmusic> {
  AudioPlayer _player,_player1,_player2,_player3,_player4;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player1 = AudioPlayer();
    _player2 = AudioPlayer();
    _player3 = AudioPlayer();
    _player4 = AudioPlayer();
    _player
        .setAsset(
        "audios/Coffeebrewingpinknoise.mp3")
        .catchError((error) {
      // catch audio error ex: 404 url, wrong url ...
      print(error);

    });
    _player1
        .setAsset("audios/OfficewithAC.mp3")
        .catchError((error){
      print(error);
    });
    _player2
        .setAsset("audios/Rustlingbushwindyday.mp3")
        .catchError((error){
      print(error);
    });
    _player3
        .setAsset("audios/Traincoinnoise.mp3")
        .catchError((error){
      print(error);
    });
    _player4
        .setAsset("audios/Writingwithfanon.mp3")
        .catchError((error){
      print(error);
    });

  }

  @override
  void dispose() {
    _player.dispose();
    _player1.dispose();
    _player2.dispose();
    _player3.dispose();
    _player4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.asset("assets/4.jpeg",fit: BoxFit.fitWidth,),
                    Positioned.fill(
                      left: 15.0,
                      top: 240.0,
                      child: Text("Focus",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                       fontWeight: FontWeight.w500,
                       letterSpacing: 1.0
                      ),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromARGB(255, 143, 145, 157),
                    ),
                    child: StreamBuilder<FullAudioPlaybackState>(
                      stream: _player.fullPlaybackStateStream,
                      builder: (context, snapshot) {
                        final fullState = snapshot.data;
                        final state = fullState?.state;
                        final buffering = fullState?.buffering;
                        return Row(
                          children: [
                            if (state == AudioPlaybackState.connecting ||
                                buffering == true)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(),
                              )
                            else if (state == AudioPlaybackState.playing)
                              IconButton(
                                icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player.pause();
                                },
                              )
                            else
                              IconButton(
                                icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player.play();
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)
                                          )
                                      ) ,
                                      context: context,
                                      builder: (BuildContext bc){
                                        return StreamBuilder<FullAudioPlaybackState>(
                                          stream: _player.fullPlaybackStateStream,
                                          builder: (context, snapshot) {
                                            final fullState = snapshot.data;
                                            final state = fullState?.state;
                                            final buffering = fullState?.buffering;
                                            return Row(
                                              children: [
                                                if (state == AudioPlaybackState.connecting ||
                                                    buffering == true)
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: CircularProgressIndicator(),
                                                  )
                                                else if (state == AudioPlaybackState.playing)
                                                  IconButton(
                                                    icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player.pause,
                                                  )
                                                else
                                                  IconButton(
                                                    icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player.play,
                                                  ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                  );
                                },
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),sizedBoxHeight,


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromARGB(255, 143, 145, 157),
                    ),
                    child: StreamBuilder<FullAudioPlaybackState>(
                      stream: _player1.fullPlaybackStateStream,
                      builder: (context, snapshot) {
                        final fullState = snapshot.data;
                        final state = fullState?.state;
                        final buffering = fullState?.buffering;
                        return Row(
                          children: [
                            if (state == AudioPlaybackState.connecting ||
                                buffering == true)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(),
                              )
                            else if (state == AudioPlaybackState.playing)
                              IconButton(
                                icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player1.pause();
                                },
                              )
                            else
                              IconButton(
                                icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player1.play();
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)
                                          )
                                      ) ,
                                      context: context,
                                      builder: (BuildContext bc){
                                        return StreamBuilder<FullAudioPlaybackState>(
                                          stream: _player1.fullPlaybackStateStream,
                                          builder: (context, snapshot) {
                                            final fullState = snapshot.data;
                                            final state = fullState?.state;
                                            final buffering = fullState?.buffering;
                                            return Row(
                                              children: [
                                                if (state == AudioPlaybackState.connecting ||
                                                    buffering == true)
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: CircularProgressIndicator(),
                                                  )
                                                else if (state == AudioPlaybackState.playing)
                                                  IconButton(
                                                    icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player1.pause,
                                                  )
                                                else
                                                  IconButton(
                                                    icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player1.play,
                                                  ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                  );
                                },
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),


                sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromARGB(255, 143, 145, 157),
                    ),
                    child: StreamBuilder<FullAudioPlaybackState>(
                      stream: _player2.fullPlaybackStateStream,
                      builder: (context, snapshot) {
                        final fullState = snapshot.data;
                        final state = fullState?.state;
                        final buffering = fullState?.buffering;
                        return Row(
                          children: [
                            if (state == AudioPlaybackState.connecting ||
                                buffering == true)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(),
                              )
                            else if (state == AudioPlaybackState.playing)
                              IconButton(
                                icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player2.pause();
                                },
                              )
                            else
                              IconButton(
                                icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player2.play();
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)
                                          )
                                      ) ,
                                      context: context,
                                      builder: (BuildContext bc){
                                        return StreamBuilder<FullAudioPlaybackState>(
                                          stream: _player2.fullPlaybackStateStream,
                                          builder: (context, snapshot) {
                                            final fullState = snapshot.data;
                                            final state = fullState?.state;
                                            final buffering = fullState?.buffering;
                                            return Row(
                                              children: [
                                                if (state == AudioPlaybackState.connecting ||
                                                    buffering == true)
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: CircularProgressIndicator(),
                                                  )
                                                else if (state == AudioPlaybackState.playing)
                                                  IconButton(
                                                    icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player2.pause,
                                                  )
                                                else
                                                  IconButton(
                                                    icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player2.play,
                                                  ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                  );
                                },
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),


                sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromARGB(255, 143, 145, 157),
                    ),
                    child: StreamBuilder<FullAudioPlaybackState>(
                      stream: _player3.fullPlaybackStateStream,
                      builder: (context, snapshot) {
                        final fullState = snapshot.data;
                        final state = fullState?.state;
                        final buffering = fullState?.buffering;
                        return Row(
                          children: [
                            if (state == AudioPlaybackState.connecting ||
                                buffering == true)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(),
                              )
                            else if (state == AudioPlaybackState.playing)
                              IconButton(
                                icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player3.pause();
                                },
                              )
                            else
                              IconButton(
                                icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player3.play();
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)
                                          )
                                      ) ,
                                      context: context,
                                      builder: (BuildContext bc){
                                        return StreamBuilder<FullAudioPlaybackState>(
                                          stream: _player3.fullPlaybackStateStream,
                                          builder: (context, snapshot) {
                                            final fullState = snapshot.data;
                                            final state = fullState?.state;
                                            final buffering = fullState?.buffering;
                                            return Row(
                                              children: [
                                                if (state == AudioPlaybackState.connecting ||
                                                    buffering == true)
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: CircularProgressIndicator(),
                                                  )
                                                else if (state == AudioPlaybackState.playing)
                                                  IconButton(
                                                    icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player3.pause,
                                                  )
                                                else
                                                  IconButton(
                                                    icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player3.play,
                                                  ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                  );
                                },
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),


                sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromARGB(255, 143, 145, 157),
                    ),
                    child: StreamBuilder<FullAudioPlaybackState>(
                      stream: _player4.fullPlaybackStateStream,
                      builder: (context, snapshot) {
                        final fullState = snapshot.data;
                        final state = fullState?.state;
                        final buffering = fullState?.buffering;
                        return Row(
                          children: [
                            if (state == AudioPlaybackState.connecting ||
                                buffering == true)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(),
                              )
                            else if (state == AudioPlaybackState.playing)
                              IconButton(
                                icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player4.pause();
                                },
                              )
                            else
                              IconButton(
                                icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                onPressed: (){
                                  _player4.play();
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0)
                                          )
                                      ) ,
                                      context: context,
                                      builder: (BuildContext bc){
                                        return StreamBuilder<FullAudioPlaybackState>(
                                          stream: _player4.fullPlaybackStateStream,
                                          builder: (context, snapshot) {
                                            final fullState = snapshot.data;
                                            final state = fullState?.state;
                                            final buffering = fullState?.buffering;
                                            return Row(
                                              children: [
                                                if (state == AudioPlaybackState.connecting ||
                                                    buffering == true)
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: CircularProgressIndicator(),
                                                  )
                                                else if (state == AudioPlaybackState.playing)
                                                  IconButton(
                                                    icon: Icon(Icons.pause,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player4.pause,
                                                  )
                                                else
                                                  IconButton(
                                                    icon: Icon(Icons.play_arrow,color: Colors.blue.shade200,size: 35.0,),
                                                    onPressed: _player4.play,
                                                  ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                  );
                                },
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}
