function onCreate()
	-- background shit
	
	makeAnimatedLuaSprite('smokey', 'garSmoke', -2000, -1100)
	addAnimationByPrefix('smokey','Idle','smokey instance','24',true)
	objectPlayAnimation('smokey','Idle',false)
	scaleObject('smokey', 3.1, 3.1);
	
	makeLuaSprite('garMinusMistStageBG', 'garMinusMistStageBG', -900, -800);
	setScrollFactor('garMinusMistStageBG', 0.9, 0.9);
	scaleObject('garMinusMistStageBG', 0.9, 0.9);
	
	makeLuaSprite('garMinusMistyStage', 'garMinusMistyStage', -900, -860);
	setScrollFactor('garMinusMistyStage', 0.9, 0.9);
	scaleObject('garMinusMistyStage', 0.9, 0.9);
	
	makeAnimatedLuaSprite('smokey2', 'garSmoke', -2000, -1800)
	addAnimationByPrefix('smokey2','Idle','smokey instance','24',true)
	objectPlayAnimation('smokey2','Idle',false)
	scaleObject('smokey2', 3.1, 3.1);
	
	makeLuaSprite('MinusCar', 'MinusCar', 999, 400);
	setScrollFactor('MinusCar', 0.9, 0.9);
	scaleObject('MinusCar', 1.0, 1.0);
		
	makeLuaSprite('MinusCarTwo', 'MinusCarTwo', -999, 700);
	setScrollFactor('MinusCarTwo', 0.9, 0.9);
	scaleObject('MinusCarTwo', 1.0, 1.0);
	
	setProperty('smokey.alpha', 0);
	setProperty('smokey2.alpha', 0);

	addLuaSprite('garMinusMistStageBG', false);
	addLuaSprite('smokey2', false);
	addLuaSprite('garMinusMistyStage', false);
	addLuaSprite('MinusCar', true);
	addLuaSprite('MinusCarTwo', true);
	addLuaSprite('smokey', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end