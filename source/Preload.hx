package;

import flixel.FlxState;
import lime.media.WebAudioContext;

class Preload extends FlxState
{
	// we do the funny varibles
	public static var KEY = Std.random(100); // i wouldnt recomend changing this in game
	public static var MILESTONE = 1;
	public static var VER = "0.0.1-dev milestone-" + Std.string(MILESTONE); // the game version (duh)

	private var theFunny = AxLib;

	override public function create()
	{
		super.create();
		theFunny.game = false; // tells the AxLib that we arent in game yet
		theFunny.preloadStates(); // preloads stuff
		theFunny.switchState(new MainMenuState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
