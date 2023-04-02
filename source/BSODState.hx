package;

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

        bsod = new FlxSprite(0, 0);
        bsod.loadGraphic(Paths.image('bluescreen'));
        add(bsod);

        FlxG.sound.play(Paths.sound('bsod'));

        new FlxTimer().start(3.4, closeGame);
    }

    public function closeGame(time:FlxTimer = null)
    {
        Sys.exit(0);
    }
}