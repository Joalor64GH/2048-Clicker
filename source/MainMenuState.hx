package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;
import lime.app.Application;
import flixel.util.FlxColor;
import flixel.ui.FlxButton;

class MainMenuState extends FlxState
{
	var logo:FlxSprite;
	
	var playButton:FlxButton;
	var exitButton:FlxButton;

	override public function create()
	{
		logo = new FlxSprite(0, 0);
        	logo.loadGraphic(Paths.image('logo'));
        	logo.screenCenter(X);
        	add(logo);

		playButton = new FlxButton(0, FlxG.height / 2 + 50, "Play", function() {
            	    FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() {
			FlxG.switchState(new PlayState());
			FlxG.sound.music.volume = 0;
		    });
        	});
		playButton.scale.set(2, 2);
		playButton.screenCenter(X);
		add(playButton);

		exitButton = new FlxButton(0, playButton.y + 70, "Exit", function() {
            	    FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function() {
			Sys.exit(0);
		    });
        	});
		exitButton.scale.set(2, 2);
		exitButton.screenCenter(X);
		add(exitButton);

		var versionShit:FlxText = new FlxText(5, FlxG.height - 24, 0, "v" + Application.current.meta.get('version'), 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);

		FlxG.sound.playMusic(Paths.music('menu'), 1);

		FlxG.camera.fade(FlxColor.BLACK, 0.33, true);

		super.create();
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
