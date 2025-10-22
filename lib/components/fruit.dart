import 'package:flame/components.dart';
import 'dart:async';
import 'package:pixel_adventure/pixel_adventure.dart';

class Fruit extends SpriteAnimationComponent with HasGameRef<PixelAdventure>
{
  final String fruit;
  Fruit({this.fruit = 'Apple', position,size}) : super(position: position, size: size);

  final double stepTime = 0.05;


  @override
  Future<void> onLoad() async {
    animation = SpriteAnimation.fromFrameData(game.images.fromCache('Items/Fruits/$fruit.png')
        ,SpriteAnimationData.sequenced(
            amount: 17,
            stepTime: stepTime,
            textureSize: Vector2.all(32)
        ));
    return super.onLoad();
  }
}