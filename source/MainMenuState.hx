package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flash.events.KeyboardEvent;

class MainMenuState extends FlxState
{
	var titleText:FlxText;
	var playButton:FlxButton;
	var exitButton:FlxButton;

	override public function create()
	{
		titleText = new FlxText(20, 0, 0, "2048\nClicker", 22);
		titleText.alignment = CENTER;
		titleText.screenCenter(X);
		add(titleText);

		playButton = new FlxButton(0, 0, "Play", clickPlay);
		playButton.onUp.sound = FlxG.sound.play(Paths.sound('select'));
		playButton.x = (FlxG.width / 2) - 10 - playButton.width;
		playButton.y = FlxG.height - playButton.height - 10;
		add(playButton);

		exitButton = new FlxButton(0, 0, "Exit", clickExit);
		exitButton.x = (FlxG.width / 2) + 10;
		exitButton.y = FlxG.height - exitButton.height - 10;
		add(exitButton);

		FlxG.sound.playMusic(Paths.music('menu'), 1);

		FlxG.camera.fade(FlxColor.BLACK, 0.33, true);

		super.create();
	}

    var code = '';
	var keyTimer:Float = 0;

    function onKeyDown(event:KeyboardEvent):Void{
		code = code + String.fromCharCode(event.charCode);
		keyTimer = 2;
		if(code=="bluescreen"){
			FlxG.stage.removeEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);
			FlxG.switchState(new BSODState());
		}
	}

	function clickPlay()
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			FlxG.switchState(new PlayState());
		});
	}

	function clickExit()
	{
		Sys.exit(0);
	}
}