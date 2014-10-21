function get_sets()
send_command('input /macro book 7;wait .1;input /macro set 1') -- Change Default Macro Book Here --
AutoAga = 1
		Armor = 'None'
		
	sets.aftercast 						= {}
		
	sets.aftercast.night				= {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Theo. Duckbills +1"}
			
	sets.aftercast.defense	 			= {main="Terra's Staff",ammo="Incantor Stone",
		head="Gendewitha Caubeen",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Theophany briault +1",hands="Gendewitha Gages",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Artsieq Hose",feet="Theo. Duckbills +1"}
	
	sets.aftercast.day 					= {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Heka's Kalasiris",hands="Lurid Mitts",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Serpentes Sabots"}
			
	sets.aftercast.Move 				= {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sirona's ring",ring2="Aquasoul Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Desert Boots"}
	
	sets.aftercast.resting 				= {main="Chatoyant Staff",feet="Chelon Boots"}
	
	
	sets.precast 						= {}
	
	sets.precast.fastcast 				= {ammo="Imaptiens",head="Nahtirah Hat",ear1="loquacious Earring",neck="Orunmila's Torque",
			body="Anhur Robe",hands="Gendewitha Gages",back="Swith Cape",legs="Artsieq Hose",feet="Chelona Boots",
			waist="Witful Belt",ear2="enchanter Earring +1",ring1="Prolix Ring",ring2="Lebeche Ring"}
	
	sets.precast.enhancing 				= {ammo="Imaptiens",head="Nahtirah Hat",ear1="loquacious Earring",
			body="Anhur Robe",hands="Gendewitha Gages",back="Swith Cape",legs="Artsieq Hose",feet="Chelona Boots",
			waist="Siegel Sash",ear2="enchanter Earring +1",ring1="Prolix Ring",ring2="Lebeche Ring"}
	
	sets.precast.stoneskin				= {ammo="Imaptiens",head="Umuthi Hat",ear1="loquacious Earring",
			body="Anhur Robe",hands="Gendewitha Gages",back="Swith Cape",legs="Artsieq Hose",feet="Chelona Boots",
			waist="Siegel Sash",ear2="enchanter Earring +1",ring1="Prolix Ring",ring2="Lebeche Ring"}
	
	sets.precast.cure 					= {ammo="Impatiens",head="Nahtirah Hat",ear1="Loquacious Earring",
			body="Heka's Kalasiris",hands="Gendewitha Gages",ring1="Prolix Ring",legs="Orsn. Pantaln. +2",
			feet="Cure Clogs",waist="Witful Belt",ring2="Lebeche Ring",back="Pahtli Cape"}
	
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
			back="Mending Cape",waist="Witful Belt",legs="Artsieq Hose",feet="Gende. Galoshes"}

	sets.midcast.healing.cursnacaress 		= {ammo="Incantor Stone",head="Orison Cap +2",neck="Malison Medallion",ear1="Loquacious Earring",
			ear2="Enchntr. Earring +1",body="Hedera Cotehardie",hands="Orison Mitts +2",ring1="Ephedra Ring",ring2="Ephedra Ring",
			back="Mending Cape",waist="Witful Belt",legs="Artsieq Hose",feet="Gende. Galoshes"}

			
	sets.midcast.healing.curaga 		= {ammo="Incantor Stone",
		main="Tamaxchi",sub="Genbu's Shield",head="Gende. Caubeen",body="Theo. Briault +1",hands="Theo. Mitts +1",legs="Orsn. Pantaln. +2",
		feet="Piety Duckbills +1",neck="Nuna Gorget +1",waist="Cascade Belt",ear2="Cmn. Earring",ear1="Lifestorm Earring",left_ring="Sirona's Ring",
		right_ring="Aquasoul Ring",back="Pahtli Cape",}
	
	sets.midcast.healing.cure 			= {main="Tamaxchi",head="Gendewitha caubeen",neck="Colossus's Torque",
		body="Orison Bliaud +2",hands="Theo. Mitts +1",back="Mending Cape",legs="Orsn. Pantaln. +2",
		ring1="Sirona's Ring", ring2="Ephedra Ring", feet="Piety Duckbills +1", waist="Bishop's Sash",
		ear2="Beatific Earring", ear1="Roundel Earring"}
	
	sets.midcast.healing.weather 		= {main="Chatoyant Staff",sub="Mephitis Grip",ammo="Incantor Stone",head="Gende. Caubeen",body="Orison Bliaud +2",hands="Bokwus Gloves",legs="Orsn. Pantaln. +2",
		feet="Piety Duckbills +1",neck="Colossus's Torque",waist="Korin Obi",left_ear="Roundel Earring",right_ear="Beatific Earring",left_ring="Sirona's Ring",
		right_ring="Ephedra Ring",back="Twilight Cape"}
	
	sets.midcast.healing.recast 		= {ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Colossus's Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Theo. briault +1",hands="Dynasty Mitts",
		back="Swith Cape",waist="Goading Belt",legs="Artsieq hose",feet="Piety Duckbills +1"}	
		
	
	sets.midcast.enhancing 				= {}
	
	sets.midcast.enhancing.raw 			= {main="Beneficus",ammo="Incantor Stone",
		head="Umuthi Hat",neck="Colossus's Torque",ear1="Augment. Earring",ear2="Androaa Earring",
		body="Hyksos Robe",hands="Dynasty Mitts",
		back="Swith Cape",waist="Olympus sash",legs="Piety Pantaloons",feet="Orsn. Duckbills +2"}

	sets.midcast.enhancing.recast 		= {ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Colossus's Torque",ear1="Enchanter Earring +1",ear2="Loquacious Earring",
		body="Theo. briault +1",hands="Dynasty Mitts",
		back="Swith Cape",waist="Goading Belt",legs="Artsieq hose",feet="Piety Duckbills +1"}

	sets.midcast.enhancing.barspell 	= {main="Beneficus",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Orison Cap +2",neck="Colossus's Torque",ear1="Augment. Earring",ear2="Androaa Earring",
		body="Orison Bliaud +2",hands="Orison Mitts +2",
		back="Mending Cape",waist="Olympus Sash",legs="Piety Pantaloons",feet="Orison Duckbills +2"}
	
	sets.midcast.enhancing.regen 		= {main="Bolelabunga", legs="Theophany pantaloons",feet="Gendewitha galoshes",
	hands="Orison Mitts +2",body="Piety Briault"}
	
	sets.midcast.enhancing.turtle 		= {legs="Piety Pantaloons",feet="Piety Duckbills +1"}
	
	sets.midcast.enhancing.stoneskin	= {neck="Stone Gorget",waist="Siegel Sash",legs="Haven Hose",Ear1="Earthcry Earring"}

	
	
	sets.midcast.divine					= {}
	
	sets.midcast.divine.holy			= {main="Lehbrailg +2",sub="Mephitis Grip",head="Nahtirah Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Bokwus Robe",hands="Yaoyotl Gloves",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Theophany Pantaloons",feet="Weath. Souliers +1"}
	
	sets.midcast.divine.repose			= {ammo="Kalboron Stone",
		main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Theo. Briault +1",hands="Lurid Mitts",legs="Artsieq Hose",feet="Theo. Duckbills +1",
		neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
		back="Refraction Cape"}
	
	sets.midcast.divine.flash			= { ammo="Kalboron Stone",
		main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Theo. Briault +1",hands="Lurid Mitts",legs="Artsieq Hose",feet="Theo. Duckbills +1",
		neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
		back="Refraction Cape"}
	
	
	sets.midcast.enfeebling				= {}
	
	sets.midcast.enfeebling.accuracy	= { ammo="Kalboron Stone",
    main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Theo. Briault +1",hands="Lurid Mitts",legs="Artsieq Hose",feet="Theo. Duckbills +1",
    neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
    back="Refraction Cape"}
	
	sets.midcast.enfeebling.potency		= {ammo="Kalboron Stone",
    main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Theo. Briault +1",hands="Lurid Mitts",legs="Artsieq Hose",feet="Theo. Duckbills +1",
    neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Aquasoul Ring",right_ring="Sangoma Ring",
    back="Refraction Cape",}
	
	
	sets.midcast.elemental				= {}
	
	sets.midcast.elemental.accuracy 	= {main="Lehbrailg +2",sub="Mephitis Grip",head="Nahtirah Hat",neck="Eddy Necklace",
			ear1="Friomisi Earring",ear2="Hecate's Earring",body="Bokwus Robe",hands="Yaoyotl Gloves",ring1="Aquasoul Ring",ring2="Songoma Ring",
			back="Toro Cape",waist="Aswang Sash",legs="Gendewitha Spats",feet="Weath. Souliers +1"}

	
	
	sets.JA 							= {}
	
	sets.JA["Benediction"]				= {Head="Piety Briault"}
	sets.JA["Devotion"]					= {Head="Piety Cap +1"}
	
end
	
function pretarget(spell)
    if spell.name == 'Cure III' and spell.target.type == 'PLAYER' and not spell.target.charmed and AutoAga == 1 then
 
        cancel_spell()
        send_command(';input /ma "Curaga III" '..spell.target.name..';')
        return
    end
end 

Cures 									= S{'Cure','Cure II','Cure III','Cure IV','Cure V','Cure VI'}
Curagas 								= S{'Curaga','Curaga II','Curaga III','Curaga IV','Curaga V'}
Lyna									= S{'Paralyna','Silena','Viruna','Erase','Cursna','Stona','Blindna','Poisona'}
Barspells								= S{'Barfira','Barfire','Barwater','Barwatera','Barstone','Barstonra','Baraero','Baraera','Barblizzara','Barblizzard','Barthunder','Barthundra'}
Turtle									= S{'Protectra V','Shellra V'}
Cursna									= S{'Cursna'}
Regens									= S{'Regen','Regen II','Regen III','Regen IV','Regen V'}
Enhanced								= S{'Flurry','Haste','Refresh'}
Divinity								= S{'Banish','Banish II','Banish III','Banishga','Banishga II','Holy','Holy II'}
Reposed									= S{'Repose','Flash'}
Potency									= S{'Slow','Paralyze'}
Defense									= S{'Stoneskin'}


function precast(spell,action)
	if spell.type == "JobAbility" then
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
			if  world.day =='Lightsday' or  world.weather_element == 'Light'  or Buffactive == 'Aurorastorm' then
				equip(sets.midcast.healing.weather)
			else
				equip(sets.midcast.healing.cure)
			end
		elseif Curagas:contains(spell.name) then
			if  world.day =='Lightsday' or  world.weather_element == 'Light'  or Buffactive == 'Aurorastorm' then
				equip(sets.midcast.healing.weather)
			else
				equip(sets.midcast.healing.curaga)
			end
		elseif Lyna:contains(spell.name) then
			if Buffactive['Divine Caress'] then
				equip(sets.midcast.healing.caress)
			else
				equip(sets.midcast.healing.lyna)
			end
		elseif Cursna:contains(spell.name) then
			if Buffactive['Divine Caress'] then
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
		if Divinity:contains(spell.name) then
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
end

function status_change(new,action)
	if new == 'Idle' then
		if Armor == '119' then
		equip(sets.aftercast.defense)
		else
			Idle()
		end
	elseif new == 'Resting' then
		equip(sets.aftercast.resting)
	end
end

function buff_change(buff,gain_or_loss)
        if buff == "Sandstorm" then
                Idle()
        end
end

function Idle()
	if buffactive['Sandstorm'] then
		equip(sets.aftercast.move)
	elseif world.time >= (17*60) or world.time <= (7*60) then
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
	if command == 'C15' then -- MDT Toggle --
		if Armor == '119' then
			Armor = 'None'
			add_to_chat(8,'119 Set: [Unlocked]')
		else
			Armor = '119'
			add_to_chat(158,'119 Set: [Locked]')
		end
		status_change(player.status)
		
			elseif command == 'A10' then -- Aga Toggle --
		if AutoAga == 1 then
			AutoAga = 0
			add_to_chat(8,'Curaga 3 Mode: [Off]')
		else
			AutoAga = 1
			add_to_chat(158,'Curaga 3 Mode: [ON]')
		end
		status_change(player.status)
	end
end