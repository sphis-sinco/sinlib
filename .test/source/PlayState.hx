package;

import flixel.FlxState;
import sinlib.SLGame;
import sinlib.utilities.Application;
import sinlib.utilities.Arrays;
import sinlib.utilities.FileManager;
import sinlib.utilities.TryCatch;
import sinlib.utilities.UnitTesting;

class PlayState extends FlxState
{
	override public function create()
	{
                // 0.0.1
		TryCatch.tryCatch(() ->
		{
			trace('TryCatch: No Error');
		});
		TryCatch.tryCatch(() ->
		{
			throw 0;
		}, {
				errFunc: () ->
				{
					trace('TryCatch: Error');
				}
		});
		// trace('FileManager (v${FileManager.FILE_MANAGER_VERSION}): ${FileManager.readFile(FileManager.getDataFile('data-goes-here.txt'))}');
		trace('FileManager: ${FileManager.readFile(FileManager.getDataFile('data-goes-here.txt'))}');
		trace('Application version: ${Application.VERSION}');

		// 0.0.2
		trace('Cool array: ${Arrays.listFromString('1\n2\n3')}');
		trace('SLG isDebug: ${SLGame.isDebug}');
		trace('SLG isWatch: ${SLGame.isWatch}');
		trace('Unit Testing Int (Winner): ');
                UnitTesting.testIntReturn(() -> {unitTestFunc(0);}, 0);
		trace('Unit Testing Int (Loser): ');
                TryCatch.tryCatch(() -> {
                        UnitTesting.testIntReturn(() -> {unitTestFunc(1);}, 0);
                }, {
                        errFunc: () -> {
                                trace('        It failed, obviously LMAO (also hey, spacing)');
                   
                        }
                });

                // 0.0.3
		trace('images-go-here.txt existance: ${FileManager.exists(FileManager.getAssetFile('images/images-go-here.txt'))}');

		// 1.0
		FileManager.writeToPath('hi/deez/balls/inyourmouth.txt', 'deez nuts');

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	public function unitTestFunc(_return:Int = 0):Int
	{
		return _return;
	}
}
