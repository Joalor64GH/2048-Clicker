package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;
import Number;

class PlayState extends FlxState
{
    override public function create()
    {
        super.create();

        var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
        text.screenCenter();
        add(text);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

    // for testing purposes
        if (FlxG.keys.justPressed.W)
	    FlxG.switchState(new WinState());
    }
}