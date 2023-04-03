package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

// work in progress

class Number extends FlxSprite
{
    public static inline final NUMBERS:Array<String> = [
	"1", 
        "2", 
        "4",
        "8",  
        "16", 
        "32", 
        "64", 
        "128", 
        "256", 
        "512", 
        "1024", 
        "2048",
	"4096", 
        "8192", 
        "16384", 
        "32768", 
        "65536", 
        "131072", 
        "262144", 
        "524288", 
        "1048576"
    ];

    public function new()
    {
        super();
        loadGraphic(Paths.image('numbers/$NUMBERS'));
    }
}

class Exponent extends Number
{
}

class Infinity extends Number
{
}
