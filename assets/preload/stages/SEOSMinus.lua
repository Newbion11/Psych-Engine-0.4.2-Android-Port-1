function onCreate()
	-- background shit
	makeLuaSprite('garMinusStageBG', 'garMinusStageBG', -600, -500);
	setScrollFactor('garMinusStageBG', 0.9, 0.9);
	scaleObject('garMinusStageBG', 0.7, 0.7);
	
	makeLuaSprite('garMinusStage', 'garMinusStage', -700, -700);
	setScrollFactor('garMinusStage', 0.9, 0.9);
	scaleObject('garMinusStage', 0.8, 0.8);

	makeLuaSprite('MinusCar', 'MinusCar', 999, 400);
	setScrollFactor('MinusCar', 0.9, 0.9);
	scaleObject('MinusCar', 1.0, 1.0);
		
	makeLuaSprite('MinusCarTwo', 'MinusCarTwo', -999, 700);
	setScrollFactor('MinusCarTwo', 0.9, 0.9);
	scaleObject('MinusCarTwo', 1.0, 1.0);
	

	addLuaSprite('garMinusStageBG', false);
	addLuaSprite('garMinusStage', false);
	addLuaSprite('MinusCar', true);
	addLuaSprite('MinusCarTwo', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end