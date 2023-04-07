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

        // the text updates using the updateText function, same with clickAmount but with updateClicks
        header = new FlxText(0, 0, FlxG.width, "Click on the number to multiply by 2!", 32);
        header.setFormat(Paths.font("vcr.ttf"), 25, FlxColor.WHITE, FlxTextAlign.CENTER,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);
        add(header);

        var tip:FlxText = new FlxText(5, FlxG.height - 24, 0, "Press ESC to exit at any time!", 12);
    	tip.scrollFactor.set();
    	tip.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    	add(tip);
	    
        var winner:FlxText = new FlxText(5, FlxG.height - 44, 0, "Press W to win the game!", 12);
    	winner.scrollFactor.set();
    	winner.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        if (clicks >= 37) {
            add(winner);
        }

        clickAmount = new FlxText(5, FlxG.height - 24, 0, "Clicks: 0", 12);
    	clickAmount.scrollFactor.set();
    	clickAmount.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        clickAmount.screenCenter(X);
    	add(clickAmount);

        var placeholder:FlxSprite = new FlxSprite(Paths.image('numbers/default/1'));
        placeholder.screenCenter();
        add(placeholder);

        FlxG.sound.playMusic(Paths.music('game'), 1);

        FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (clicks >= 37) 
        {
            win = true;
            trace('winner winner!');
        }

        if (FlxG.mouse.justPressed) 
	{
            click();
	    clicks += 1;
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
            if (clicks <= 10)
                updateText("Keep going!");
            else if (clicks == 11 && clicks >= 12)
                updateText("You made it!");
            else if (clicks == 12 && clicks >= 13)
                updateText("Wait, what?");
            else if (clicks == 13 && clicks >= 14)
                updateText("We\'re still going??");
            else if (clicks == 14 && clicks >= 15)
                updateText("Okay then...");
            else if (clicks == 15 && clicks >= 19)
                updateText("These numbers are HUGE!");
            else if (clicks == 20 && clicks >= 21)
                updateText("ONE MILLION!?");
            else if (clicks == 21 && clicks >= 22)
                updateText("Moving on to exponents!");
            else if (clicks == 22 && clicks >= 29)
                updateText("The power of 2...!");
            else if (clicks == 30 && clicks >= 31)
                updateText("It\'ll just go on forever.");
            else if (clicks == 31 && clicks >= 36)
                updateText("And ever...");
            else if (clicks >= 37)
                updateText("To infinity and beyond!!");
            updateClicks("Clicks: " + clicks);
        });
    }

    function updateText(NewText:String):Void {
	header.text = NewText;
    }

    function updateClicks(mouseClicks:String):Void {
	clickAmount.text = mouseClicks;
    }
}