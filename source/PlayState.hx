package;

import Number;
import flixel.FlxG;
import flixel.text.FlxText;
import lime.app.Application;
import flixel.input.mouse.FlxMouse;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
    var header:FlxText;

    public static var num:Number;
    public static var expo:Exponent;
    public static var infinity:Infinity;
    public static var win:Bool = true;

    var clicks:Int = 0;
    var clickAmount:FlxText;

    override public function create()
    {
        super.create();

        // text should change depending on what number you're on
        // this uses the updateText function, same with clickAmount but with updateClicks
        header = new FlxText(0, 0, FlxG.width, "Click on the number to multiply by 2!", 32);
        header.setFormat(Paths.font("vcr.ttf"), 25, FlxColor.WHITE, FlxTextAlign.CENTER,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);
        add(header);

        var tip:FlxText = new FlxText(5, FlxG.height - 24, 0, "Press ESC to exit at any time!", 12);
    	tip.scrollFactor.set();
    	tip.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    	add(tip);
	    
        if (!win) {
	    var winner:FlxText = new FlxText(5, FlxG.height - 44, 0, "Press W to win the game!", 12);
    	    winner.scrollFactor.set();
    	    winner.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
            add(winner);
        }

        clickAmount = new FlxText(5, FlxG.height - 24, 0, "Clicks: 0", 12);
    	clickAmount.scrollFactor.set();
    	clickAmount.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        clickAmount.screenCenter(X);
    	add(clickAmount);

	// placeholder sprite code
        var placeholder:FlxSprite = new FlxSprite(Paths.image('numbers/default/1'));
        placeholder.screenCenter();
        add(placeholder);

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

        // for testing purposes
        if (FlxG.keys.justPressed.X) 
        {
            win = true;
            trace('winner winner!');
        }

	if (win) {
            if (FlxG.keys.justPressed.W) 
	    {
	        FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() 
            	{
		    FlxG.switchState(new WinState());
		    FlxG.sound.music.volume = 0;
		    trace('congratulations!');
	        });
	    }
        }
    	if (FlxG.keys.justPressed.C) 
	{
	    FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() 
            {
		FlxG.switchState(new WinState());
		FlxG.sound.music.volume = 0;
        	trace('cheater >:]');
	    });
	}
        else if (FlxG.keys.justPressed.ESCAPE) 
	{
            FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() 
	    {
		FlxG.switchState(new MainMenuState());
		FlxG.sound.music.volume = 0;
	    });
        }
    }

    override public function destroy()
    {
        super.destroy();
    }

    function click() {
        new FlxTimer().start(0.01, function(timer) {
            FlxG.sound.play(Paths.sound('click'));
            updateText("Keep going!");
            updateClicks("Clicks: " + clicks);
            clicks += 1;
        });
    }

    function updateText(NewText:String):Void {
	header.text = NewText;
    }

    function updateClicks(mouseClicks:String):Void {
	clickAmount.text = mouseClicks;
    }
}
