package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxTypedSpriteGroup;

using flixel.util.FlxSpriteUtil;

class Number extends FlxSprite
{
	var number:FlxTypedSpriteGroup<FlxSprite>;

	public function new()
	{
		public static inline final NUMBERS:Array<String> = [
            	// placeholders from a dead project
			"yellow", "aqua", "blue", "cyan", "gold", "green", "indigo", "lime", "magenta", "mint", "orange", "pink",
			"purple", "red", "rose", "scarlet", "teal", "white"
		];

        		loadGraphic(Paths.image('numbers/$NUMBERS'));

		number = new FlxTypedSpriteGroup<FlxSprite>();

		if (number != null)
		{
			number.add(this);
		}
	}
}