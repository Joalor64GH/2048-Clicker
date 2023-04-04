package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.text.FlxText;

class WinState extends FlxState
{
    var win:FlxSprite;

    public var DisplayText:FlxText;

    override public function create()
    {
        super.create();

        win = new FlxSprite(-80).loadGraphic(Paths.image('win'));
	win.scrollFactor.x = 0;
	win.scrollFactor.y = 0.18;
	win.setGraphicSize(Std.int(win.width * 1.1));
	win.updateHitbox();
	win.screenCenter();
	win.antialiasing = true;
	add(win);

        DisplayText = new FlxText(0, 0, FlxG.width, "You win!\nPRESS ANY BUTTON TO CONTINUE", 32);
	DisplayText.setFormat(Paths.font("vcr.ttf"), 54, FlxColor.WHITE, FlxTextAlign.CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
	add(DisplayText);

	// funny jingle
        FlxG.sound.play(Paths.sound('win'));

        FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ANY || FlxG.mouse.justPressed) 
        {
	    FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() 
            {
		FlxG.switchState(new MainMenuState());
	    });
        }
    }
}
