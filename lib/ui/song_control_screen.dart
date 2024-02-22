import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/constants.dart';
import 'package:spotify_clone/ui/share_song_screen.dart';

class SongControlScreen extends StatelessWidget {
  const SongControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0,
                    color: MyColors.blackColor,
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      MyColors.blackColor,
                    ],
                  ),
                ),
                child: const _SongHeader(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0,
                    color: MyColors.blackColor,
                  ),
                  color: MyColors.blackColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      const _AlbumChip(text: "Like", image: "icon_heart.png"),
                      const _AlbumChip(
                          text: "Hide song", image: "icon_hide_song.png"),
                      const _AlbumChip(
                          text: "Add to playlist",
                          image: "icon_add_to_playlist.png"),
                      const _AlbumChip(
                          text: "Add to queue", image: "icon_add_to_quoue.png"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShareSongScreen(),
                            ),
                          );
                        },
                        child: const _AlbumChip(
                            text: "Share", image: "icon_share.png"),
                      ),
                      const _AlbumChip(
                          text: "Go to radio", image: "icon_radio.png"),
                      const _AlbumChip(
                          text: "View album", image: "icon_album.png"),
                      const _AlbumChip(
                          text: "View artist", image: "icon_view_artist.png"),
                      const _AlbumChip(
                          text: "Song credits", image: "icon_song_credits.png"),
                      const _AlbumChip(
                          text: "Sleep timer", image: "icon_sleep_timer.png"),
                      const SizedBox(height: 30),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Close",
                            style: TextStyle(
                              fontFamily: "AM",
                              fontSize: 16,
                              color: MyColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AlbumChip extends StatelessWidget {
  const _AlbumChip({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("images/$image"),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontFamily: "AM",
              fontSize: 16,
              color: MyColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}

class _SongHeader extends StatelessWidget {
  const _SongHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          "images/home/AUSTIN.jpg",
          height: 164,
          width: 164,
        ),
        const SizedBox(
          height: 55,
        ),
        const Center(
          child: Text(
            "AUSTIN",
            style: TextStyle(
              fontFamily: "AM",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: MyColors.whiteColor,
            ),
          ),
        ),
        const Center(
          child: Text(
            "Post Malone",
            style: TextStyle(
              fontFamily: "AM",
              fontSize: 14,
              color: MyColors.lightGrey,
            ),
          ),
        ),
        const SizedBox(
          height: 55,
        ),
      ],
    );
  }
}
