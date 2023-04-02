package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MainMenuState extends FlxState
{
	var titleText:FlxText;
	var playButton:FlxButton;
	var exitButton:FlxButton;

	override public function create()
	{
		titleText = new FlxText(0, 20, 0, "2048 Clicker", 32);
		titleText.alignment = CENTER;
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxButton(0, 0, "Play", clickPlay);
		playButton.screenCenter(XY);
		add(playButton);

		exitButton = new FlxButton(0, 0, "Exit", clickExit);
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
	    		FlxG.switchState(new BSODState());
	}
}
