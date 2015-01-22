function get_sets()
	
		include('Cona-Include.lua')
	-- Include local Variables --
	-- Variables for pDIF you set these in your user file --
		D = 132
		fSTR = 30.25 -- An Approximated value from an iLVL 130 NM ~ Tojil --
		
	-- Variables for the Accuracy Parser HUD --

		attacks = 0
        hits = 0
        trend = {}
        trend_write_pos = 0
        define_user_functions()
        options = { usePDT = false, meleeMode = 'DD', autopilot = false,
                HUD = { x = 900, y = 100, visible = true, trendSize = 40  }
        }
		build_HUD()
	
	-- Normal File Variables --
	
	
	
	Amend										= 1
	sets.Idle 									= {}
	sets.Idle.index 							= {'Standard','DT'}
	Idle_ind 									= 1
	AccArray									= {'Standard','Accuracy'}
	AccIndex									= 1
	
	send_command('input /macro book 8;wait .1;input /macro set 1') -- Change Default Macro Book Here --

	
	-- On Loading this prints in game telling your macro's for set control --
	
		windower.add_to_chat(17, 'To Change Acc/WS sets you add the following macros')
		windower.add_to_chat(17, 'for TP sets /console gs c toggle TP set')
		windower.add_to_chat(17, 'for WS sets /console gs c C1')
		windower.add_to_chat(17, 'for PDT sets /console gs equip sets.DT.PDT')
		windower.add_to_chat(17, 'for PDT sets /console gs equip sets.DT.MDT')
		windower.add_to_chat(17, 'To revert back to TP sets /console gs equip TP sets')
	
	
	
	sets.Idle.Standard 							= {	ammo="Ginsen",
													head="Oce. headpiece +1",neck="Twilight torque", ear1="Ethereal earring", ear2="Moonshade earring",
													body="Mekosu. Harness",hands="Serpentes cuffs",ring1="Woltaris Ring",ring2="Dark Ring",
													back="Shadow mantle",waist="Flume belt",legs="Blood Cuisses",feet="Serpentes sabots"}
	
	sets.Idle.DT								= { head="Hagondes Hat",
													body="Hagondes Coat",hands="Iuitl Wristbands",legs="Blood Cuisses",feet="Battlecast Gaiters",
													neck="Twilight Torque",waist="Flume Belt",left_ear="Heartseeker earring",right_ear="Dudgeon earring",
													ring1="Patricius Ring",ring2="Dark Ring",back="Cheviot Cape"}
	
	
	sets.TP										= {}
	sets.TP.index								= {'Fodder','Normal','Lite','Medium','High','Full'}
	TP_ind										= 1
	
	sets.TP.Fodder								= {	ammo="Jukukik Feather",
													head="Thur. Chapeau +1",neck="Asperity Necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
													body="Qaaxo Harness",hands="Qaaxo Mitaines",ring1="Rajas Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Windbuffet Belt +1",legs="Iuitl Tights",feet="Battlecast Gaiters"}
													
	sets.TP.Normal								= { ammo="Jukukik Feather",
													head="Whirlpool Mask",neck="Asperity Necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
													body="Qaaxo Harness",hands="Iuitl Wristbands",ring1="Rajas Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Windbuffet Belt +1",legs="Iuitl Tights",feet="Battlecast Gaiters"}
																										
	sets.TP.Lite								= {	ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Asperity Necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
													body="Qaaxo Harness",hands="Aetosaur Gloves +1",ring1="Rajas Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Windbuffet Belt +1",legs="Iuitl Tights",feet="Battlecast Gaiters"}

	sets.TP.Medium								= {	ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Asperity Necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
													body="Qaaxo Harness",hands="Aetosaur Gloves +1",ring1="Rajas Ring",ring2="Epona's Ring",
													back="Letalis Mantle",waist="Windbuffet Belt +1",legs="Manibozho Brais",feet="Battlecast Gaiters"}

	sets.TP.High								= {	ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Asperity Necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
													body="Qaaxo Harness",hands="Aetosaur Gloves +1",ring1="Rajas Ring",ring2="Epona's Ring",
													back="Letalis Mantle",waist="Windbuffet Belt +1",legs="Manibozho Brais",feet="Assim. Charuqs +1"}

	sets.TP.Full								= {ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Asperity Necklace", ear2="Suppanomimi", ear1="Zennaroi earring",
													body="Luhlaza Jubbah +1",hands="Buremte Gloves",ring1="Rajas Ring",ring2="Epona's Ring",
													back="Letalis Mantle",waist="Windbuffet Belt +1",legs="Manibozho Brais",feet="Assim. Charuqs +1"}
	
	
	sets.Hybrid									= {}
	
	
	sets.DT										= {}
	
	sets.DT.PDT									= {	Head="Hagondes Hat", neck="Twilight Torque",ear1="", ear2="",
													body="Hagondes Coat", hands="Iuitl Wristbands",ring1="Patricius Ring",ring2="Dark Ring",
													back="Shadow Mantle",waist="Flume Belt",legs="Quiahuiz Trousers",feet="Battlecast Gaiters"}
	
	sets.DT.MDT									= {	Head="Hagondes Hat", neck="Twilight Torque",ear1="Merman's Earring", ear2="Coral Earring",
													body="Mekosu. Harness", hands="Hagondes Cuffs +1",ring1="Archon Ring",ring2="Dark Ring",
													back="Shadow Mantle",waist="Flume Belt",legs="Quiahuiz Trousers",feet="Hagondes Sabots +1"}
	
	
	sets.WS										= {}

	
	sets.WS['Requiescat']						= {	Ammo="Aqua Sachet",
													head="Whirlpool Mask",neck="Soil Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
													body="Luhlaza Jubbah +1",hands="Qaaxo Mitaines",ring1="Leviathan Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Soil Belt",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}
													
	sets.WS['Requiescat']['Accuracy']			= {	Ammo="Jukukik Feather",
													head="Whirlpool Mask",neck="Soil Gorget",ear1="Bladeborn Earring",ear2="Steelflash Earring",
													body="Luhlaza Jubbah +1",hands="Qaaxo Mitaines",ring1="Mars's Ring",ring2="Epona's Ring",
													back="Letalis Mantle",waist="Soil Belt",legs="Qaaxo Tights",feet="Assim. Charuqs +1"}
	
	
	sets.WS['Chant du Cygne']					= {	Ammo="Jukukik Feather",
													head="Uk'uxkaj Cap",neck="Snow Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
													body="Luhlaza Jubbah +1",hands="Luh. Bazubands +1",ring1="Thundersoul Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Windbuffet Belt +1",legs="Manibozho Brais",feet="Assim. Charuqs +1"}
													
	sets.WS['Chant du Cygne']['Accuracy']		= {	Ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Snow Gorget",ear1="Bladeborn Earring",ear2="STeelflash Earring",
													body="Luhlaza Jubbah +1",hands="Buremte Gloves",ring1="Thundersoul Ring",ring2="Mars's Ring",
													back="Letalis Mantle",waist="Snow Belt",legs="Manibozho Brais",feet="Assim. Charuqs +1"}		
	
	
	sets.WS['Savage Blade']						= {	Ammo="Aqua Sachet",
													head="Whirlpool Mask",neck="Soil Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
													body="Luhlaza Jubbah +1",hands="Qaaxo Mitaines",ring1="Leviathan Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Soil Belt",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}
													
	sets.WS['Savage Blade']['Accuracy']			= {	Ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Soil Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
													body="Luhlaza Jubbah +1",hands="Qaaxo Mitaines",ring1="Mars's Ring",ring2="Epona's Ring",
													back="Letalis Mantle",waist="Soil Belt",legs="Qaaxo Tights",feet="Assim. Charuqs +1"}

	
	sets.WS['Sanguine Blade']					= {	ammo="Erlene's notebook",
													head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
													body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Archon Ring",ring2="Acumen Ring",
													back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}
		
	sets.WS['Sanguine Blade']['Accuracy']		= { ammo="Erlene's notebook",
													head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
													body="Mekosu. Harness",hands="Hagondes Cuffs +1",ring1="Archon Ring",ring2="Sangoma Ring",
													back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}
	
	
	sets.WS['Expiacion']						= {}
	sets.WS['Expiacion']['Accuracy']			= {}
	
	
	sets.WS['Realmrazer']						= {	Ammo="Aqua Sachet",
													head="Whirlpool Mask",neck="Soil Gorget",ear1="Brutal Earring",ear2="Moonshade Earring",
													body="Luhlaza Jubbah +1",hands="Qaaxo Mitaines",ring1="Leviathan Ring",ring2="Epona's Ring",
													back="Atheling Mantle",waist="Soil Belt",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}
													
	sets.WS['Realmrazer']['Accuracy']			= {	Ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Soil Gorget",ear1="Bladeborn Earring",ear2="Steelflash Earring",
													body="Luhlaza Jubbah +1",hands="Qaaxo Mitaines",ring1="Mars's Ring",ring2="Epona's Ring",
													back="Letalis Mantle",waist="Soil Belt",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}
	
	
	sets.WS['Flash Nova']						= {	ammo="Erlene's notebook",
													head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
													body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Archon Ring",ring2="Acumen Ring",
													back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}

	sets.WS['Flash Nova']['Accuracy']			= {	ammo="Erlene's notebook",
													head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
													body="Mekosu. Harness",hands="Hagondes Cuffs +1",ring1="Archon Ring",ring2="Sangoma Ring",
													back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}
	
	
	sets.JA										= {}
	sets.JA['Chain Affinity']					= {	feet="Assim. Charuqs +1"}
	sets.JA['Burst Affinity']					= {	feet="Mavi Basmak +2"}
	sets.JA['Efflux']							= {	legs="Mavi Tayt +2"}
	sets.JA['Azure Lore']						= {	feet="Luhlaza Charuqs +1"}
	sets.JA['Diffusion']						= {	feet="Luhlaza Charuqs +1"}
	
	
	sets.Precast								= {}
	sets.Precast.FC								= {}
	sets.Precast.FC['Normal']					= {	head="Haruspex hat",neck="Jeweled collar", ear1="Loquac. Earring",ammo="Impatiens",
													body="Luhlaza jubbah +1",hands="Thaumas Gloves",ring1="Prolix Ring",
													back="Swith Cape",waist="Witful Belt",legs="Enif Cosciales",feet="Chelona Boots"}

	sets.Precast.FC['Blue Magic']				= {	head="Haruspex hat",neck="Jeweled collar", ear1="Loquac. Earring",ammo="Impatiens",
													body="Mavi mintan +2",hands="Thaumas Gloves",ring1="Prolix Ring",
													back="Swith Cape",waist="Witful Belt",legs="Enif Cosciales",feet="Chelona Boots"}	

	
	
	sets.Midcast								= {}
	sets.Midcast['Normal']						= {}
	sets.Midcast['Blue Magic']					= {}
	sets.Midcast['Blue Magic']['STR']			= {	ammo="Mavi tathlum",
													head="Whirlpool Mask",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
													body="Assim. Jubbah",hands="Luh. Bazubands +1",ring1="Ifrit Ring",ring2="Ifrit Ring +1",
													back="Cornflower Cape",waist="Prosilio Belt +1",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}

	sets.Midcast['Blue Magic']['DEX']			= {	ammo="Cheruski Needle",
													head="Whirlpool Mask",neck="Ire torque +1",ear1="Flame Pearl",ear2="Flame Pearl",
													body="Assim. Jubbah",hands="Luh. Bazubands +1",ring1="Rajas Ring",ring2="Ifrit Ring +1",
													back="Cornflower Cape",waist="Pipilaka Belt",legs="Manibozho Brais",feet="Assim. Charuqs +1"}
													
	sets.Midcast['Blue Magic']['VIT']			= {	ammo="Mavi tathlum",
													head="Whirlpool Mask",neck="Tjukurrpa Medal",ear1="Flame pearl",ear2="Flame pearl",
													body="Assim. Jubbah",hands="Luh. Bazubands +1",ring1="Spiral Ring",ring2="Ifrit Ring +1",
													back="Cornflower Cape",waist="Caudata Belt",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}

	sets.Midcast['Blue Magic']['MND']			= { ammo="Mavi tathlum",
													head="Luh. Keffiyeh +1",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
													body="Assim. Jubbah",hands="Umuthi gloves",ring1="Vulcan's ring",ring2="Levia. ring",
													back="Cornflower Cape",waist="Chuq'aba Belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}

	sets.Midcast['Blue Magic']['AGI']			= { ammo="Mavi tathlum",
													head="Lithelimb cap",neck="Tjukurrpa Medal",ear1="Flame pearl",ear2="Flame pearl",
													body="Assim. Jubbah",hands="Iuitl wristbands",ring1="Breezesoul ring",ring2="Auster's ring",
													back="Cornflower Cape",waist="Prosilio Belt +1",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}

	sets.Midcast['Blue Magic']['INT']			= {	ammo="Erlene's notebook",
													head="Hagondes hat",neck="Eddy necklace",ear1="Hecate's earring",ear2="Friomisi earring",
													body="Hagondes Coat",hands="Hagondes cuffs +1",ring1="Archon ring",ring2="Acumen ring",
													back="Cornflower Cape",waist="Penitent's rope",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}

	sets.Midcast['Blue Magic']['Cures']			= { head="Uk'uxkaj Cap",body="Chelona Blazer",hands="Weath. Cuffs +1",legs="Magavan Slops",
													feet="Hagondes Sabots +1",neck="Colossus's Torque",waist="Chuq'aba Belt",left_ear="Cmn. Earring",
													left_ring="Levia. Ring",right_ring="Ephedra Ring",back="Tempered Cape +1"}

	sets.Midcast['Blue Magic']['Self Cures']	= {	head="Uk'uxkaj Cap",body="Chelona Blazer",hands="Buremte Gloves",legs="Magavan Slops",
													feet="Hagondes Sabots +1",neck="Colossus's Torque",waist="Chuq'aba Belt",left_ear="Cmn. Earring",
													left_ring="Levia. Ring",right_ring="Ephedra Ring",back="Tempered Cape +1"}
													
	sets.Midcast['Blue Magic']['Stun']			= {	head="Whirlpool Mask",body="Mekosu. Harness",hands="Hagondes Cuffs +1",legs="Iuitl Tights",
													feet="Battlecast Gaiters",neck="Eddy Necklace",waist="Dynamic Belt",left_ear="Lifestorm Earring",
													right_ear="Psystorm Earring",left_ring="Sangoma Ring",right_ring="Mars's Ring",back="Cornflower Cape"}

	sets.Midcast['Blue Magic']['Heavy Strike']	= {	ammo="Honed Tathlum",
													head="Whirlpool Mask",neck="Tjukurrpa Medal",ear1="Flame pearl",ear2="Flame pearl",
													body="Assim. Jubbah",hands="Luh. Bazubands +1",ring1="Rajas Ring",ring2="Ifrit Ring +1",
													back="Letalis Mantle",waist="Prosilio Belt +1",legs="Quiahuiz Trousers",feet="Assim. Charuqs +1"}
													
	sets.Midcast['Blue Magic']['Whisker']		= {	ammo="Erlene's Notebook",
													head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
													body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Thundersoul Ring",ring2="Acumen Ring",
													back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}

	sets.Midcast['Blue Magic']['White Wind']	= {}
	
	sets.Midcast['Blue Magic']['Magic Acc']		= {	head="Whirlpool Mask",body="Mekosu. Harness",hands="Hagondes Cuffs +1",legs="Iuitl Tights",
													feet="Battlecast Gaiters",neck="Eddy Necklace",waist="Dynamic Belt",left_ear="Lifestorm Earring",
													right_ear="Psystorm Earring",left_ring="Sangoma Ring",right_ring="Mars's Ring",back="Cornflower Cape"}

	sets.Midcast['Blue Magic']['Skill']			= {	ammo="Mavi tathlum",head="Whirlpool Mask",neck="Jeweled collar",ear1="Loquac. earring",
													body="Assim. Jubbah",hands="Ayao's gages",ring1="Prolix ring",back="Cornflower Cape",
													waist="Twilight belt",legs="Mavi tayt +2",feet="Luhlaza charuqs +1"}

	sets.Midcast['Blue Magic']['Recast']		= {	head="Luh. Keffiyeh +1",neck="Jeweled collar",ear1="Loquac. earring",
													body="Luhlaza Jubbah +1",hands="Thaumas Gloves",ring1="Prolix ring",
													back="Swith cape",waist="Twilight belt",legs="Enif Cosciales",feet="Luhlaza charuqs +1"}

	
	
	sets.Utility								= {}
	sets.Utility['Stoneskin']					= {}
	sets.Utility['Phalanx']						= {}
	
	sets.items									= {}
	sets.items['Misc']							= {"Echo Drops","Sole Sushi","Red Curry Bun","Remedy","Usonmunku","Nehushtan","Buramenk'ah"}
	
end

-- These are your spell tables, add spells in here for each type, Blue spells are seperated by their Properties I.E STR Mods only etc --

STR												= S{'Vertical Cleave','Death Scissors','Empty Thrash','Dimensional Death','Quadrastrike','Bloodrake'}
DEX												= S{'Disseverment','Hysteric Barrage','Frenetic Rip','Seedspray','Vanity Dive','Goblin Rush','Paralyzing Triad','Thrashing Assault'}
VIT												= S{'Quad. Continuum','Delta Thrust','Cannonball','Glutinous Dart'}
MND												= S{'Whirl of Rage'}
AGI												= S{'Benthic Typhoon','Final Sting','Spiral Spin'}
INT												= S{'Gates of Hades','Leafstorm','Firespit','Acrid Stream','Regurgutation','Corrosive Ooze','Thermal Pulse','Magic Hammer','Everyone. Grudge','Water Bomb','Dark Orb','Thunderbolt','Tem. Upheaval','Embalming Earth','Fowl Waters','Rending Deluge','Droning Whirlwind','Subduction'}
Cures											= S{'Magic Fruit','Plenilune Embrace','Wild Carrot','Pollen','Cure III','Cure IV'}
Stun											= S{'Head Butt','Sudden Lunge','Blitzstrahl'}	
Whisker											= S{'Charged Whisker','Retinal Glare'}
White											= S{'White Wind'}
MACC											= S{'Frightfull Roar','Infrasonics','Barbed Crescent','Tourbillion','Cimicine Discharge','Sub-zero Smash','Filamented Hold','Mind Blast','Sandspin','Hecatomb Wave','Cold Wave','Terror Touch','Absolute Terror'}
Skill											= S{'MP Drainkiss','Digest','Blood Saber','Blood Drain','Osmosis','Occultation','Magic Barrier','Diamondhide','Metallic Body'}
Recast											= S{'Cocoon','Harden Shell','Animating Wail','Battery Charge','Nat. Meditation','Carcharian Verve','O. Countrstance','Barrier Tusk','Regeneration','Saline Coat','Erratic Flutter'}
Heavy											= S{'Heavy Strike'}


function precast(spell)
	if spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(8,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			equip(equipSet)
			if (spell.english == "Requiescat") then
				if pDIF > 2.1 then
					if Amend == 1 then
					equipSet = set_combine(equipSet,{ear1="Bladeborn Earring",ear1="Steelflash Earring"})
					else
					equip(equipSet)
					end
				end
			equip(equipSet)
			end
		end
	end
	if spell.type == 'JobAbility' then
	    if spell.type == 'JobAbility' and windower.ffxi.get_ability_recasts()[spell.recast_id] > 0 then
		cancel_spell()
		return
		end
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
	if spell.type == 'Magic' then
		if spell.skill == 'Blue Magic' then
		equip(sets.Precast.FC['Blue Magic'])
		end
	end
	if string.find(spell.english, 'Utsusemi') then
		if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
		cancel_spell()
		add_to_chat(8, spell.english .. ' Canceled: [3+ Images]')
		end
		equip(sets.Precast.FC['Normal'])
		
	equip(sets.Precast.FC['Normal'])
	end
end

function midcast(spell,act)
	if spell.skill == 'Blue Magic' then
		if STR:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['STR'])
			if buffactive['Chain Affinity'] then
			equip(sets.JA['Chain Affinity'])
			end
			if buffactive['Efflux'] then
			equip(sets.JA['Efflux'])
			end
		elseif DEX:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['DEX'])
			if buffactive['Chain Affinity'] then
			equip(sets.JA['Chain Affinity'])
			end
			if buffactive['Efflux'] then
			equip(sets.JA['Efflux'])
			end
		elseif VIT:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['VIT'])
			if buffactive['Chain Affinity'] then
			equip(sets.JA['Chain Affinity'])
			end
			if buffactive['Efflux'] then
			equip(sets.JA['Efflux'])
			end		
		elseif MND:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['MND'])
			if buffactive['Chain Affinity'] then
			equip(sets.JA['Chain Affinity'])
			end
			if buffactive['Efflux'] then
			equip(sets.JA['Efflux'])
			end
		elseif AGI:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['AGI'])
			if buffactive['Chain Affinity'] then
			equip(sets.JA['Chain Affinity'])
			end
			if buffactive['Efflux'] then
			equip(sets.JA['Efflux'])
			end
		elseif Heavy:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Heavy Strike'])
			if buffactive['Chain Affinity'] then
			equip(sets.JA['Chain Affinity'])
			end
			if buffactive['Efflux'] then
			equip(sets.JA['Efflux'])
			end
		elseif INT:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['INT'])
			if buffactive['Burst Affinity'] then
			equip(sets.JA['Burst Affinity'])
			end
		elseif Stun:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Stun'])
		elseif Whisker:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Whisker'])
			if buffactive['Burst Affinity'] then
			equip(sets.JA['Burst Affinity'])
			end
		elseif MACC:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Magic Accuracy'])
			if buffactive['Burst Affinity'] then
			equip(sets.JA['Burst Affinity'])
			end
		elseif Skill:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Skill'])
			if buffactive['Burst Affinity'] then
			equip(sets.JA['Burst Affinity'])
			end
		elseif Skill:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Skill'])
			if buffactive['Diffusion'] then
			equip(sets.JA['Diffusion'])
			end
		elseif Recast:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Recast'])
			if buffactive['Diffusion'] then
			equip(sets.JA['Diffusion'])
			end
		elseif Cures:contains(spell.name) then
		equip(sets.Midcast['Blue Magic']['Cures'])
			if spell.target.name == player.name then
				equip(sets.Midcast['Blue Magic']['Self Cures'])
			end
		end
	end
	if spell.type == "Ninjutsu" then
			if string.find(spell.english,'Utsusemi') then
				if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
					send_command('@wait 1.0; cancel Copy Image*')
				end
			end
		end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
	
	if spell.action_type == 'Weaponskill' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end

function self_command(command)
	if command == 'Amend' then
		if Amend == 1 then
			Amend = 0
			add_to_chat(8,'Amended WS sets:  [Off]')
		else
			Amend = 1
			add_to_chat(158,'Amended WS sets:  [On]')
		end
	elseif command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		add_to_chat(158,'TP Accuracy Level: '..sets.TP.index[TP_ind])
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'toggle Idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
			end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(sets.Idle[sets.Idle.index[Idle_ind]])

	elseif command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(039,'Accuracy Level: '..AccArray[AccIndex])
		status_change(player.status)
		
	elseif command == 'equip TP set' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'equip Idle set' then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end	