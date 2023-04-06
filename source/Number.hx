package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class Number extends FlxSprite
{
    public var num:String = 'one';

    public function new(x:Float, y:Float)
    {
	super(x, y);
	
	switch(num)
	{
	    case "one":
	        loadGraphic(Paths.image('numbers/default/1'));
			
	    case "two":
	        loadGraphic(Paths.image('numbers/default/2'));
			
	    case "four":
	        loadGraphic(Paths.image('numbers/default/4'));
	
	    case "eight":
	        loadGraphic(Paths.image('numbers/default/8'));
			
	    case "sixteen":
	        loadGraphic(Paths.image('numbers/default/16'));
			
	    case "thirtytwo":
	        loadGraphic(Paths.image('numbers/default/32'));
			
	    case "sixtyfour":
	        loadGraphic(Paths.image('numbers/default/64'));
	
	    case "onehundredtwentyeight":
	        loadGraphic(Paths.image('numbers/default/128'));
			
	    case "twohundredfiftysix":
	        loadGraphic(Paths.image('numbers/default/256'));
			
	    case "fivehundredtwelve":
	        loadGraphic(Paths.image('numbers/default/512'));
			
	    case "thousandtwentyfour":
	        loadGraphic(Paths.image('numbers/default/1024'));
	
	    case "twothousandfourtyeight":
	        loadGraphic(Paths.image('numbers/default/2048'));
			
	    case "fourthousandninetysix":
	        loadGraphic(Paths.image('numbers/default/4096'));
			
	    case "eightthousandonehundredninetytwo":
	        loadGraphic(Paths.image('numbers/default/8192'));
			
	    case "sixteenthousandthreehundredeightyfour":
	        loadGraphic(Paths.image('numbers/default/16384'));
	
	    case "thirtytwothousandsevenhundredsixtyeight":
	        loadGraphic(Paths.image('numbers/default/32768'));
			
	    case "sixtyfivethousandfivehundredthirtysix":
	        loadGraphic(Paths.image('numbers/default/65536'));
			
	    case "onehundredthirtyonethousandseventytwo":
	        loadGraphic(Paths.image('numbers/default/131072'));
			
	    case "twohundredsixtytwothousandonehundredfourtyfour":
	        loadGraphic(Paths.image('numbers/default/262144'));
	
	    case "fivehundredtwentyfourthousandtwohundredeightyeight":
	        loadGraphic(Paths.image('numbers/default/524288'));
			
	    case "onemillionfourtyeighthousandfivehundredseventysix":
	        loadGraphic(Paths.image('numbers/default/1048576'));
	}
    }
			
    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
    }
}

class Exponent extends FlxSprite
{
    public var expo:String = 'twentyone';

    public function new(x:Float, y:Float)
    {
	super(x, y);
	    
	switch(num)
	{
	    case "twentyone":
	        loadGraphic(Paths.image('numbers/exponents/21'));
			
	    case "twentytwo":
	        loadGraphic(Paths.image('numbers/exponents/22'));
			
	    case "twentythree":
	        loadGraphic(Paths.image('numbers/exponents/23'));
	
	    case "twentyfour":
	        loadGraphic(Paths.image('numbers/exponents/24'));
			
	    case "twentyfive":
	        loadGraphic(Paths.image('numbers/exponents/25'));
			
	    case "twentysix":
	        loadGraphic(Paths.image('numbers/exponents/26'));
			
	    case "twentyseven":
	        loadGraphic(Paths.image('numbers/exponents/27'));
			
	    case "twentyeight":
	        loadGraphic(Paths.image('numbers/exponents/28'));
	
	    case "twentynine":
	        loadGraphic(Paths.image('numbers/exponents/29'));
			
	    case "thirty":
	        loadGraphic(Paths.image('numbers/exponents/30'));
			
	    case "fourty":
	        loadGraphic(Paths.image('numbers/exponents/40'));
			
	    case "fifty":
	        loadGraphic(Paths.image('numbers/exponents/50'));
			
	    case "sixty":
	        loadGraphic(Paths.image('numbers/exponents/60'));
			
	    case "seventy":
	        loadGraphic(Paths.image('numbers/exponents/70'));
			
	    case "eighty":
	        loadGraphic(Paths.image('numbers/exponents/80'));
			
	    case "ninety":
	        loadGraphic(Paths.image('numbers/exponents/90'));
			
	    case "onehundred":
	        loadGraphic(Paths.image('numbers/exponents/100'));
	}
    }
			
    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
    }
}

// work in progress bc i have no idea how atlas works
class Infinity extends FlxSprite
{
    public function new(x:Float, y:Float)
    {
	super(x, y);

	var tex:FlxAtlasFrames;
	tex = Paths.getSparrowAtlas('numbers/infinity');
	frames = tex;

	// using code from fnf as placeholders
	/*animation.addByPrefix('bf', "BF idle dance white", 24);
	animation.addByPrefix('bfConfirm', 'BF HEY!!', 24, false);
	animation.addByPrefix('gf', "GF Dancing Beat WHITE", 24);
	animation.addByPrefix('dad', "Dad idle dance BLACK LINE", 24);
	animation.addByPrefix('spooky', "spooky dance idle BLACK LINES", 24);
	animation.addByPrefix('pico', "Pico Idle Dance", 24);
	animation.addByPrefix('mom', "Mom Idle BLACK LINES", 24);
	animation.addByPrefix('parents-christmas', "Parent Christmas Idle", 24);
	animation.addByPrefix('senpai', "SENPAI idle Black Lines", 24);
	animation.addByPrefix('tankman', "Tankman Menu BLACK", 24);*/
    }
}
