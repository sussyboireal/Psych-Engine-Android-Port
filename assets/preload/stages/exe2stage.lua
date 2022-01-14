function onCreate()
	-- background shit
	makeLuaSprite('exe2stageback', 'exe2stageback', -600, -300);
	setScrollFactor('exe2stageback', 0.9, 0.9);
	
	makeLuaSprite('idiot', 'idiot', -650, 600);
	setScrollFactor('idiot', 0.9, 0.9);
	scaleObject('idiot', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('idiot', 'idiot', 1225, -100);
		setScrollFactor('idiot', 0.9, 0.9);
		scaleObject('idiot', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('idiot', 'idiot', -500, -300);
		setScrollFactor('idiot', 1.3, 1.3);
		scaleObject('idiot', 0.9, 0.9);
	end

	addLuaSprite('exe2stageback', false);
	addLuaSprite('idiot', false);
	addLuaSprite('idiot', false);
	addLuaSprite('idiot', false);
	addLuaSprite('idiot', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end