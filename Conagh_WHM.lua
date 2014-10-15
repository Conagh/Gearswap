function get_sets()
send_command('input /macro book 7;wait .1;input /macro set 1') -- Change Default Macro Book Here --
AutoAga = 1
		Armor = 'None'
		
	sets.aftercast_IdleNight = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Theo. Duckbills +1"}
		
	sets.aftercast_AssaultNight = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Balrahn's Ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Theo. Duckbills +1"}
	
	sets.aftercast_Idle119 = {main="Terra's Staff",ammo="Incantor Stone",
		head="Gendewitha Caubeen",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Theophany briault +1",hands="Gendewitha Gages",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Artsieq Hose",feet="Theo. Duckbills +1"}
	
	sets.aftercast_IdleDay = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Heka's Kalasiris",hands="Lurid Mitts",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Serpentes Sabots"}
		
		sets.aftercast_AssaultDay = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Merman's Earring",ear2="Coral Earring",
		body="Heka's Kalasiris",hands="Lurid Mitts",ring1="Dark ring",ring2="Patricius Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Serpentes Sabots"}
	
	sets.aftercast_Idle = sets.aftercast_Idle_noSub
	
	sets.aftercast_Move = {main="Bolelabunga",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Nefer Khat",neck="Twilight Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sirona's ring",ring2="Aquasoul Ring",
		back="Cheviot Cape",waist="Siegel Sash",legs="Nares Trews",feet="Desert Boots"}
		
	sets.precast_FastCast = {ammo="Incantor Stone",head="Nahtirah Hat",ear2="Loquacious Earring",
		body="Anhur Robe",hands="Gendewitha Gages",back="Swith Cape",legs="Artsieq hose",feet="Chelona Boots",waist="Siegel Sash"}
	
	sets.precast_Cure = {ammo="Incantor Stone",head="Nahtirah Hat",ear2="Loquacious Earring",
		body="Heka's Kalasiris",hands="Gendewitha Gages",back="Pahtli Cape",legs="Orsn. Pantaln. +2",feet="Cure Clogs"}
	
	sets.Resting = {main="Chatoyant Staff"}
	
	sets.midcast_ElementalMagic = {ammo="Kalboron Stone",
	main="Lehbrailg +2",sub="Mephitis Grip",head="Nahtirah Hat",body="Nares Saio",hands="Yaoyotl Gloves",legs="Theo. Pantaloons",feet="Umbani Boots",
	neck="Eddy Necklace",waist="Cascade Belt",left_ear="Hecate's Earring",right_ear="Friomisi Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
    back="Refraction Cape",}
	
	sets.midcast_DarkMagic = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Incantor Stone",head="Nahtirah Hat",
	body="Nares Saio",hands="Gendewitha Gages",legs="Bokwus Slops",feet="Theo. Duckbills +1",neck="Eddy Necklace",waist="Cascade Belt",
    left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
    back="Refraction Cape",}	
	
	sets.midcast_EnfeeblingMagic = { ammo="Kalboron Stone",
    main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Theo. Briault +1",hands="Lurid Mitts",legs="Artsieq Hose",feet="Theo. Duckbills +1",
    neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Aquasoul Ring",right_ring="Sangoma Ring",
    back="Refraction Cape",}
	
	sets.midcast_EnfeeblingAccuracy = { ammo="Kalboron Stone",
    main="Lehbrailg +2",sub="Mephitis Grip",head="Artsieq Hat",body="Theo. Briault +1",hands="Lurid Mitts",legs="Artsieq Hose",feet="Theo. Duckbills +1",
    neck="Imbodla Necklace",waist="Ovate Rope",left_ear="Lifestorm Earring",right_ear="Psystorm Earring",left_ring="Maquette Ring",right_ring="Sangoma Ring",
    back="Refraction Cape"}
	
	sets.midcast_Impact = {main="Atinian Staff",sub="Wizzan Grip",ammo="Witchstone",
		neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Novio Earring",
		hands="Yaoyotl Gloves",ring1="Archon Ring",ring2="Sangoma Ring",
		back="Searing Cape",waist="Maniacus Sash",legs="",feet="Umbani Boots"}
	
	sets.midcast_EnhancingRecast = {main="Beneficus",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Colossus's Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Theo. briault +1",hands="Dynasty Mitts",
		back="Swith Cape",waist="Goading Belt",legs="Artsieq hose",feet="Piety Duckbills +1"}
		
	sets.midcast_EnhancingMagic = {main="Beneficus",ammo="Incantor Stone",
		head="Nabu's tiara",neck="Colossus's Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Hyksos Robe",hands="Dynasty Mitts",
		back="Swith Cape",waist="Olympus sash",legs="Piety Pantaloons",feet="Orsn. Duckbills +2"}
	
	sets.midcast_BarSpell = {main="Beneficus",sub="Genbu's Shield",ammo="Incantor Stone",
		head="Orison Cap +2",neck="Colossus's Torque",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Orison Bliaud +2",hands="Orison Mitts +2",
		back="Merciful Cape",waist="Olympus Sash",legs="Piety Pantaloons",feet="Orison Duckbills +2"}
		
	sets.midcast_Regen = set_combine(sets.midcast_BarSpell,{main="Bolelabunga", legs="Theophany pantaloons",feet="Gendewitha galoshes",body="Piety Briault"})	
		
	sets.midcast_DebuffRemoval = {main="Yagrush",ammo="Impatiens",
		head="Orison Cap +2",neck="Malison Medallion",ear1="Enchanter Earring +1",ear2="Loquacious Earring",
		body="Orison Bliaud +2",hands="Gendewitha Gages",ring1="Ephedra Ring", ring2="Ephedra Ring",
		back="Swith Cape",waist="Cascade Belt",legs="Theophany pantaloons",feet="Gendewitha Galoshes"}

	sets.midcast_DebuffRemoval_Ionis = {main="Yagrush",ammo="Impatiens",
		head="Orison Cap +2",neck="Malison Medallion",ear1="Enchanter Earring",ear2="Loquacious Earring",
		body="Theo. Briault +1",hands="Hieros Mittens",ring1="Ephedra Ring", ring2="Ephedra Ring",
		back="Mending Cape",waist="Witful Belt",legs="Theophany pantaloons +1",feet="Gendewitha Galoshes"}
		
	sets.midcast_DebuffRemovalCaress = {main="Yagrush",ammo="Impatiens",
		head="Orison Cap +2",neck="Malison Medallion",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Orison Bliaud +2",hands="Orison Mitts +2",ring1="Ephedra Ring", ring2="Ephedra Ring",
		back="Swith Cape",waist="Cascade Belt",legs="Theophany pantaloons",feet="Gendewitha Galoshes"}
		
	sets.midcast_DebuffRemovalAccession = {main="Yagrush",ammo="Incantor Stone",
		head="Orison Cap +2",neck="Malison Medallion",ear1="Lifestorm Earring",ear2="Loquacious Earring",
		body="Orison Bliaud +2",hands="Orison Mitts +2",ring1="Ephedra Ring", ring2="Ephedra Ring",
		back="Swith Cape",waist="Cascade Belt",legs="Theophany pantaloons",feet="Gendewitha Galoshes"}
		
	sets.precast_Stun = {main="Apamajas II"}
		
	sets.midcast_Curaga = {ammo="Incantor Stone",
    main="Tamaxchi",sub="Genbu's Shield",head="Gende. Caubeen",body="Theo. Briault +1",hands="Theo. Mitts +1",legs="Orsn. Pantaln. +2",
	feet="Piety Duckbills +1",neck="Nuna Gorget +1",waist="Cascade Belt",ear2="Cmn. Earring",ear1="Lifestorm Earring",left_ring="Sirona's Ring",
	right_ring="Aquasoul Ring",back="Pahtli Cape",}
	
	sets.midcast_WCure = 
	{main="Chatoyant Staff",sub="Mephitis Grip",ammo="Incantor Stone",head="Gende. Caubeen",body="Orison Bliaud +2",hands="Bokwus Gloves",legs="Orsn. Pantaln. +2",
    feet="Piety Duckbills +1",neck="Colossus's Torque",waist="Korin Obi",left_ear="Roundel Earring",right_ear="Beatific Earring",left_ring="Sirona's Ring",
    right_ring="Ephedra Ring",back="Twilight Cape"}
		
	sets.midcast_Cure = {main="Tamaxchi",head="Gendewitha caubeen",neck="Colossus's Torque",
	body="Orison Bliaud +2",hands="Theo. Mitts +1",back="Mending Cape",legs="Orsn. Pantaln. +2",
	ring1="Sirona's Ring", ring2="Ephedra Ring", feet="Piety Duckbills +1", waist="Bishop's Sash",
	ear2="Beatific Earring", ear1="Roundel Earring"}
	
	sets.midcast_Helix = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Snow Sachet",
		head="Nahtirah Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
		body="Nares Saio",hands="",ring1="Icesoul Ring",ring2="Icesoul Ring",
		back="Twilight Cape",waist="Wanion Belt",legs="Akasha Chaps",feet="Umbani Boots"}
	
	sets.midcast_Stoneskin = set_combine(sets.midcast_BarSpell,{main="Benificus",neck="Stone Gorget",waist="Siegel Sash",legs="Haven Hose",Ear1="Earthcry Earring"})
	
	sets.Obi = {}
	sets.Obi.Light = {waist='Korin Obi',back='Twilight Cape',main='Chatoyant Staff'}
	
		-- JA Sets --
	sets.JA = {}
	sets.JA["Benediction"] = {head=""}

