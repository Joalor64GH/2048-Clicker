package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.addons.ui.FlxButtonPlus;
import flixel.util.FlxColor;

class MainMenuState extends FlxState
{
	var titleText:FlxText;
	var playButton:FlxButtonPlus;
	var exitButton:FlxButtonPlus;

	override public function create()
	{
		titleText = new FlxText(0, 20, 0, "2048 Clicker", 32);
		titleText.alignment = CENTER;
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxButtonPlus(0, 0, clickPlay, "Play", 200, 40);
		playButton.screenCenter(XY);
		add(playButton);

		exitButton = new FlxButtonPlus(0, 0, clickExit, "Exit", 200, 40);
		exitButton.screenCenter(X);
		exitButton.y = playButton.y + exitButton.height + 2;
		add(exitButton);

		FlxG.sound.playMusic(Paths.music('menu'), 1);

		FlxG.camera.fade(FlxColor.BLACK, 0.33, true);

		super.create();
	}

	function clickPlay()
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			FlxG.switchState(new PlayState());
			FlxG.sound.play(Paths.sound('select'));
			FlxG.sound.music.volume = 0;
		});
	}

	function clickExit()
	{
		Sys.exit(0);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.justPressed.B)
		{
	    		FlxG.switchState(new BSODState());
				FlxG.sound.music.volume = 0;
		}
	}
}