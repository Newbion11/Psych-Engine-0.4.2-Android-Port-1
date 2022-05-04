function onCreate()
	-- background shit
	makeLuaSprite('under', 'under', -330, -99);
	setScrollFactor('under', 0.8, 0.8);
	scaleObject('under', 0.7, 0.7);
	addLuaSprite('under', false);

	makeLuaSprite('oldcity2', 'oldcity2', -400, -50);
	setScrollFactor('oldcity2', 0.9, 0.9);
	scaleObject('oldcity2', 0.9, 0.9);
	
	makeLuaSprite('oldcity1', 'oldcity1', -400, -99);
	setScrollFactor('oldcity1', 0.9, 0.9);
	scaleObject('oldcity1', 0.9, 0.9);

	addLuaSprite('oldcity2', false);
	addLuaSprite('oldcity1', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end