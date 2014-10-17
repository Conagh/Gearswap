function get_sets()

AutoFudo = 0

	send_command('bind f9 gs c toggle TP set')
	send_command('bind f10 gs c toggle Idle set')
	send_command('bind f11 gs c toggle CDC set')
	send_command('bind f12 gs c toggle Req set')
	send_command('bind !f12 gs c toggle Rea set')
	
	function file_unload()
      
 
        send_command('unbind ^f9')
        send_command('unbind ^f10')
		send_command('unbind ^f11')
		send_command('unbind ^f12')
       
        send_command('unbind !f9')
        send_command('unbind !f10')
		send_command('unbind !f11')
        send_command('unbind !f12')
 
        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')
        send_command('unbind f12')
 
       
 
	end	
		
	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Standard','DT'}
	Idle_ind = 1			
	
	sets.Idle.Standard = {ammo="Ginsen",
						  head="Oce. headpiece +1",neck="Twilight torque", ear1="Ethereal earring", ear2="Moonshade earring",
						  body="Luhlaza jubbah +1",hands="Serpentes cuffs",ring1="Dark ring",ring2="Dark ring",
						  back="Shadow mantle",waist="Flume belt",legs="Blood cuisses",feet="Serpentes sabots"}
						  
	sets.Idle.DT = {    sub="Genbu's Shield",
    ammo="Cheruski Needle",
    head="Hagondes hat",
    body="Hagondes Coat",
    hands="Iuitl Wristbands",
    legs="Blood cuisses",
    feet="Hag. Sabots +1",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear="Heartseeker Earring",
    right_ear="Dudgeon Earring",
    left_ring="Dark Ring",
    right_ring="Jelly Ring",
    back="Cheviot Cape",}
							
							
							
							
	
	
    --TP Sets--
    sets.TP = {}
 
    sets.TP.index = {'Standard', 'StandardMaxBuff', 'AccuracyLite', 'AccuracyLiteMaxBuff', 'AccuracyMid', 'AccuracyMidMaxBuff', 'AccuracyHigh', 'AccuracyHighMaxBuff', 'AccuracyExtreme', 'AccuracyFull', 'DT', 'DTAccuracy'}
    --1='Standard', 2='StandardMaxBuff', 3='AccuracyLite', 4='AccuracyLiteMaxBuff', 5='AccuracyMid', 6='AccuracyMidMaxBuff', 7='AccuracyHigh', 8='AccuracyHighMaxBuff', 9='AccuracyExtreme', 10='AccuracyFull', 11='DT', 12='DTAccuracy'}
	
    TP_ind = 1
	
	-- As you can see here we are using set_combine this is known as Base Set and New set from Spellcast, This allows you to combine Set.earring, with the new gear--
	-- The New gear is then structured out ~ in this instance we have a set of gear with a Reference to an index, which will check what your variable is for --
	-- Earrings and will equip those into that slow--
     
    sets.TP.Standard = {ammo="Cheruski needle", Ear1="Brutal Earring", Ear2="Suppanomimi",
                        head="Thurandaut chapeau +1",neck="Asperity necklace",
                        body="Thaumas coat",hands="Aeto. Gloves +1",ring2="Epona's ring",ring1="Rajas ring",
                        back="Atheling mantle",waist="Twilight belt",legs="Iuitl tights",feet="Qaaxo leggings"}
						
	sets.TP.StandardMaxBuff  = {ammo="Cheruski needle",Ear1="Heartseeker Earring", Ear2="Dudgeon Earring",
                        head="Whirlpool Mask",neck="Asperity necklace",
                        body="Thaumas coat",hands="Aeto. Gloves +1",ring2="Epona's ring",ring1="Rajas ring",
                        back="Atheling mantle",waist="Twilight belt",legs="Iuitl tights",feet="Qaaxo leggings"}
                         
    sets.TP.AccuracyLite = {ammo="Honed Tathlum",Ear1="Brutal Earring", Ear2="Suppanomimi",
                        head="Thurandaut chapeau +1",neck="Asperity necklace",
                        body="Thaumas coat",hands="Aeto. Gloves +1",ring2="Epona's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Hurch'lan Sash",legs="Iuitl tights",feet="Qaaxo leggings"}
						
	sets.TP.AccuracyLiteMaxBuff = {ammo="Honed Tathlum",Ear1="Heartseeker Earring", Ear2="Dudgeon Earring",
                        head="Whirlpool Mask",neck="Asperity necklace",
                        body="Thaumas coat",hands="Aeto. Gloves +1",ring2="Epona's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Windbuffet Belt",legs="Iuitl tights",feet="Qaaxo leggings"}
						
	sets.TP.AccuracyMid = {ammo="Honed Tathlum",Ear1="Brutal Earring", Ear2="Suppanomimi",
                        head="Thurandaut chapeau +1",neck="Asperity necklace",
                        body="Thaumas coat",hands="Iuitl Wristbands",ring2="Epona's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Hurch'lan Sash",legs="Manibozho Brais",feet="Qaaxo leggings"}
   
   	sets.TP.AccuracyMidMaxBuff = {ammo="Honed Tathlum",Ear1="Heartseeker Earring", Ear2="Dudgeon Earring",
                        head="Whirlpool Mask",neck="Asperity necklace",
                        body="Thaumas coat",hands="Iuitl Wristbands",ring2="Epona's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Windbuffet Belt",legs="Manibozho Brais",feet="Qaaxo leggings"}
   
	sets.TP.AccuracyHigh = {ammo="Honed Tathlum",Ear1="Brutal Earring", Ear2="Suppanomimi",
                        head="Thurandaut chapeau +1",neck="Iqabi Necklace",
                        body="Thaumas coat",hands="Luh. Bazubands +1",ring2="Epona's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Hurch'lan Sash",legs="Manibozho Brais",feet="Qaaxo leggings"}
						
	sets.TP.AccuracyHighMaxBuff = {ammo="Honed Tathlum",Ear1="Heartseeker Earring", Ear2="Dudgeon Earring",
                        head="Whirlpool Mask",neck="Iqabi Necklace",
                        body="Thaumas coat",hands="Luh. Bazubands +1",ring2="Epona's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Windbuffet Belt",legs="Manibozho Brais",feet="Qaaxo leggings"}
    
	sets.TP.AccuracyExtreme = {ammo="Honed Tathlum",Ear1="Heartseeker Earring", Ear2="Dudgeon Earring",
                        head="Whirlpool Mask",neck="Iqabi Necklace",
                        body="Thaumas coat",hands="Luh. Bazubands +1",ring2="Mars's ring",ring1="Rajas ring",
                        back="Letalis mantle",waist="Windbuffet belt",legs="Manibozho Brais",feet="Qaaxo leggings"}
	
	sets.TP.AccuracyFull = {ammo="Honed Tathlum", head="Whirlpool Mask",body="Luhlaza Jubbah +1",hands="Luh. Bazubands +1",
						legs="Manibozho Brais",feet="Assim. Charuqs +1",neck="Peacock Charm",waist="Hurch'lan Sash",left_ear="Heartseeker Earring",
						right_ear="Dudgeon Earring",left_ring="Rajas Ring",right_ring="Mars's Ring",back="Letalis Mantle",}
	                         
    sets.TP.DT = {
    sub="Genbu's Shield",
    ammo="Cheruski Needle",
    head="Hagondes hat",
    body="Hagondes Coat",
    hands="Iuitl Wristbands",
    legs="Blood cuisses",
    feet="Hag. Sabots +1",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear="Heartseeker Earring",
    right_ear="Dudgeon Earring",
    left_ring="Dark Ring",
    right_ring="Jelly Ring",
    back="Cheviot Cape",
}
                   
    sets.TP.DTAccuracy = {ammo="Honed Tathlum",
                          head="Iuitl headgear",neck="Twilight torque", ear1="Dudgeon earring", ear2="Heartseeker earring",
                          body="Hagondes coat",hands="Iuitl wristbands",ring1="Dark ring",ring2="Dark ring",
                          back="Mollusca mantle",waist="Hurch'lan sash",legs="Iuitl tights",feet="Iuitl gaiters"}
     
     
     
	
	
	--Weaponskill Sets--
	sets.WS = {}
	
	sets.Requiescat = {}
	
	sets.Requiescat.index = {'Attack','Accuracy'}
	Requiescat_ind = 1
	
	sets.Requiescat.Attack = {ammo="Cheruski needle",
						      head="Whirlpool mask",neck="Soil gorget",ear1="Brutal earring",ear2="Moonshade earring",
						 	  body="Luhlaza jubbah +1",hands="Qaaxo mitaines",ring2="Epona's ring",ring1="Levia. ring",
						   	  back="Vespid mantle",waist="Soil belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
								  
	sets.Requiescat.Accuracy = {ammo="Honed tathlum",
						        head="Whirlpool mask",neck="Soil gorget",ear1="Brutal earring",ear2="Moonshade earring",
							    body="Luhlaza jubbah +1",hands="Qaaxo mitaines",ring2="Epona's ring",ring1="Levia. ring",
							    back="Vespid mantle",waist="Soil belt",legs="Quiahuiz trousers",feet="Assim. charuqs +1"}
							 
	sets.ChantDuCygne = {}
	
	sets.ChantDuCygne.index = {'Attack','Accuracy'}
	ChantDuCygne_ind = 1
	
	sets.ChantDuCygne.Attack = {ammo="Jukukik feather",
						        head="Whirlpool Mask",neck="Breeze gorget",ear1="Brutal Earring",ear2="Moonshade earring",
							    body="Luhlaza jubbah +1",hands="Luh. bazubands +1",ring2="Epona's ring",ring1="Rajas ring",
							    back="Rancorous Mantle",waist="Windbuffet belt",legs="Manibozho brais",feet="Assim. charuqs +1"}
							   
	sets.ChantDuCygne.Accuracy = {ammo="Jukukik feather",
						          head="Whirlpool Mask",neck="Breeze gorget",ear1="Brutal earring",ear2="Moonshade earring",
							      body="Luhlaza jubbah +1",hands="Buremte gloves",ring2="Epona's ring",ring1="Rajas ring",
							      back="Rancorous mantle",waist="Snow belt",legs="Manibozho brais",feet="Assim. charuqs +1"}
							   
	sets.WS.SanguineBlade = {}
	
	sets.WS.SanguineBlade = {ammo="Erlene's notebook",
						     head="Hagondes hat",neck="Eddy necklace",ear1="Hecate's earring",ear2="Friomisi earring",
							 body="Hagondes Coat",hands="Hagondes cuffs +1",ring1="Archon ring",ring2="Acumen ring",
							 back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}
		
	sets.WS.CircleBlade = {}		
			
	sets.WS.CircleBlade = {ammo="Cheruski needle",
						   head="Uk'uxkaj cap",neck="Soil Gorget",ear1="Moonshade earring",ear2="Brutal earring",
						   body="Assim. Jubbah",hands="Luh. bazubands +1",ring2="Epona's ring",ring2="Pyrosoul ring",
						   back="Atheling mantle",waist="Soil belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
						   
	sets.WS.Expiacion = {}		
			
	sets.WS.Expiacion = {ammo="Cheruski needle",
					     head="Uk'uxkaj cap",neck="Soil Gorget",ear1="Moonshade earring",ear2="Brutal earring",
						 body="Assim. Jubbah",hands="Luh. bazubands +1",ring2="Epona's ring",ring2="Pyrosoul ring",
						 back="Atheling mantle",waist="Soil belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
						 
	sets.Realmrazer = {}
	
	sets.Realmrazer.index = {'Attack','Accuracy'}
	Realmrazer_ind = 1
	
	sets.Realmrazer.Attack = {ammo="Cheruski needle",
						      head="Whirlpool mask",neck="Flame gorget",ear1="Bladeborn earring",ear2="Steelflash Earring",
						 	  body="Luhlaza jubbah +1",hands="Luh. Bazubands +1",ring1="Levia. ring",ring2="Aquasoul ring",
						   	  back="Atheling mantle",waist="Light belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
							  
	sets.Realmrazer.Accuracy = {ammo="Honed tathlum",
						        head="Whirlpool mask",neck="Flame gorget",ear1="Bladeborn earring",ear2="Steelflash earring",
							    body="Luhlaza jubbah +1",hands="Luh. Bazubands +1",ring1="Levia. ring",ring2="Aquasoul ring",
							    back="Letalis mantle",waist="Light belt",legs="Quiahuiz trousers",feet="Assim. charuqs +1"}
							
	sets.WS.FlashNova = {}
	
	sets.WS.FlashNova = {ammo="Erlene's notebook",
						 head="Hagondes hat",neck="Eddy necklace",ear1="Hecate's earring",ear2="Friomisi earring",
						 body="Hagondes Coat",hands="Hagondes cuffs +1",ring1="Spiral ring",ring2="Acumen ring",
						 back="Cornflower Cape",waist="Aswang sash",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}
								
								
								
								
								
	--Blue Magic Sets--
	sets.BlueMagic = {}
	
	sets.BlueMagic.STR = {ammo="Mavi tathlum",
						 head="Luh. Keffiyeh +1",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
					      body="Assim. Jubbah",hands="Umuthi gloves",ring1="Vulcan's ring",ring2="Pyrosoul ring",
						  back="Cornflower Cape",waist="Pipilaka belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
						  
	sets.BlueMagic.STRDEX = {ammo="Cheruski needle",
						    head="Luh. Keffiyeh +1",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
					        body="Assim. Jubbah",hands="Luh. bazubands +1",ring1="Pyrosoul ring",ring1="Rajas ring",
						    back="Cornflower Cape",waist="Pipilaka belt",legs="Manibozho brais",feet="Luhlaza charuqs +1"}
							
	sets.BlueMagic.STRVIT = {ammo="Mavi tathlum",
						     head="Luh. Keffiyeh +1",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
					         body="Assim. Jubbah",hands="Umuthi gloves",ring1="Pyrosoul ring",ring2="Spiral ring",
						     back="Cornflower Cape",waist="Caudata belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
							 
	sets.BlueMagic.STRMND = {ammo="Mavi tathlum",
						     head="Luh. Keffiyeh +1",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
					         body="Assim. Jubbah",hands="Umuthi gloves",ring1="Vulcan's ring",ring2="Levia. ring",
						     back="Cornflower Cape",waist="Chaac belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
								
	sets.BlueMagic.AGI = {ammo="Mavi tathlum",
						  head="Lithelimb cap",neck="Ire torque +1",ear1="Flame pearl",ear2="Flame pearl",
					      body="Assim. Jubbah",hands="Iuitl wristbands",ring1="Breezesoul ring",ring2="Auster's ring",
						  back="Cornflower Cape",waist="Pipilaka belt",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
						  
	sets.BlueMagic.INT = {ammo="Erlene's notebook",
						  head="Hagondes hat",neck="Eddy necklace",ear1="Hecate's earring",ear2="Friomisi earring",
						  body="Hagondes Coat",hands="Hagondes cuffs +1",ring1="Archon ring",ring2="Acumen ring",
						  back="Cornflower Cape",waist="Penitent's rope",legs="Hagondes Pants +1",feet="Hag. Sabots +1"}
						  
	sets.BlueMagic.Cures = {ammo="Aqua sachet",
						    head="Uk'uxkaj cap",neck="Aife's medal",ear1="Loquac. earring",ear2="Novia earring",
						    body="Chelona Blazer",hands="Weath. cuffs +1",ring1="Sirona ring",ring2="Aquasoul ring",
						    back="Tempered cape",waist="Pythia sash +1",legs="Quiahuiz trousers",feet="Hag. Sabots +1"}
							
	sets.BlueMagic.SelfCures = {ammo="Aqua sachet",
								head="Uk'uxkaj cap",neck="Aife's medal",ear1="Loquac. earring",ear2="Novia earring",
								body="Chelona Blazer",hands="Buremte Gloves",ring1="Sirona ring",ring2="Levia. Ring",
								back="Tempered Cape",waist="Chuq'aba Belt",legs="Quiahuiz trousers",feet="Hag. Sabots +1"}
							
	sets.BlueMagic.Stun = {ammo="Mavi tathlum",
						   head="Assim. keffiyeh",neck="Eddy necklace",ear1="Lifestorm earring", ear2="Psystorm Earring",
						   body="Assim. Jubbah",hands="Mv. bazubands +2",ring1="Prolix ring",ring2="Sangoma ring",
						   back="Cornflower Cape",waist="Twilight belt",legs="Mavi tayt +2",feet="Luhlaza charuqs +1"}
						   
	sets.BlueMagic.HeavyStrike = {ammo="Honed tathlum",
						          head="Whirlpool mask",neck="Ire torque +1",ear1="Flame pearl",ear2="Heartseeker earring",
						          body="Assim. Jubbah",hands="Luh. Bazubands +1",ring1="Pyrosoul ring",ring2="Pyrosoul ring",
						          back="Cornflower Cape",waist="Dynamic belt",legs="Manibozho brais",feet="Assim. charuqs +1"}
								  
	sets.BlueMagic.ChargedWhisker = {ammo="Erlene's notebook",
						             head="Hagondes Hat",neck="Eddy necklace",ear1="Hecate's earring",ear2="Friomisi earring",
						             body="Hagondes Coat",hands="Hagondes Cuffs +1",ring1="Thundersoul ring",ring1="Rajas ring",
						             back="Cornflower Cape",waist="Pipilaka belt",legs="Hagondes Pants +1",feet="Hag. Sabots +1"} 
	
	sets.BlueMagic.WhiteWind = {ammo="Mavi tathlum",
								head="Whirlpool Mask",neck="Cuamiz collar",ear1="Upsurge Earring",ear2="Cassie earring",
								body="Aetosaur jerkin",hands="Weath. cuffs +1",ring1="Bomb queen ring",ring2="Meridian ring",
								back="Tempered cape",waist="Gold mog. belt",legs="Desultor tassets",feet="Llwyd's clogs"}
									 
	sets.BlueMagic.MagicAccuracy = {ammo="Mavi Tathlum",
						            head="Lithelimb Cap",neck="Eddy necklace",ear1="Psystorm earring",ear2="Lifestorm earring",
						            body="Assim. Jubbah",hands="Hagondes cuffs +1",ring1="Mediator's ring",ring2="Sangoma ring",
						            back="Cornflower Cape",waist="Ovate rope",legs="Mavi tayt +2",feet="Luhlaza charuqs +1"} 
									 
	sets.BlueMagic.Skill = {ammo="Mavi tathlum",
							head="Whirlpool Mask",neck="Jeweled collar",ear1="Loquac. earring",
							body="Assim. Jubbah",hands="Ayao's gages",ring1="Prolix ring",
							back="Cornflower Cape",waist="Twilight belt",legs="Mavi tayt +2",feet="Luhlaza charuqs +1"}
							
	sets.BlueMagic.SkillRecast = {ammo="Mavi tathlum",
							      head="Luh. Keffiyeh +1",neck="Jeweled collar",ear1="Loquac. earring",
							      body="Assim. Jubbah",hands="Mv. Bazubands +2",ring1="Prolix ring",
							      back="Swith cape",waist="Twilight belt",legs="Mavi tayt +2",feet="Luhlaza charuqs +1"}
								  
								  
								  
								  
						
						
	--Utility Sets--
	sets.Utility = {}
	
	sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
							  body="Assim. Jubbah",hands="Stone Mufflers",ring1="Prolix ring",
							  back="Swith cape",waist="Siegel sash",legs="Haven hose",feet="Iuitl gaiters"}
							  
	sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
						    body="Assim. Jubbah",hands="Ayao's gages",ring1="Prolix ring",
							back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet="Iuitl gaiters"}
							
	sets.Utility.Steps = {ammo="Honed tathlum",
						  head="Whirlpool mask",ear2="Heartseeker earring",
						  body="Thaumas coat",hands="Umuthi gloves",
						  back="Letalis cape",waist="Chaac belt",legs="Manibozho brais",feet="Manibozho boots"}
						  
	sets.Utility.PDT = {head="Whirlpool mask",neck="Twilight torque",ear1="Ethereal earring",
						body="Iuitl vest",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
						back="Mollusca mantle",waist="Flume belt",legs="Iuitl Tights +1",feet="Iuitl gaiters"}
						
	sets.Utility.MDT = {head="Whirlpool mask",neck="Twilight torque",
						body="Assim. Jubbah",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
						back="Mollusca mantle",legs="Quiahuiz trousers",feet="Luhlaza charuqs +1"}
							
	
	
	
	
	
	--Job Ability Sets--
	
	sets.JA = {}
	
	sets.JA.ChainAffinity = {feet="Assim. charuqs +1"}
	
	sets.JA.BurstAffinity = {feet="Mavi Basmak +2"}
	
	sets.JA.Efflux = {legs="Mavi tayt +2"}
	
	sets.JA.AzureLore = {hands="Luh. bazubands +1"}
	
	sets.JA.Diffusion = {feet="Luhlaza Charuqs +1"}
								
								
			
			
			
			
	--Precast Sets--
	sets.precast = {}
	
	sets.precast.FC = {}
	
	sets.precast.FC.Standard = {head="Haruspex hat",neck="Jeweled collar", ear1="Loquac. Earring",
							    body="Luhlaza jubbah +1",hands="Thaumas Gloves",
						        back="Swith Cape",waist="Witful Belt",legs="Enif Cosciales",feet="Chelona Boots"}
	
	sets.precast.FC.Blue = {head="Haruspex hat",neck="Jeweled collar", ear1="Loquac. Earring",
							body="Mavi mintan +2",hands="Thaumas Gloves",
							back="Swith Cape",waist="Witful Belt",legs="Enif Cosciales",feet="Chelona Boots"}	
end






function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.precast.FC.Standard)
				
		if spell.skill == 'Blue Magic' then
		equip(sets.precast.FC.Blue)
		end
	end
	
	if spell.english == 'Azure Lore' then
		equip(sets.JA.AzureLore)
	end
	
	if spell.english == 'Requiescat' or spell.english == 'Savage Blade' then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	end
	
	if spell.english == 'Chant du Cygne' then
		equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
	end
	
	if spell.english == 'Circle Blade' then
		equip(sets.WS.CircleBlade)
	end
		
	if spell.english == 'Expiacion' then
		equip(sets.WS.Expiacion)
	end
	
	if spell.english == 'Sanguine Blade' or spell.english == 'Swipe' or spell.english == 'Lunge' then
		equip(sets.WS.SanguineBlade)
	end
	
	if spell.english == 'Box Step' then
		equip(sets.Utility.Steps)
	end
	
	if spell.english == 'Realmrazer' then
		equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
	end
	
	if spell.english == 'Flash Nova' then
		equip(sets.WS.FlashNova)
	end
end
	
function midcast(spell,act)
	if spell.english == 'Vertical Cleave' or spell.english == 'Death Scissors' or spell.english == 'Empty Thrash' or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' or spell.english == 'Bloodrake' then
		equip(sets.BlueMagic.STR)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
		
	if spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or spell.english == 'Paralyzing Triad' or spell.english == 'Thrashing Assault' then
		equip(sets.BlueMagic.STRDEX)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Quad. Continuum' or spell.english == 'Delta Thrust' or spell.english == 'Cannonball' or spell.english == 'Glutinous Dart' then
		equip(sets.BlueMagic.STRVIT)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Whirl of Rage' then
		equip(sets.BlueMagic.STRMND)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' then
		equip(sets.BlueMagic.AGI)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	end
	
	if spell.english == 'Gates of Hades' or spell.english == 'Leafstorm' or spell.english == 'Firespit' or spell.english == 'Acrid Stream' or spell.english == 'Regurgitation' or spell.english == 'Corrosive Ooze' or spell.english == 'Thermal Pulse' or spell.english == 'Magic Hammer' or spell.english == 'Evryone. Grudge' or spell.english == 'Water Bomb' or spell.english == 'Dark Orb' or spell.english == 'Thunderbolt' or spell.english == 'Tem. Upheaval' or spell.english == 'Embalming Earth' or spell.english == 'Foul Waters' or spell.english == 'Rending Deluge' or spell.english == 'Droning Whirlwind' or spell.english == 'Subduction' then
		equip(sets.BlueMagic.INT)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Magic Fruit' or spell.english == 'Plenilune Embrace' or spell.english == 'Wild Carrot' or spell.english == 'Pollen' or spell.english == 'Cure III' or spell.english == 'Cure IV' then
		equip(sets.BlueMagic.Cures)
			if spell.target.name == player.name and string.find(spell.english, 'Magic Fruit') or string.find(spell.english, 'Plenilune Embrace') or string.find(spell.english, 'Wild Carrot') or string.find(spell.english, 'Cure III') or string.find(spell.english, 'Cure IV') then
				equip(sets.BlueMagic.SelfCures)
			end
	end
	
	if spell.english == 'White Wind' then
		equip(sets.BlueMagic.WhiteWind)
	end
	
	if spell.english == 'Head Butt' or spell.english == 'Sudden Lunge' or spell.english == 'Blitzstrahl' then
		equip(sets.BlueMagic.Stun)
	end
	
	if spell.english == 'Heavy Strike' then
		equip(sets.BlueMagic.HeavyStrike)
	end
	
	if spell.english == 'Charged Whisker' then
		equip(sets.BlueMagic.ChargedWhisker)
		if buffactive['Burst Affinity'] then
			equip(sets.JA.BurstAffinity)
		end
	end
	
	if spell.english == 'Frightful Roar' or spell.english == 'Infrasonics' or spell.english == 'Barbed Crescent' or spell.english == 'Tourbillion' or spell.english == 'Cimicine Discharge' or spell.english == 'Sub-zero smash' or spell.english == 'Filamented Hold' or spell.english == 'Mind Blast' or spell.english == 'Sandspin' or spell.english == 'Hecatomb Wave' or spell.english == 'Cold Wave' or spell.english == 'Terror Touch' then
		equip(sets.BlueMagic.MagicAccuracy)
	end
	
	if spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or spell.english == 'Blood Drain' or spell.english == 'Osmosis' or spell.english == 'Occultation' or spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' or spell.english == 'Retinal Glare' then
		equip(sets.BlueMagic.SkillRecast)
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end
	end
	
	if spell.english == 'Cocoon' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' or spell.english == 'Erratic Flutter' then
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
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

windower.register_event('tp change', function(tp)
	if AutoFudo == 1 then
		if not buffactive['amnesia'] then
			if player.tp > 999 and   player.status == 'Engaged' then
				windower.send_command('input /ws "Sanguine Blade" <t>')
			end
		end
	end
		if Autows == 1 then
		if not buffactive['amnesia'] then
			if player.tp > 999 and   player.status == 'Engaged' then
				windower.send_command('input /ws "Tachi: Shoha" <t>')
			end
		end
	end	
end)

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end

function pretarget(spell)
    if spell.name == '/monsterskill' then
 
        cancel_spell()
        send_command(';input /ma "Magic Fruit" '..spell.target.name..';')
        return
    end
end 

function self_command(command)
	if command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip(sets.TP[sets.TP.index[TP_ind]])
		
	elseif command == 'A10' then -- Twilight Toggle --
		if AutoFudo == 1 then
			AutoFudo = 0
			add_to_chat(8,'Automated Sanguine [Off]')
		else
			AutoFudo = 1
			add_to_chat(158,'Automated Sanguine [ON]')
		end
		status_change(player.status)
		
	elseif command == 'toggle Idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == 'toggle Req set' then
		Requiescat_ind = Requiescat_ind +1
		if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
		send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
	elseif command == 'toggle CDC set' then
		ChantDuCygne_ind = ChantDuCygne_ind +1
		if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
		send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
	elseif command == 'toggle Rea set' then
		Realmrazer_ind = Realmrazer_ind +1
		if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
		send_command('@input /echo <----- Realmrazer Set changed to '..sets.Realmrazer.index[Realmrazer_ind]..' ----->')
	elseif command == 'equip TP set' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'equip Idle set' then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end