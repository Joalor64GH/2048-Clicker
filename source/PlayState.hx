package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.input.mouse.FlxMouse;
import flixel.system.FlxSound;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxSprite;
import flixel.FlxState;
import Number;

class PlayState extends FlxState
{
    var number:Number;
    var win:Bool;

    override public function create()
    {
        super.create();

        // text should change depending on what number you're on
        var text = new FlxText(0, 0, FlxG.width, "Click on the number to multiply by 2!", 32);
        text.setFormat(Paths.font("vcr.ttf"), 25, FlxColor.WHITE, FlxTextAlign.CENTER,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);
        add(text);

        var tip:FlxText = new FlxText(5, FlxG.height - 24, 0, "Press ESC to exit at any time!", 12);
    	tip.scrollFactor.set();
    	tip.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    	add(tip);

        FlxG.sound.playMusic(Paths.music('game'), 1);

        FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.mouse.justPressed)
        {
            click();
        }

        function click(){
            new FlxTimer().start(0.01, function(timer){
                FlxG.sound.play(Paths.sound('select'));
            });
        }

        // for testing purposes
        if (win) {
            win = true;
        }
        if (FlxG.keys.justPressed.W /*&& win*/) {
	    FlxG.camera.fade(FlxColor.BLACK, 0.33, false, winner);
            FlxG.sound.music.volume = 0;
        }
        else if (FlxG.keys.justPressed.ESCAPE) {
            FlxG.camera.fade(FlxColor.BLACK, 0.33, false, returnToMenu);
            FlxG.sound.music.volume = 0;
        }
    }

    function winner()
    {
	FlxG.switchState(new WinState(/*win*/));
    }

    function returnToMenu()
    {
	FlxG.switchState(new MainMenuState());
    }
}
