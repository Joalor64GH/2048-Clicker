package;

// work in progress
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class Number extends FlxSprite
{
    public var num:String;

	public function new(x:Float, num:String = 'one')
	{
		super(x);

		this.num = num;

		var tex = Paths.getSparrowAtlas('numbers');
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

		animation.play(num);
		updateHitbox();
	}
}

class Exponent extends FlxSprite
{
    public var expo:String;

	public function new(x:Float, expo:String = 'twentyone')
	{
		super(x);

		this.expo = expo;

		var tex = Paths.getSparrowAtlas('exponents');
		frames = tex;

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

		animation.play(expo);
		updateHitbox();
	}
}

class Infinity extends FlxSprite
{
    public var inf:String;

	public function new(x:Float, y:Float)
	{
		super(x, y);

		var tex:FlxAtlasFrames;

		tex = Paths.getSparrowAtlas('infinity');
		frames = tex;

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