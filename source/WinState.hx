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

        win = new FlxSprite(0, 0);
        win.loadGraphic(Paths.image('win'));
        add(win);

        DisplayText = new FlxText(0, 0, FlxG.width, "You win!\nPRESS ANY BUTTON TO CONTINUE", 32);
	DisplayText.setFormat(Paths.font("vcr.ttf"), 54, FlxColor.WHITE, FlxTextAlign.CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
	add(DisplayText);

        FlxG.sound.play(Paths.sound('win'));
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ANY)
	{
		FlxG.switchState(new MainMenuState());
	}
    }
}