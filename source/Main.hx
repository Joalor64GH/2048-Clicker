package;

import FPS;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		#if windows
		NativeUtil.enableDarkMode();
		#end

		addChild(new FlxGame(720, 720, MainMenuState, #if (flixel < "5.0.0") -1, #end 60, 60, false, false));
		addChild(new FPS(10, 3, 0xFFFFFF));
	}
}