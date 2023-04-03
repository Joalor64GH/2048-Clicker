package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;
import lime.app.Application;
import flixel.addons.ui.FlxButtonPlus;
import flixel.util.FlxColor;

class MainMenuState extends FlxState
{
	var logo:FlxSprite;

	var playButton:FlxButtonPlus;
	var exitButton:FlxButtonPlus;

	override public function create()
	{
		logo = new FlxSprite(0, 0);
        logo.loadGraphic(Paths.image('logo'));
        logo.screenCenter(X);
        add(logo);

		playButton = new FlxButtonPlus(0, 0, clickPlay, "Play", 200, 40);
		playButton.screenCenter(XY);
		add(playButton);

		exitButton = new FlxButtonPlus(0, 0, clickExit, "Exit", 200, 40);
		exitButton.screenCenter(X);
		exitButton.y = playButton.y + exitButton.height + 2;
		add(exitButton);

		var versionShit:FlxText = new FlxText(5, FlxG.height - 24, 0, "v" + Application.current.meta.get('version'), 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);

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
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			Sys.exit(0);
		});
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