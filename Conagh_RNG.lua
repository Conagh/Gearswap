function get_sets()
	delay = 0
	RW_delay = 0
	Ammo_delay = 0
	retrn = 0
	halt_on_tp = true
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For Shooting/TP/WS. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	Armor = 'None'
	ammo_warning_limit = 10 -- Set Ammo Limit Check Here --

	sc_map = {SC1="LastStand", SC2="Coronach", SC3="Ranged"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

		windower.add_to_chat(17, '//ara [options]')
		windower.add_to_chat(17, '    start  	- Starts auto attack with ranged weapon')
		windower.add_to_chat(17, '    stop   	- Stops auto attack with ranged weapon')
		windower.add_to_chat(17, '    haltontp	- Toggles automatic halt upon reaching 1000 TP')
		windower.add_to_chat(17, '    help   	- Displays this help text')
		windower.add_to_chat(17, ' ')
		windower.add_to_chat(17, 'AutoRA will only automate ranged attacks if your status is "Engaged".  Otherwise it will always fire a single ranged attack.')
		windower.add_to_chat(17, 'To start auto ranged attacks without commands use the key:  f10')
		windower.add_to_chat(17, 'To stop auto ranged attacks in the same manner:  f9')
	
	
	
	-- IDLE --
	
	sets.Idle 						= 	{}
	
	sets.Idle.Regen					=	{}
	
	sets.Idle.Movement				=	{}
	
	
	-- PRESHOT --
	
	sets.Preshot 					=	{}
	
	-- BARRAGE --
	
	Barrage 						=	{}
	
	-- MIDSHOT --
	
	sets.Midshot					=	{}
	
	sets.Midshot.MidACC				=	{}
	
	sets.Midshot.HighACC			=	{}
	
	-- DAMAGE SETS --
		
	sets.PDT						=	{}
	
	sets.MDT						=	{}
	
	-- WS SETS --
	
	sets.WS							=	{}
	
	sets.WS["Coronach"]			=	{}
	
	sets.WS["Coronach"].MidACC		=	{}
	
	sets.WS["Coronach"].HighACC		=	{}
	
	sets.WS["Last Stand"]			=	{}
	
	sets.WS["Last Stand"].MidACC	=	{}
	
	sets.WS["Last Stand"].HighACC	=	{}
	
	-- JA SETS  --
	
	sets.JA							=	{}
	
	sets.JA["Shadowbind"]			=	{}
	
	sets.JA["Scavenge"] 			= 	{feet="Orion Socks +1"}
	
	sets.JA["Camouflage"] 			= 	{body="Orion Jerkin +1"}
	
	sets.JA["Sharpshot"] 			= 	{legs="Orion Braccae +1"}
	
	sets.JA["Bounty Shot"]			= 	{hands="Syl. Glvltte. +2"}
	
	sets.JA["Eagle Eye Shot"]		=	{}
	
	-- MAGIC SETS --
	
	sets.Precast					=	{}
	
	sets.Precast.FastCast			=	{}
	
	sets.Midcast					=	{}
	
	sets.Midcast.Haste				=	{}
end


function pretarget(spell,action)
	if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	end
end




function precast(spell,action)
	local check_ammo
	local check_ammo_count = 1
	if spell.action_type == 'Ranged Attack' then
		check_ammo = player.equipment.ammo
		if player.equipment.ammo == 'empty' or player.inventory[check_ammo].count <= check_ammo_count then
			add_to_chat(123, spell.name..' Canceled: [Out of Ammo]')
			cancel_spell()
			return
		else
			equip(sets.Preshot)
			if player.inventory[check_ammo].count <= ammo_warning_limit and player.inventory[check_ammo].count > 1 and not warning then
				add_to_chat(8, '***** [Low Ammo Warning!] *****')
				warning = true
			elseif player.inventory[check_ammo].count > ammo_warning_limit and warning then
				warning = false
			end
		end
	elseif spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if Attack == 'ON' then
				equipSet = equipSet["ATT"]
			end
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if player.tp > 299 or buffactive.Sekkanoki then
				if spell.english == "Last Stand" then -- Equip Altdorf's Earring and Wilhelm's Earring When You Have 300 TP or Sekkanoki For Last Stand --
					equipSet = set_combine(equipSet,{ear1="Altdorf's Earring",ear2="Wilhelm's Earring"})
				elseif spell.english == "Jishnu's Radiance" then -- Equip Jupiter's Pearl When You Have 300 TP or Sekkanoki For Jishnu's Radiance --
					equipSet = set_combine(equipSet,{ear1="Jupiter's Pearl"})
				end
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.action_type == 'Magic' then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.Utsusemi)
			end
		else
			equip(sets.Precast.FastCast)
		end
	elseif spell.type == "Waltz" then
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
end

function midcast(spell,action)
	if spell.action_type == 'Ranged Attack' then
		equipSet = sets.Midshot
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive.Barrage and equipSet["Barrage"] then
			equipSet = equipSet["Barrage"]
		end
		equip(equipSet)
	elseif spell.action_type == 'Magic' then
		if string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equip(sets.Midcast.Haste)
		else
			equip(sets.Midcast.Haste)
		end
	end
end



