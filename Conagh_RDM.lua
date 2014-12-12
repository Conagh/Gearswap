function get_sets()
send_command('input /macro book 11;wait .1;input /macro set 1') -- Change Default Macro Book Here --	
		AccIndex = 1
		AccArray = {"Low","Mid","High"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
		Armor = 'None'

		
	sets.TP								= {}
	
	sets.TP.Low							= {}
	
	sets.TP.Mid							= {}
	
	sets.TP.High						= {}
	
	
	sets.engaged						= {}
	
	sets.engaged.healing				= {}
	
	sets.engaged.healing.Curaga			= {}
	
	sets.engaged.healing.Cure			= {}
	
	sets.engaged.healing.Weather		= {}
	
	
	sets.ws								= {}
	
	sets.ws['Realmrazer']				= {}
	
	sets.ws['Flash Nova']				= {}
	
	sets.ws['Realmrazer']				= {}
	
	sets.ws['Requiescat']				= {}
	
	sets.ws['Chant du Cygne']			= {}
	
	
	sets.aftercast 						= {}
		
	sets.aftercast.night				= {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Vitivation Chapeau",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Hagondes Coat",hands="Serpentes Cuffs",ring1="Dark ring",ring2="Woltaris Ring",
		back="Cheviot Cape",waist="Flume Belt",legs="Nares Trews",feet="Battlecast Gaiters"}
			
	sets.aftercast.defense	 			= {main="Terra's Staff",ammo="Incantor Stone",
		head="Lithelimb Cap",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Flume Belt",legs="Hagondes Pants +1",feet="Battlecast Gaiters"}
	
	sets.aftercast.day 					= {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Vitivation Chapeau",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Hagondes Coat",hands="Buremte Gloves",ring1="Dark ring",ring2="Woltaris Ring",
		back="Cheviot Cape",waist="Flume Belt",legs="Nares Trews",feet="Serpentes Sabots"}
			
	sets.aftercast.move					= {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Dark ring",ring2="Woltaris Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Desert Boots"}
	
	sets.aftercast.resting 				= {main="Chatoyant Staff",sub="",ammo="Incantor Stone",
		head="Vitivation Chapeau",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Hagondes Coat",hands="Serpentes Cuffs",ring1="Dark ring",ring2="Woltaris Ring",
		back="Cheviot Cape",waist="Flume Belt",legs="Nares Trews",feet="Chelona Boots"}
	
	
	sets.precast 						= {}
	
	sets.precast.fastcast 				= {ammo="Imaptiens",head="Nahtirah Hat",ear1="loquacious Earring",neck="Orunmila's Torque",
			body="Vitivation Tabard",hands="Gendewitha Gages",back="Ogapepo Cape",legs="Artsieq Hose",feet="Chelona Boots",
			waist="Witful Belt",ear2="enchanter Earring +1",ring1="Prolix Ring",ring2="Lebeche Ring"}
	
	sets.precast.enhancing 				= {main="Arendsi Fleuret",ammo="Imaptiens",head="Nahtirah Hat",ear1="loquacious Earring",neck="Orunmila's Torque",
			body="Vitivation Tabard",hands="Gendewitha Gages",back="Ogapepo Cape",legs="Artsieq Hose",feet="Chelona Boots",
			waist="Siegel Sash",ear2="enchanter Earring +1",ring1="Prolix Ring",ring2="Lebeche Ring"}
	
	sets.precast.stoneskin				= {main="Arendsi Fleuret",ammo="Imaptiens",head="Nahtirah Hat",ear1="loquacious Earring",neck="Orunmila's Torque",
			body="Vitivation Tabard",hands="Gendewitha Gages",back="Ogapepo Cape",legs="Artsieq Hose",feet="Chelona Boots",
			waist="Siegel Sash",ear2="enchanter Earring +1",ring1="Prolix Ring",ring2="Lebeche Ring"}
	
	sets.precast.cure 					= {ammo="Impatiens",head="Nahtirah Hat",ear1="Loquacious Earring",
			body="Heka's Kalasiris",hands="Gendewitha Gages",ring1="Prolix Ring",legs="Artsieq Hose",
			feet="Chelona Boots",waist="Witful Belt",ring2="Lebeche Ring",back="Pahtli Cape"}
	
	sets.precast.healing				= {ammo="Imaptiens",head="Nahtirah Hat",ear1="loquacious Earring",
			body="Anhur Robe",hands="Gendewitha Gages",back="Ogapepo Cape +1",ring1="Veneficium Ring",legs="Orsn. Pantaln. +2",
			feet="Chelona Boots",waist="Witful Belt",ring2="lebeche Ring"}
	
	
	sets.midcast						= {}
	
	sets.midcast.healing 				= {}
	
	sets.midcast.healing.lyna 			= {ammo="Incantor Stone",head="Orison Cap +2",neck="Orunmila's Torque",
			ear1="loquacious Earring",ear2="Enchntr. Earring +1",body="Hedera Cotehardie",hands="Gendewitha Gages",
			ring1="Prolix Ring",ring2="Lebeche Ring",back="Swith Cape",waist="Witful Belt",legs="Artsieq Hose",feet="Gende. Galosh. +1"}
	
	sets.midcast.healing.caress			= {ammo="Incantor Stone",head="Orison Cap +2",neck="Orunmila's Torque",
			ear1="loquacious Earring",ear2="Enchntr. Earring +1",body="Hedera Cotehardie",hands="Orison Mitts +2",
			ring1="Prolix Ring",ring2="Lebeche Ring",back="Swith Cape",waist="Witful Belt",legs="Artsieq Hose",feet="Gende. Galosh. +1"}
	
	sets.midcast.healing.cursna 		= {ammo="Incantor Stone",head="Orison Cap +2",neck="Malison Medallion",ear1="Loquacious Earring",
			ear2="Enchntr. Earring +1",body="Hedera Cotehardie",hands="Gendewitha Gages",ring1="Ephedra Ring",ring2="Ephedra Ring",
			back="Swith Cape",waist="Witful Belt",legs="Artsieq Hose",feet="Hagondes Sabots +1"}

	sets.midcast.healing.cursnacaress 	= {ammo="Incantor Stone",head="Orison Cap +2",neck="Malison Medallion",ear1="Loquacious Earring",
			ear2="Enchntr. Earring +1",body="Hedera Cotehardie",hands="Orison Mitts +2",ring1="Ephedra Ring",ring2="Ephedra Ring",
			back="Swith Cape",waist="Witful Belt",legs="Artsieq Hose",feet="Hagondes Sabots +1"}

			
	sets.midcast.healing.curaga 		= {main="Tamaxchi",head="Hyksos Khat +1",ammo="Clarus Stone",neck="Colossus's Torque",
			body="Vitivation Tabard",hands="Bokwus Gloves",back="Oretanis's Cape",legs="Nares Trews",
			feet="Gendewitha Galoshes",ring1="Sirona's Ring",ring2="Ephedra Ring",ear1="Beatific Earring",
			Ear2="Roundel Earring"}
	
	sets.midcast.healing.cure 			= {main="Tamaxchi",head="Hyksos Khat +1",ammo="Clarus Stone",neck="Colossus's Torque",
			body="Vitivation Tabard",hands="Bokwus Gloves",back="Oretanis's Cape",legs="Nares Trews",
			feet="Gendewitha Galoshes",ring1="Sirona's Ring",ring2="Ephedra Ring",ear1="Beatific Earring",
			Ear2="Roundel Earring"}
	
	sets.midcast.healing.cureemnity 	= {main="Tamaxchi",head="Hyksos Khat +1",ammo="Clarus Stone",neck="Colossus's Torque",
			body="Vitivation Tabard",hands="Bokwus Gloves",back="Oretanis's Cape",legs="Nares Trews",
			feet="Gendewitha Galoshes",ring1="Sirona's Ring",ring2="Ephedra Ring",ear1="Beatific Earring",
			Ear2="Roundel Earring"}	
	
	sets.midcast.healing.weather 		= {main="Chatoyant Staff",sub="Mephitis Grip",ammo="Clarus Stone",head="Gende. Caubeen",
			body="Vitivation Tabard",hands="Bokwus Gloves",legs="Atrophy Tights +1",feet="Gendewitha Galoshes",
			neck="Colossus's Torque",waist="Korin Obi",left_ear="Roundel Earring",right_ear="Beatific Earring",
			left_ring="Sirona's Ring",right_ring="Ephedra Ring",back="Twilight Cape"}
	
	sets.midcast.healing.recast 		= {ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Colossus's Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Vitivation tabard",hands="Gendewitha Gages",
		back="Swith Cape",waist="Witful Belt",legs="Artsieq hose",feet="Battlecast Gaiters"}	
		
	
	sets.midcast.enhancing 				= {}
	
	sets.midcast.enhancing.raw 			= {main="Arendsi Fleuret",ammo="Incantor Stone",
		head="Umuthi Hat",neck="Colossus's Torque",ear1="Augment. Earring",ear2="Androaa Earring",
		body="Hyksos Robe",hands="Gendewitha Gages",
		back="Swith Cape",waist="Olympus sash",legs="Atrophy Tights +1",feet="Battlecast gaiters"}

	sets.midcast.enhancing.recast 		= {ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Colossus's Torque",ear1="Enchanter Earring +1",ear2="Loquacious Earring",
		body="Theo. briault +1",hands="Gendewitha Gages",
		back="Swith Cape",waist="Goading Belt",legs="Artsieq hose",feet="Piety Duckbills +1"}

	sets.midcast.enhancing.barspell 	= {main="Arendsi Fleuret",ammo="Incantor Stone",
		head="Umuthi Hat",neck="Colossus's Torque",ear1="Augment. Earring",ear2="Androaa Earring",
		body="Hyksos Robe",hands="Gendewitha Gages",
		back="Swith Cape",waist="Olympus sash",legs="Atrophy Tights +1",feet="Battlecast gaiters"}
		
	sets.midcast.enhancing.regen 		= {main="Bolelabunga",feet="Gendewitha galoshes"}
	
	sets.midcast.enhancing.turtle 		= {legs="Atrophy Tights +1",feet="Battlecast Gaiters"}
	
	sets.midcast.enhancing.stoneskin	= {neck="Stone Gorget",waist="Siegel Sash",legs="Haven Hose",Ear1="Earthcry Earring"}

	
	
	sets.midcast.divine					= {}
	
	sets.midcast.divine.holy			= {main="Lehbrailg +2",sub="Mephitis Grip",head="Hagondes Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Hagondes Pants +1",feet="Umbani Boots"}
	
	sets.midcast.divine.banish			= {main="Lehbrailg +2",sub="Mephitis Grip",head="Hagondes Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Hagondes Pants +1",feet="Umbani Boots"}
			
	sets.midcast.divine.repose			= {main="Lehbrailg +2",sub="Mephitis Grip",head="Hagondes Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Hagondes Pants +1",feet="Umbani Boots"}
			
	sets.midcast.divine.flash			= {main="Lehbrailg +2",sub="Mephitis Grip",head="Hagondes Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Hagondes Pants +1",feet="Umbani Boots"}
	
	
	sets.midcast.enfeebling				= {}
	
	sets.midcast.enfeebling.accuracy	= { range="Aureole",
			main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Hagondes Coat",hands="Lurid Mitts",legs="Artsieq Hose",feet="Umbani Boots",
			neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
			back="Refraction Cape"}
	
	sets.midcast.enfeebling.potency	= { range="Aureole",
			main="Lehbrailg +2",sub="Mephitis Grip",head="Vitivation Chapauu",body="Hagondes Coat",hands="Lurid Mitts",legs="Artsieq Hose",feet="Umbani Boots",
			neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
			back="Refraction Cape"}
	
	
	sets.midcast.elemental				= {}
	
	sets.midcast.elemental.accuracy 	= {main="Lehbrailg +2",sub="Mephitis Grip",head="Hagondes Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Hagondes Pants +1",feet="Umbani Boots"}

	
	
	sets.JA 							= {}
	
	sets.JA["Chainspell"]				= {Body="Vitivation Tabard"}
	
end


Cures 									= S{'Cure','Cure II','Cure III','Cure IV'}
Curagas 								= S{'Curaga','Curaga II'}
Lyna									= S{'Paralyna','Silena','Viruna','Erase','Cursna','Stona','Blindna','Poisona'}
Barspells								= S{'Barfira','Barfire','Barwater','Barwatera','Barstone','Barstonra','Baraero','Baraera','Barblizzara','Barblizzard','Barthunder','Barthundra'}
Turtle									= S{'Protect V','Shell V'}
Cursna									= S{'Cursna'}
Regens									= S{'Regen','Regen II'}
Enhanced								= S{'Flurry','Flurry II','Haste','Haste II','Refresh','Refresh II'}
Banished								= S{'Banish','Banish II','Banish III','Banishga','Banishga II'}
Smited									= S{}
Reposed									= S{}
Potency									= S{'Slow','Slow II','Paralyze','Paralyze II','Dia III'}
Defense									= S{'Stoneskin','Aquaveil'}


function precast(spell,action)
	if spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(8,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.ws
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
	    if spell.type == 'JobAbility' and windower.ffxi.get_ability_recasts()[spell.recast_id] > 0 then
		cancel_spell()
		return
		end
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.skill=='Healing Magic' then
		if Cures:contains(spell.name) then
		equip(sets.precast.cure)
		elseif Curagas:contains(spell.name) then
		equip(sets.precast.cure)
		elseif Lyna:contains(spell.name) then
		equip(sets.precast.healing)
		else
		equip(sets.precast.fastcast)
		end
	elseif spell.skill =='Enhancing Magic' then
		equip(sets.precast.enhancing)
	else
		equip(sets.precast.fastcast)
	end
end


function midcast(spell,action)
	if spell.skill =='Healing Magic' then
		if Cures:contains(spell.name) then
			if  world.day =='Lightsday' or  world.weather_element == 'Light'  or buffactive == 'Aurorastorm' then
				if player.status == 'Engaged' then
					equip(sets.engaged.healing.weather)
				else
					equip(sets.midcast.healing.weather)
				end
			else
				if player.status == 'Engaged' then
					equip(sets.engaged.healing.cure)
					add_to_chat(8,'TP Sets Engaged')
				elseif Emnity == 1 then
					equip(sets.midcast.healing.cureemnity)
					else
					equip(sets.midcast.healing.cure)
				end
			end
		elseif Curagas:contains(spell.name) then
			if  world.day =='Lightsday' or  world.weather_element == 'Light'  or buffactive == 'Aurorastorm' then
				if player.status == 'Engaged' then
					equip(sets.engaged.healing.weather)
				else
					equip(sets.midcast.healing.weather)
				end
			else
				if player.status == 'Engaged' then
					equip(sets.engaged.healing.curaga)
				else
					equip(sets.midcast.healing.curaga)
				end
			end
		elseif Lyna:contains(spell.name) then
			if buffactive['Divine Caress'] then
				equip(sets.midcast.healing.caress)
			else
				equip(sets.midcast.healing.lyna)
			end
		elseif Cursna:contains(spell.name) then
			if buffactive['Divine Caress'] then
			equip(sets.midcast.healing.cursnacaress)
			else
			equip(sets.midcast.healing.cursna)
			end
		else
			equip(sets.midcast.healing.recast)
		end
	elseif spell.skill =='Enhancing Magic' then
		if Regens:contains(spell.name) then
			equip(sets.midcast.enhancing.regen)
		elseif Barspells:contains(spell.name) then
			equip(sets.midcast.enhancing.barspell)
		elseif Turtle:contains(spell.name) then
			equip(sets.midcast.enhancing.turtle)
		elseif Enhanced:contains(spell.name) then
			equip(sets.midcast.enhancing.recast)
		elseif Defense:contains(spell.name) then
			equip(sets.midcast.enhancing.stoneskin)
		else
			equip(sets.midcast.enhancing.raw)
		end
	elseif spell.skill =='Divine Magic' then
		if Banished:contains(spell.name) then
			equip(sets.midcast.divine.banish)
		elseif Smited:contains(spell.name) then
			equip(sets.midcast.divine.holy)
		elseif Reposed:contains(spell.name) then
			equip(sets.midcast.divine.repose)
		elseif Flashed:contains(spell.name) then
			equip(sets.midcast.divine.flash)
		else
			equip(sets.midcast.divine.flash)
		end
	elseif spell.skill =='Enfeebling Magic' then
		if Potency:contains(spell.name) then
			equip(sets.midcast.enfeebling.potency)
		else
			equip(sets.midcast.enfeebling.accuracy)
		end
	elseif spell.skill =='Elemental Magic' then
		equip(sets.midcast.elemental.accuracy)
	end
end

function aftercast(spell,action)
	if Armor == '119' then
		equip(sets.aftercast.defense)
	else
        Idle()
	end
	
	--[ sleep and break timer rules ]--
	if spell.english == 'Sleep' or spell.english == 'Sleepga' then
		send_command('timers create "Sleep 1" 60 down;wait 50;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	elseif spell.english == 'Sleepga' then
		send_command('timers create "Sleepga 1" 60 down;wait 50;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
    elseif spell.english == 'Sleep II' then
		send_command('timers create "Sleep 2" 90 down;wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	 elseif spell.english == 'Sleepga II' then
		send_command('timers create "Sleepga 2" 90 down;wait 80;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
	 elseif spell.english == 'Break' or spell.english == 'Breakga' then
        send_command('@wait 20;input /echo ------- '..spell.english..' is wearing off in 10 seconds -------')
    end
end


function status_change(new,action)
	if new == 'Idle' then
		enable('main','sub')
		if Armor == '119' then
		equip(sets.aftercast.defense)
		else
			Idle()
		end
	elseif new == 'Resting' then
		equip(sets.aftercast.resting)
	elseif new == 'Engaged' then
		disable('main','sub')
		equipSet = sets.TP
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		equip(equipSet)
	end
end

function buff_change(buff,gain_or_loss)

end

function Idle()
	if world.time >= (17*60) or world.time <= (7*60) then
		equip(sets.aftercast.night)
	else
		equip(sets.aftercast.day)
	end
end

function pet_midcast(spell,action)
end

function pet_aftercast(spell,action)
end


function self_command(command)
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
		status_change(player.status)

	elseif command == 'C15' then -- MDT Toggle --
		if Armor == '119' then
			Armor = 'None'
			add_to_chat(8,'119 Set: [Unlocked]')
		else
			Armor = '119'
			add_to_chat(158,'119 Set: [Locked]')
		end
		status_change(player.status)


	elseif command == 'Z10' then -- Emnity Toggle --
		if Emnity == 1 then
			Emnity = 0
			add_to_chat(8,'Emnity - Mode: [Off]')
		else
			Emnity = 1
			add_to_chat(158,'Emnity - Mode: [ON]')
		end
		status_change(player.status)
	end
end