end

function pretarget(spell)
    if spell.name == 'Cure III' and spell.target.type == 'PLAYER' and not spell.target.charmed and AutoAga == 1 then
 
        cancel_spell()
        send_command(';input /ma "Curaga III" '..spell.target.name..';')
        return
    end
end 

function precast(spell,action)
	if spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.skill=='Healing Magic' then
		if T{"Cure", "Cure II", "Cure III", "Cure IV", "Cure V", "Cure VI"}:contains(spell.name) then
		equip(sets.precast_Cure)
		end
		if T{"Curaga", "Curaga II", "Curaga III", "Curaga IV", "Curaga V"}:contains(spell.name) then
		equip(sets.precast_Cure)
		end
		equip(sets['precast_FastCast'])
	elseif spell.skill=='Elemental Magic' and spell.cast_time < 3 then
		cast_delay(0.1)
		equip(sets.midcast_ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
		if spell.element == world.weather_element or spell_element == world.day_element and sets.Obi[spell.element] then
			equip(sets.Obi[spell.element])
		end
	elseif spell.skill == 'Enhancing Magic' then
		if T{"Barfira","Barfire","Barwater","Barwatera","Barstone","Barstonra","Baraero","Baraera","Barblizzara",
		"Barblizzard","Barthunder","Barthundra"}:contains(spell.name) then 
			equip (sets['midcast_BarSpell'])
		elseif T{"Paralyna","Silena","Viruna","Erase","Cursna","Stona","Blindna","Poisona"}:contains(spell.name) then
			equip (sets['midcast_DebuffRemoval'])
		else
		equip(sets['precast_FastCast'])
		cast_delay(0.1)
		end
	else
		equip(sets['precast_FastCast'])
		cast_delay(0.5)
	end
end

function midcast(spell,action)
	if spell.skill=='Divine Magic' then	
		equip(sets.midcast_ElementalMagic)

	elseif spell.skill=='Healing Magic' then	
		if T{"Cure","Cure II","Cure III","Cure IV","Cure V","Cure VI"}:contains(spell.name) 		then
			if  world.day =='Lightsday' or  world.weather_element == 'Light'  or Buffactive == 'Aurorastorm'then
				equip(sets.midcast_WCure)
				else
				equip(sets.midcast_Cure)
				end
		elseif T{"Curaga","Curaga II","Curaga III","Curaga IV","Curaga V"}:contains(spell.name)  then
		equip(sets.midcast_Curaga)
		elseif T{"Paralyna","Silena","Viruna","Erase","Cursna","Stona","Blindna","Poisona"}:contains(spell.name) then
			if buffactive['Accession'] then
			equip (sets['midcast_DebuffRemovalAccession'])
			elseif buffactive['Divine Caress'] then
			equip (sets['midcast_DebuffRemovalCaress'])
			else
			equip (sets['midcast_DebuffRemoval'])
			end
		elseif T{"Protectra V","Shellra V"}:contains(spell.name) then
			equip(sets['midcast_Barspell'])
		else
		equip(sets.midcast_DebuffRemoval)
		end
	elseif spell.skill=="Enfeebling Magic" then
			equip(sets.midcast_EnfeeblingMagic)
			if T{"Silence"}:contains(spell.name) then
			send_command('@wait 1;input /echo ------- Silence Landed -------')
			equip(sets.midcast_EnfeeblingAccuracy)
			end
	elseif spell.skill=="Elemental Magic" then
			equip(sets['midcast_Nuke'])
	elseif spell.skill == 'Enhancing Magic' then
		if T{"Barfira","Barfire","Barwater","Barwatera","Barstone","Barstonra","Baraero","Baraera","Barblizzara",
		"Barblizzard","Barthunder","Barthundra"}:contains(spell.name) then 
			equip (sets['midcast_BarSpell'])
		elseif T{"Paralyna","Silena","Viruna","Erase","Cursna","Stona","Blindna","Poisona"}:contains(spell.name) then
			if buffactive.Ionis then
			equip (sets['midcast_DebuffRemoval_Ionis'])
			else
			equip (sets['midcast_DebuffRemoval'])
				if buffactive['Divine Caress'] then
					equip (sets['midcast_DebuffRemovalCaress'])
				end
		elseif spell.english == 'Stoneskin' then
			equip(sets['midcast_Stoneskin'])
		elseif T{"Haste","Refresh"}:contains(spell.name) then 
			equip(sets['midcast_EnhancingRecast'])
		elseif string.find(spell.english,'Boost') then
			equip(sets['midcast_EnhancingMagic'])
		elseif string.find(spell.english,'Regen') then
			equip(sets['midcast_Regen'])
		elseif string.find(spell.english,'Protect') then
			equip (set_combine(sets['midcast_BarSpell'],{feet="Piety Duckbills +1"}))
		elseif string.find(spell.english,'Shell') then
			equip(sets['midcast_BarSpell'])
		else
		equip(sets['midcast_BarSpell'])
		end
	elseif string.find(spell.english,'Protect') then
			equip (set_combine(sets['midcast_BarSpell'],{feet="Piety Duckbills +1"}))
	elseif string.find(spell.english,'Shell') then
			equip(sets['midcast_BarSpell'])
	else
		equip(sets['midcast_Enhancing Magic'])
	end
end		

function aftercast(spell,action)
			if Armor == '119' then
			equip(sets.aftercast_Idle119)
			else
                Idle()
			end
end

function status_change(new,action)
        if new=='Idle' then
			if Armor == '119' then
			equip(sets.aftercast_Idle119)
			else
                Idle()
			end
        elseif new=='Resting' then
                equip(sets.Resting)
        end
end
function buff_change(buff,gain_or_loss)
        if buff == "Sandstorm" then
                Idle()
        end
end

function Idle()
	if buffactive['Sandstorm'] then
			equip(sets.aftercast_Move)
	elseif world.time >= (17*60) or world.time <= (7*60) then
				equip(sets.aftercast_IdleNight)
			else
			equip(sets.aftercast_IdleDay)
			end
		end
		
	

function pet_midcast(spell,action)
end

function pet_aftercast(spell,action)
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
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

-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element,set)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip(set,sets['Obi_'..spell_element])
	else
		equip(set)
	end
end