function aftercast(spell,action)
	if spell.action_type == 'Ranged Attack' and AutoMode == 'ON' then
		autoRA()
	else
		status_change(player.status)
	end
	if spell.type == "WeaponSkill" and not spell.interrupted then
		send_command('wait 0.2;gs c TP')
	end
end

function status_change(new,old)
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif new == 'Engaged' then
		equipSet = sets.Melee
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		equip(equipSet)
	else
		equipSet = sets.Idle
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if equipSet[player.sub_job] then
			equipSet = equipSet[player.sub_job]
		end
		equip(equipSet)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "overkill" then -- Overkill Timer --
		if gain then
			send_command('timers create "Overkill" 60 down')
		else
			send_command('timers delete "Overkill"')
			add_to_chat(123,'Overkill: [OFF]')
		end
	elseif buff == "decoy shot" then -- Decoy Shot Timer --
		if gain then
			send_command('timers create "Decoy Shot" 180 down')
			send_command('wait 170;input /echo Decoy Shot Effect: [WEARING OFF IN 10 SEC.];wait 65;input /echo WARNING HATE DECAY - Coronach Only')
		else
			send_command('timers delete "Decoy Shot"')
			add_to_chat(123,'Decoy Shot: [OFF]')
		end
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if not midaction() then
		status_change(player.status)
	end
end


function self_command(command)
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C15' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end


























	
function start()
	windower.add_to_chat(17, 'AutoRA  STARTING~~~~~~~~~~~~~~')	
	player = windower.ffxi.get_player()
	if player.status == 1 then
		auto = 1
	elseif player.status == 0 then
		auto = 0
	end
	shoot()
end

function stop()
	windower.add_to_chat(17, 'AutoRA  STOPPING ~~~~~~~~~~~~~~')	
	auto = 0
end

function shoot()
	windower.send_command('input /shoot <t>')
end

function shootOnce()
	windower.send_command('input /shoot <t>')
end

function split(msg, match)
	local length = msg:len()
	local splitarr = {}
	local u = 1
	while u <= length do
		local nextanch = msg:find(match,u)
		if nextanch ~= nil then
			splitarr[#splitarr+1] = msg:sub(u,nextanch-match:len())
			if nextanch~=length then
				u = nextanch+match:len()
			else
				u = lengthlua 
			end
		else
			splitarr[#splitarr+1] = msg:sub(u,length)
			u = length+1
		end
	end
	return splitarr
end

function haltontp()
	
	if halt_on_tp == true then
		windower.add_to_chat(17, 'AutoRA will no longer halt upon reaching 1000 TP')
		halt_on_tp = false
	elseif halt_on_tp == false then
		windower.add_to_chat(17, 'AutoRA will halt upon reaching 1000 TP')
		halt_on_tp = true
	end

end

windower.register_event('action',function (act)
	local actor = act.actor_id
	local category = act.category
	local player = windower.ffxi.get_player()
	
	if ((actor == (player.id or player.index))) then
		if category == 2 then
			if player.vitals['tp'] < 1000 then
				if auto == 1 then
					if  player.status == 1 then
						auto = 1
					elseif  player.status == 0 then
						auto = 0
						return
					end
				end
				if auto == 1 then
					windower.send_command('@wait 1.5;input /shoot <t>')
				elseif auto == 0 then
				end
			else
				if halt_on_tp == true then
					windower.add_to_chat(17, 'AutoRA  HALTING AT 1000 TP ~~~~~~~~~~~~~~')
					return
				else
					if auto == 1 then
						if  player.status == 1 then
							auto = 1
						elseif  player.status == 0 then
							auto = 0
							return
						end
					end
					if auto == 1 then
						windower.send_command('@wait 1.5;input /shoot <t>')
					elseif auto == 0 then
					end
				end
			end
		end
	end
end)


windower.register_event('addon command',function (...)
    local term = table.concat({...}, ' ')
    local splitarr = split(term,' ')
	if splitarr[1]:lower() == 'start' then
		start()
	elseif splitarr[1]:lower() == 'stop' then
		stop()
	elseif splitarr[1]:lower() == 'shoot' then
		shoot()
	elseif splitarr[1]:lower() == 'reload' then
		setDelay()
	elseif splitarr[1]:lower() == 'haltontp' then
		haltontp()
	elseif splitarr[1]:lower() == 'help' then
		windower.add_to_chat(17, 'AutoRA  v'..version..'commands:')
		windower.add_to_chat(17, '//ara [options]')
		windower.add_to_chat(17, '    start  	- Starts auto attack with ranged weapon')
		windower.add_to_chat(17, '    stop   	- Stops auto attack with ranged weapon')
		windower.add_to_chat(17, '    haltontp	- Toggles automatic halt upon reaching 1000 TP')
		windower.add_to_chat(17, '    help   	- Displays this help text')
		windower.add_to_chat(17, ' ')
		windower.add_to_chat(17, 'AutoRA will only automate ranged attacks if your status is "Engaged".  Otherwise it will always fire a single ranged attack.')
		windower.add_to_chat(17, 'To start auto ranged attacks without commands use the key:  f10')
		windower.add_to_chat(17, 'To stop auto ranged attacks in the same manner:  f9')
	end
end)
