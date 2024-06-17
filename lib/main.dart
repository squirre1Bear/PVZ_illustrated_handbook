import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'plant.dart';
import 'zombie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 75, 45, 34)),
        useMaterial3: true,
      ),
      home: MyHomePage(title: '植物大战僵尸杂交版图鉴'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    await _audioPlayer.setAsset('music/pvz.mp3');
    await _audioPlayer.setLoopMode(LoopMode.one);
    _audioPlayer.play();
    setState(() {
      isPlaying = true;
    });

    // 监听播放状态变化
    _audioPlayer.playerStateStream.listen((state) {
      setState(() {
        isPlaying = state.playing;
      });
    });
  }

  void _toggleMusic() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play();
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 101, 85),
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "PVZ"),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/index.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 107, 48, 18),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(255, 140, 68, 28),
                      width: 15,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(
                          image: NetworkImage('https://raw.githubusercontent.com/squirre1Bear/PVZ_databsase/master/plant.png'),
                          alignment: Alignment.center,
                          height: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return PlantPage();
                            },
                          ));
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 143, 67, 27),
                          ),
                        ),
                        child: Text(
                          "查看植物",
                          style: TextStyle(
                            fontFamily: "PVZ",
                            color: Color.fromARGB(255, 209, 154, 41),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 33, 36, 53),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(255, 66, 67, 87),
                      width: 15,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(
                          image: NetworkImage('https://raw.githubusercontent.com/squirre1Bear/PVZ_databsase/master/zombie.png'),
                          alignment: Alignment.center,
                          height: 100,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ZombiePage();
                            },
                          ));
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 95, 97, 129),
                          ),
                        ),
                        child: Text(
                          "查看僵尸",
                          style: TextStyle(
                            fontFamily: "PVZ",
                            color: Color.fromARGB(255, 0, 194, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "本软件完全免费，如有收费，皆为盗版",
                  style: TextStyle(
                    fontFamily: "PVZ",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleMusic,
        backgroundColor: Colors.green,
        child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
