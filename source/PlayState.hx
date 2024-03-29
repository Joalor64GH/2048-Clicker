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
    var num:Number;
    var expo:Exponent;
    var infinity:FlxSprite; // made it its own sprite cause idk

    var clicks:Int = 0;
    var clickAmount:FlxText;
    var header:FlxText;

    public static var win:Bool = false;
    public static var cheated:Bool = false;

    override public function create()
    {
        super.create();
	
	trace('game started!');

        header = new FlxText(0, 0, FlxG.width, "Click on the number to multiply it by 2!", 32);
        header.setFormat(Paths.font("vcr.ttf"), 25, FlxColor.WHITE, FlxTextAlign.CENTER,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);
        add(header);

        var tip:FlxText = new FlxText(5, FlxG.height - 24, 0, "Press ESC to exit at any time!", 12);
    	tip.scrollFactor.set();
    	tip.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    	add(tip);

        clickAmount = new FlxText(5, FlxG.height - 24, 0, "Clicks: " + clicks, 12);
    	clickAmount.scrollFactor.set();
    	clickAmount.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        clickAmount.screenCenter(X);
    	add(clickAmount);

        FlxG.sound.playMusic(Paths.music('game'), 1);

        FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (clicks <= 21) 
        {
            if (clicks == 0) {
                remove(num);
                num = new Number(0, 0);
            } else if (clicks == 1) {
                remove(num);
                num = new Number(0, 0, "two");
            } else if (clicks == 2) {
                remove(num);
                num = new Number(0, 0, "four");
            } else if (clicks == 3) {
                remove(num);
                num = new Number(0, 0, "eight");
            } else if (clicks == 4) {
                remove(num);
                num = new Number(0, 0, "sixteen");
            } else if (clicks == 5) {
                remove(num);
                num = new Number(0, 0, "thirtytwo");
            } else if (clicks == 6) {
                remove(num);
                num = new Number(0, 0, "sixtyfour");
            } else if (clicks == 7) {
                remove(num);
                num = new Number(0, 0, "onehundredtwentyeight");
            } else if (clicks == 8) {
                remove(num);
                num = new Number(0, 0, "twohundredfiftysix");
            } else if (clicks == 9) {
                remove(num);
                num = new Number(0, 0, "fivehundredtwelve");
            } else if (clicks == 10) {
                remove(num);
                num = new Number(0, 0, "onethousandtwentyfour");
            } else if (clicks == 11) {
                remove(num);
                num = new Number(0, 0, "twothousandfourtyeight");
            } else if (clicks == 12) {
                remove(num);
                num = new Number(0, 0, "fourthousandninetysix");
            } else if (clicks == 13) {
                remove(num);
                num = new Number(0, 0, "eightthousandonehundredninetytwo");
            } else if (clicks == 14) {
                remove(num);
                num = new Number(0, 0, "sixteenthousandthreehundredeightyfour");
            } else if (clicks == 15) {
                remove(num);
                num = new Number(0, 0, "thirtytwothousandsevenhundredsixtyeight");
            } else if (clicks == 16) {
                remove(num);
                num = new Number(0, 0, "sixtyfivethousandfivehundredthirtysix");
            } else if (clicks == 17) {
                remove(num);
                num = new Number(0, 0, "onehundredthirtyonethousandseventytwo");
            } else if (clicks == 18) {
                remove(num);
                num = new Number(0, 0, "twohundredsixtytwothousandonehundredfourtyfour");
            } else if (clicks == 19) {
                remove(num);
                num = new Number(0, 0, "fivehundredtwentyfourthousandtwohundredeightyeight");
            } else if (clicks == 20) {
                remove(num);
                num = new Number(0, 0, "onemillionfourtyeighthousandfivehundredseventysix");
            }
            num.screenCenter();
            add(num);
        } else if (clicks <= 38 && clicks >= 20) {
            remove(num);
            if (clicks == 21) {
                remove(num);
                expo = new Exponent(0, 0);
            } else if (clicks == 22) {
                remove(expo);
                expo = new Exponent(0, 0, "twentytwo");
            } else if (clicks == 23) {
                remove(expo);
                expo = new Exponent(0, 0, "twentythree");
            } else if (clicks == 24) {
                remove(expo);
                expo = new Exponent(0, 0, "twentyfour");
            } else if (clicks == 25) {
                remove(expo);
                expo = new Exponent(0, 0, "twentyfive");
            } else if (clicks == 26) {
                remove(expo);
                expo = new Exponent(0, 0, "twentysix");
            } else if (clicks == 27) {
                remove(expo);
                expo = new Exponent(0, 0, "twentyseven");
            } else if (clicks == 28) {
                remove(expo);
                expo = new Exponent(0, 0, "twentyeight");
            } else if (clicks == 29) {
                remove(expo);
                expo = new Exponent(0, 0, "twentynine");
            } else if (clicks == 30) {
                remove(expo);
                expo = new Exponent(0, 0, "thirty");
            } else if (clicks == 31) {
                remove(expo);
                expo = new Exponent(0, 0, "fourty");
            } else if (clicks == 32) {
                remove(expo);
                expo = new Exponent(0, 0, "fifty");
            } else if (clicks == 33) {
                remove(expo);
                expo = new Exponent(0, 0, "sixty");
            } else if (clicks == 34) {
                remove(expo);
                expo = new Exponent(0, 0, "seventy");
            } else if (clicks == 35){
                remove(expo);
                expo = new Exponent(0, 0, "eighty");
            } else if (clicks == 36) {
                remove(expo);
                expo = new Exponent(0, 0, "ninety");
            } else if (clicks == 37) {
                remove(expo);
                expo = new Exponent(0, 0, "onehundred");
            }
            expo.screenCenter();
            add(expo);
        } else if (clicks >= 37 && clicks >= 38) {
            remove(expo);
            infinity = new FlxSprite(0, 0);
            infinity.frames = Paths.getSparrowAtlas("numbers/infinity");
            infinity.animation.addByPrefix('rainbow', 'infinity', 12);
	    infinity.animation.play('rainbow');
            infinity.screenCenter();
            add(infinity);
        }

        if (clicks >= 38) 
        {
            win = true;
            addWinText();
        }

        if (FlxG.mouse.justPressed) 
	{
            click();
	    clicks += 1;
        }

	if (win) 
    	{
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
            	cheated = true;
	    });
	}
        else if (FlxG.keys.justPressed.ESCAPE) 
	{
            FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() 
	    {
		FlxG.switchState(new MainMenuState());
		FlxG.sound.music.volume = 0;
                trace('returning to menu...');
	    });
        }
    }

    function click() {
        new FlxTimer().start(0.01, function(timer) {
            FlxG.sound.play(Paths.sound('click'));
            if (clicks <= 10)
                updateText("Keep going!");
            else if (clicks == 11 && clicks <= 12)
                updateText("You made it!");
            else if (clicks == 12 && clicks <= 13)
                updateText("Wait, what?");
            else if (clicks == 13 && clicks <= 14)
                updateText("We\'re still going??");
            else if (clicks == 14 && clicks <= 15)
                updateText("Okay then...");
            else if (clicks == 15 && clicks <= 19)
                updateText("These numbers are HUGE!");
            else if (clicks == 20 && clicks <= 21)
                updateText("ONE MILLION!?");
            else if (clicks == 21 && clicks <= 22)
                updateText("Moving on to exponents!");
            else if (clicks == 22 && clicks <= 29)
                updateText("The power of 2...!");
            else if (clicks == 30 && clicks <= 31)
                updateText("It\'ll just go on forever.");
            else if (clicks == 31 && clicks <= 37)
                updateText("And ever...");
            else if (clicks >= 38)
                updateText("To infinity and beyond!!");
            updateClicks("Clicks: " + clicks);
        });
    }

    function addWinText() {
	var winnerText:FlxText = new FlxText(5, FlxG.height - 44, 0, "Press W to win the game!", 12);
    	winnerText.scrollFactor.set();
    	winnerText.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
    	add(winnerText);
    }

    function updateText(NewText:String):Void {
	header.text = NewText;
    }

    function updateClicks(mouseClicks:String):Void {
	clickAmount.text = mouseClicks;
    }
}
