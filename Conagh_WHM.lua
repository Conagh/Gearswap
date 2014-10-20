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
	
	sets.aftercast.resting 				= {}
	
	
	sets.precast 						= {}
	
	sets.precast.fastcast 				= {}
	
	sets.precast.enhancing 				= {}
	
	sets.precast.cure 					= {}
	
	sets.precast.healing				= {}
	
	
	sets.midcast						= {}
	
	sets.midcast.healing 				= {}
	
	sets.midcast.healing.lyna 			= {}
	
	sets.midcast.healing.caress			= {}
	
	sets.midcast.healing.cursna 		= {}
	
	sets.midcast.healing.curaga 		= {}
	
	sets.midcast.healing.cure 			= {}
	
	sets.midcast.healing.weather 		= {}
	
	
	sets.midcast.enhancing 				= {}
	
	sets.midcast.enhancing.raw 			= {}
	
	sets.midcast.enhancing.recast 		= {}
	
	sets.midcast.enhancing.barspell 	= {}
	
	sets.midcast.enhancing.regen 		= {}
	
	sets.midcast.enhancing.turtle 		= {}
	
	
	sets.midcast.divine					= {}
	
	sets.midcast.divine.holy			= {}
	
	sets.midcast.divine.repose			= {}
	
	sets.midcast.divine.flash			= {}
	
	
	sets.midcast.enfeebling				= {}
	
	sets.midcast.enfeebling.accuracy	= {}
	
	sets.midcast.enfeebling.potency		= {}
	
	
	sets.midcast.elemental				= {}
	
	sets.midcast.elemental.accuracy 	= {}
	
	
	sets.JA 							= {}
	
	sets.JA["Benediction"]				= {Head="Piety Cap +1"}
	
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


function precast(spell,action)
	if spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.skill=='Healing Magic' then
		if Cures:contains(spell.name) then
		equip(sets.precast.cure)
		elseif Curagas:conatains(spell.name) then
		equip(sets.precast.cure)
		elseif Lyna:contains(spell.name) then
		equip(sets.precast.healing)
		end
	elseif spell.skill =='Enhancing Magic' then
		equip(sets.precast.enhancing)
	else
		equip(sets.precast.fastcast)
	end
end


function midcast(spell,action)
	if spell.skill =='Healing Magic' then
	elseif spell.skill =='Enhancing Magic' then
	elseif spell.skill =='Divine Magic' then
	elseif spell.skill =='Enfeebling Magic' then
	elseif spell.skill =='Elemental Magic' then
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

function buff_change(buff,cgain_or_loss)
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