import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:granny_go/music/model/sound.dart';
import 'package:granny_go/music/store/main_store.dart';
import 'package:granny_go/music/model/soundAssetList.dart';
import 'package:granny_go/music/style/app_sizes.dart';
import 'package:granny_go/music/widget/sound_list_item.widget.dart';

class SoundsListView extends StatelessWidget {
  final MainStore store;

  SoundsListView(Key key, @required this.store) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(AppSizes.blockSizeVertical * 3),
      children: <Widget>[
        ...SoundAssetList.sounds
            .map(
              (sound) => SoundListItem(
                store: store,
                sound: Sound(
                  name: "sound",
                  fileName: sound,
                ),
              ),
            )
            .toList(),
        SizedBox(
          height: AppSizes.blockSizeVertical * 7,
        ),
        Container(
          height: AppSizes.blockSizeVertical * 20,
          child: Lottie.asset('assets/animations/sky.json'),
        )
      ],
    );
  }
}
