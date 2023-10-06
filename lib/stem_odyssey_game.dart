part of stem_odyssey;

class STEMOdysseyGame extends StatelessWidget {
  final STEMOdysseyGameInstance gameInstance = STEMOdysseyGameInstance();

  STEMOdysseyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: gameInstance,
    );
  }
}

class STEMOdysseyGameInstance extends FlameGame with SingleGameInstance {
  STEMOdysseyGameInstance() : super(world: DefaultWorld());

  @override
  onLoad() {}
}

class MyCrate extends SpriteComponent {
  MyCrate() : super(size: Vector2.all(16));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('crate.png');
  }
}

class DefaultWorld extends World {
  @override
  Future<void> onLoad() async {
    await add(await TiledComponent.load('Map.tmx', Vector2.all(100)));
  }
}
