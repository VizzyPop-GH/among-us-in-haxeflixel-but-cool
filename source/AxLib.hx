package;

import flixel.FlxG;
import flixel.FlxState;

class AxLib
{
	public static var game = false;

	public function new(inGame:Bool = false)
	{
		game = inGame;
	}

	public static function GetKey()
	{
		return Preload.KEY;
	}

	public static function GetGameVer()
	{
		return Preload.VER;
	}

	public static function preloadStates()
	{
		if (game == false)
		{
			new PlayState(); // preloads the states (so no lag lol)
		}
	}

	public static function switchState(toState)
	{
		if (game == true)
		{
			FlxG.switchState(toState); // heh
		}
		else
		{
			FlxG.switchState(toState); // m
		}
	}
}
