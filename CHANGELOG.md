# 1.0.0 - 7/7/2025
- `FileManager.getJSON` has try catches
- `FileManager.readFile` is cleaner
- New things:
	- `FileManager.readDirectory` has an optional `typeArr` argument that will search for specific file types
	- `FileManager.writeToPath` can create the directories required to write to the desired path
	- `FileManager` has these new functions:
		- `getSparrowAtlas` : Useful for sparrow sprite sheets
		- `getPackerAtlas` : Useful for sparrow spritesheets using text files ( idk )
		- `getScriptArray` : System only, returns a list of files with ".hx" or ".hxc" extensions
		- `getTypeArray` : Returns a list of files with a specific type
	- `TryCatch` works better and can be used as a return
- Filemanager uses `posinfo` stuff, not enabled, but can be
- Removal of the Filemanager version

# 0.0.3 - 2/22/2025
## Changed
- `FileManager` version is now `9.7`
        - Automatic asset localization is now possible
        - `exists` is a function checking for if an asset exists in the game's asset folder

# 0.0.2 - 2/9/2025
## Fixed
- `0.0.1` Changelog date
## Removed
- Random enter spaces in the changelog
- `SLBase.hx`
## Changed
- Haxelib description
## Added
- `Arrays` - A utility class with quality of life functions related to arrays
        - `listFromString` - Returns an array created from a string
- `SLGame` - A utility class with quality of life functions that aren't in `FlxG`
        - `isDebug` - Tells if your game is in a debug build
        - `isWatch` - Tells if your game is in a watch build
- `UnitTesting` - A utility class which is supposed to be like unit testing for haxe
        - `testDynamicReturn` - Checks if `func` returns `expectedValue` 
        - `testBoolReturn` - Uses `testDynamicReturn` to check if `func` returns `expectedValue` 
        - `testStringReturn` - Uses `testDynamicReturn` to check if `func` returns `expectedValue` 
        - `testIntReturn` - Uses `testDynamicReturn` to check if `func` returns `expectedValue` 
        - `testFloatReturn` - Uses `testDynamicReturn` to check if `func` returns `expectedValue` 

# 0.0.1 - 2/8/2025
## Added
- `Application` - A utility class to make referencing `lime.app.Application.current.meta` easier and it's values.
        - `META` - `Application.current.meta`
	- `BUILD` - `Application.current.meta.get('build')`
	- `COMPANY` - `Application.current.meta.get('company')`
	- `FILE` - `Application.current.meta.get('file')`
	- `NAME` - `Application.current.meta.get('name')`
	- `PACKAGE_NAME` - `Application.current.meta.get('packageName')`
	- `VERSION` - `Application.current.meta.get('version')`
- `TryCatch` - A utility class used in another Sinco project brought to sinlib and improved upon
	- `TryCatchParameters` - A typedef with fields used in the `paramaters` argument.
		- `errFunc` - A `dynamic` value
		- `traceErr` - A `bool` value which controls if you get error traces or not.
	- `TryCatch` - The main Class.
		- `tryCatch` - This function is purely to clean up your code with all the try catch statements you are trying to use.
			- `func` - the function you are trying to run
			- `paramaters` (optional) - optional paramaters for the tryCatch. (uses `TryCatchParameters`)
- `FileManager` - A utility class used in previous Sinco projects
	- `FileManager` - Main Class
		- `FILE_MANAGER_VERSION` - this is the amount of times ive used this script and changed it a bit in which the changes can be used in other games. Current value is `9.1`
		- `SOUND_EXT` - variable to control your default sound file extension. Default is "`wav`".
		- `getPath` - Function to return a path
		- `getAssetFile` - Function to return an `assets/$file`
		- `SCRIPT_EXT` - variable to control the extention of script files. Default is "`lb1`" if `SCRIPT_FILES` is enabled.
		- `getScriptFile` - Function to return `assets/data/scripts/$file` if `SCRIPT_FILES_IN_DATA_FOLDER` otherwise returns `assets/scripts/$file` only if `SCRIPT_FILES` is enabled
		- `getDataFile` - Function to return `assets/data/$file`
		- `getImageFile` - Function to return `assets/images/$file.png`
		- `getSoundFile` - Function to return `assets/$file.$SOUND_EXT`. You have to specify the sound folder.
		- `writeToPath` - Writes to a file or path using `sys`
		- `readFile` - Read a file using `lime.utils.Assets` and a try catch function
		- `getJSON` - Reads a file that SHOULD BE A JSON, using `readFile`
		- `readDirectory` - Reads a directory if `sys` via `FileSystem.readDirectory`
	- `PathTypes` - enum abstract with only 1 var:
		- `DEFAULT` - blank string because most projects don't have their file structure as like `assets/default/` instantly
