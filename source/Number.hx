package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class Number extends FlxSprite
{
    public var num:FlxSprite;
	
    public static final NUMBERS:Array<String> = [
	'1', 
        '2', 
        '4',
        '8',  
        '16', 
        '32', 
        '64', 
        '128', 
        '256', 
        '512', 
        '1024', 
        '2048',
	'4096', 
        '8192', 
        '16384', 
        '32768', 
        '65536', 
        '131072', 
        '262144', 
        '524288', 
        '1048576'
    ];

    public function new(x:Float, y:Float)
    {
	super(x, y);

	num = new FlxSprite().loadGraphic(Paths.image('numbers/default/$EXPONENTS'));
	add(num);
    }
}

class Exponent extends FlxSprite
{
    public var expo:FlxSprite;

    public static final EXPONENTS:Array<String> = [
	'21', 
        '22', 
        '23',
        '24',  
        '25', 
        '26', 
        '27', 
        '28', 
        '29', 
        '30', 
        '40', 
        '50',
	'60', 
        '70', 
        '80', 
        '90', 
        '100'
    ];

    public function new(x:Float, y:Float)
    {
	super(x, y);

	expo = new FlxSprite().loadGraphic(Paths.image('numbers/exponents/$EXPONENTS'));
	add(expo);
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