local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 420.95;
local yy = 313;
local xx2 = 952.9;
local yy2 = 350;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	-- background shit

		makeLuaSprite('city', 'backcity', -200, -500);
		setLuaSpriteScrollFactor('city', 0.8, 0.8);

		makeLuaSprite('sky', 'sky', -400, -500);
		setLuaSpriteScrollFactor('sky', 0.8, 0.8);

		makeLuaSprite('city', 'backcity', -400, -500);
		setLuaSpriteScrollFactor('city', 1.1, 1.1);

		makeAnimatedLuaSprite('heli', 'heli', -3000, -200);
		luaSpriteAddAnimationByPrefix('heli', 'heli', 'heli', 24, true);
		setScrollFactor('heli', 0.4, 0.3);
		scaleObject('heli', 0.9, 0.9);
		setProperty('heli.velocity.x', 400);

		makeLuaSprite('hill1', 'hill1', -67, -295);
		scaleObject('hill1', 1, 1);
		setLuaSpriteScrollFactor('hill1', 0.9, 0.9);

		makeLuaSprite('hill2', 'hill2', 1155, -295);
		scaleObject('hill2', 1, 1);
		setLuaSpriteScrollFactor('hill2', 0.9, 0.9);

   		makeAnimatedLuaSprite('sexualintercourse2', 'bgg', -35, -296);
   		luaSpriteAddAnimationByPrefix('sexualintercourse2', 'first', 'deimos appear', 24, false);
    		scaleObject('sexualintercourse2', 1, 1);
   		luaSpritePlayAnimation('sexualintercourse2', 'first');
		objectPlayAnimation('sexualintercourse2', 'first', false);
		setLuaSpriteScrollFactor('sexualubtercourse2', 0.9, 0.9);

		makeAnimatedLuaSprite('sexualintercourse3', 'bgg2', 1185, -296);
    		luaSpriteAddAnimationByPrefix('sexualintercourse3', 'first', 'Sanford appears', 24, false);
    		scaleObject('sexualintercourse3', 1, 1);
    		luaSpritePlayAnimation('sexualintercourse3', 'first');
		objectPlayAnimation('sexualintercourse3', 'first', false);

		makeAnimatedLuaSprite('sexualintercourse', 'bgg', -43, -245);
		luaSpriteAddAnimationByPrefix('sexualintercourse', 'first', 'deimos idle', 24, false);
		scaleObject('sexualintercourse', 1, 1);
		luaSpritePlayAnimation('sexualintercourse', 'first');
		setLuaSpriteScrollFactor('sexualubtercourse', 0.9, 0.9);

		makeAnimatedLuaSprite('sexualintercourse4', 'bgg2', 1325, -245);
	--145
		luaSpriteAddAnimationByPrefix('sexualintercourse4', 'first', 'idle san', 24, false);
		scaleObject('sexualintercourse4', 1, 1);
		luaSpritePlayAnimation('sexualintercourse4', 'first');
		setLuaSpriteScrollFactor('sexualubtercourse4', 0.9, 0.9);


		makeAnimatedLuaSprite('hc', 'trickyhellclown', -43, -145);
		luaSpriteAddAnimationByPrefix('hc', 'hc', 'tricky hellclown', 24, true);
		scaleObject('hc', 1, 1);
		luaSpritePlayAnimation('hc', 'first');
		setProperty('hc.velocity.y', -500);

		makeLuaSprite('ground', 'floor', -80, -300);
		scaleObject('ground', 1, 1);
		setLuaSpriteScrollFactor('ground', 0.8, 0.8);

		makeLuaSprite('ground2', 'floor', -80, -300);
		scaleObject('ground2', 1, 1);
		setLuaSpriteScrollFactor('ground2', 0.8, 0.8);

		makeLuaSprite('ground4', 'floor', -80, -300);
		scaleObject('ground4', 1, 1);
		setLuaSpriteScrollFactor('ground4', 0.8, 0.8);

		makeLuaSprite('ground3', 'floor', -80, -300);
		scaleObject('ground3', 1, 1);
		setLuaSpriteScrollFactor('ground3', 0.8, 0.8);



		addLuaSprite('sky', false);
		addLuaSprite('city', false);
		addLuaSprite('heli', false);
		addLuaSprite('hill1', false);
		addLuaSprite('hill2', false);
		addLuaSprite('ground', false);
    
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
 
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.7)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        else

            setProperty('defaultCamZoom',0.7)
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end

        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onStepHit()

		if curStep == 989 then
		addLuaSprite('hc', false);
		end

		if curStep == 989 then
		addLuaSprite('ground3', false);
		end

		if curStep == 1007 then
		setProperty('hc.velocity.y', -300);
		end

        	if curStep == 1008 then
        	setProperty('hc.velocity.y', -200);
        	end

        	if curStep == 1009 then
        	setProperty('hc.velocity.y', -100);
        	end

        	if curStep == 1010 then
        	setProperty('hc.velocity.y', -0);
        	end

end

function onBeatHit()

		if curBeat == 72 then
		removeLuaSprite('hill1', false);
   		end

		if curBeat == 72 then
		removeLuaSprite('hill2', false);
   		end

		if curBeat == 72 then
		removeLuaSprite('ground', false);
   		end

		if curBeat == 73 then
		removeLuaSprite('ground2', false);
   		end

		if curBeat == 72 then
		addLuaSprite('sexualintercourse2', false);
   		end

        	if curBeat == 72 then
		addLuaSprite('sexualintercourse3', false);
    		end

		if curBeat == 73 then
		removeLuaSprite('sexualintercourse2', false);
   		end

        	if curBeat == 73 then
		removeLuaSprite('sexualintercourse3', false);
    		end

		if curBeat == 73 then
		addLuaSprite('sexualintercourse', false);
		end

		if curBeat == 73 then
		addLuaSprite('sexualintercourse4', false);
		end

		if curBeat == 72 then
		addLuaSprite('ground2', false);
		end

		if curBeat == 73 then
		addLuaSprite('ground4', false);
   		end

		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end

	objectPlayAnimation('sexualintercourse', 'first', false);
	objectPlayAnimation('sexualintercourse4', 'first', false);
	objectPlayAnimation('hc', 'first', true);


	health = getProperty('health')
	if getProperty('health') > 0.1 then
		setProperty('health', health- 0.05);
	end

	if curBeat == 328 then
        setProperty('defaultCamZoom',0.7)
		followchars = false;
	end

end