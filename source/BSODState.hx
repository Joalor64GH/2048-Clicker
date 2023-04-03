import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxG;
import flixel.util.FlxTimer;

class BSODState extends FlxState
{
    var bsod:FlxSprite;

    public function new()
    {
        super();
    }

    override public function create()
    {
        super.create();

        bsod = new FlxSprite(-80).loadGraphic(Paths.image('bluescreen'));
	bsod.scrollFactor.x = 0;
	bsod.scrollFactor.y = 0.18;
	bsod.setGraphicSize(Std.int(bsod.width * 1));
	bsod.updateHitbox();
	bsod.screenCenter();
	bsod.antialiasing = true;
	add(bsod);

        FlxG.sound.play(Paths.sound('bsod'));

        new FlxTimer().start(4, closeGame);
    }

    public function closeGame(time:FlxTimer = null)
    {
        Sys.exit(0);
    }
}