function OnCreate()
	precacheImage('blinds');
end

local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);

		makeLuaSprite('image', 'blinds', -400, -50);
		setScrollFactor('image', 1, 1);
		addLuaSprite('image', true);

		runTimer('startDialogue', 2);
		doTweenAlpha('byebye', 'image', 0, 2);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'city');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onStepHit()
	if curStep == 272 then
		makeLuaSprite('image', 'blinds', -400, -50);
		setScrollFactor('image', 1, 1);
		setProperty('image.alpha', 0);
		addLuaSprite('image', true);

		doTweenAlpha('fade', 'image', 1, 2);
	end
end