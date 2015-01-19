function get_sets()
	
	include('Cona-Include.lua')
		D = 224
		fSTR = 32.55
        attacks = 0
        hits = 0
        trend = {}
        trend_write_pos = 0
        define_user_functions()
        options = { usePDT = false, meleeMode = 'DD', autopilot = false,
                HUD = { x = 100, y = 100, visible = true, trendSize = 25  }
        }
	build_HUD()
	Autows 			= 0
	auto 			=1
	Samurai_Roll 	= 'ON'
	AutoFudo = 0
	AccIndex = 1
	AccArray = {"LowACC","AvgACC","MidACC","HighACC","OshiACC"} -- 5 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	Armor = 'None'
	Seigan = 'None'
	Twilight = 0
	send_command('input /macro book 9;wait .1;input /macro set 1') -- Change Default Macro Book Here --

	sc_map = {SC1="TachiFudo", SC2="TachiRana", SC3="Meditate"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	-- Idle/Town Sets --
	sets.Idle = {}
	sets.Idle['Regen'] = {
			head="Gavialis Helm",
			neck="Wiglen Gorget",
			body="Kyujutsugi",
			ear1="Merman's earring",
			ear2="Coral Earring",
			ring1="Woltaris ring",
			feet="Danzo Sune-ate",
			back="Shadow mantle",
			legs="Scuffler's Cosciales",
			ring2="Sheltered Ring",
			Range="Cibitshavore"}

	sets.Idle['Movement'] = set_combine(sets.Idle.Regen,{
			ammo="Vanir battery",
			head="Lithelimb Cap",
			neck="Twilight torque",
			ear1="Colossus's earring",
			ear2="Darkness earring",
			body="Mekira Meikogai",
			hands="Sakonji Kote +1",
			Range="Cibitshavore",
			ring1="Dark Ring",
			ring2="Defending Ring",
			back="Shadow mantle",
			waist="Flume belt",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet="Danzo Sune-ate"})


	sets.Resting = set_combine(sets.Idle.Regen)

	sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}

	-- TP Base Set --
	sets.TP = {}

	-- Kogarasumaru(AM3 Down) TP Sets --
	sets.TP.Kogarasumaru = {
			main="Kogarasumaru",
			head="Otomi Helm",
			neck="Ganesha's Mala",
			ear1="Tripudio earring",
			ear2="Brutal earring",
			body="Sakonji domaru +1",
			hands="Wakido Kote +1",
			ring1="K'ayres Ring",
			ring2="Rajas Ring",
			back="Takaha Mantle",
			waist="Windbuffet belt +1",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','"Dbl.Atk."+2',}},}
	sets.TP.Kogarasumaru.AvgACC = set_combine(sets.TP.Kogarasumaru,{
			ear2="Zennaroi Earring"})
	sets.TP.Kogarasumaru.MidACC = set_combine(sets.TP.Kogarasumaru.AvgACC,{
			waist="Olseni Belt",})
	sets.TP.Kogarasumaru.HighACC = set_combine(sets.TP.Kogarasumaru.MidACC,{
			head={ name="Sakonji Kabuto +1", augments={'Enhances "Ikishoten" effect',}},
			body={ name="Sakonji Domaru +1", augments={'Enhances "Overwhelm" effect',}},
			hands="Wakido Kote +1",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet="Waki. Sune-Ate +1",
			neck="Dakatsu Nodowa",
			waist="Olseni Belt",
			left_ear="Tripudio Earring",
			right_ear="Zennaroi Earring",
			left_ring="K'ayres Ring",
			right_ring="Rajas Ring",
			back="Takaha Mantle",})
		sets.TP.Kogarasumaru.OshiACC = set_combine(sets.TP.Kogarasumaru,{
					head="Yaoyotl Helm",
					body="Sakonji Domaru +1",
					hands="Sakonji Kote +1",
					legs="Unkai Haidate +2",
					feet="Ejekamal Boots",
					neck="Ganesha's Mala",
					waist="Olseni Belt",
					left_ear="Tripudio Earring",
					right_ear="Zennaroi Earring",
					left_ring="Mars's Ring",
					right_ring="Rajas Ring",
					back="Takaha Mantle",})
			
	-- Kogarasumaru(AM3) TP Sets --
	sets.TP.Kogarasumaru.AM3 = set_combine(sets.TP.Kogarasumaru,{
			head="Sakonji Kabuto +1",
			body="Sakonji Domaru +1",
			waist="Windbuffet belt +1",
			feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Crit.hit rate+1',}},
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','Crit.hit rate+1',}},
			back="Takaha Mantle"})
	sets.TP.Kogarasumaru.AvgACC.AM3 = set_combine(sets.TP.Kogarasumaru.AM3,{
			ear2="Zennaroi Earring"})		
			
	sets.TP.Kogarasumaru.MidACC.AM3 = set_combine(sets.TP.Kogarasumaru.AvgACC.AM3,{
			waist="Olseni Belt",
			head="Yaoyotl Helm",})
	sets.TP.Kogarasumaru.HighACC.AM3 = {
				range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
				head="Yaoyotl Helm",
				body="Sakonji Domaru +1",
				hands="Wakido Kote +1",
				legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','Crit.hit rate+1',}},
				feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Crit.hit rate+1',}},
				neck="Ganesha's Mala",
				waist="Olseni Belt",
				left_ear="Tripudio Earring",
				right_ear="Zennaroi Earring",
				left_ring="K'ayres Ring",
				right_ring="Rajas Ring",
				back="Takaha Mantle",}
	sets.TP.Kogarasumaru.OshiACC.AM3 = set_combine(sets.TP.Kogarasumaru,{
					head="Yaoyotl Helm",
					body="Sakonji Domaru +1",
					hands="Sakonji Kote +1",
					legs="Unkai Haidate +2",
					feet="Ejekamal Boots",
					neck="Ganesha's Mala",
					waist="Olseni Belt",
					left_ear="Tripudio Earring",
					right_ear="Zennaroi Earring",
					left_ring="Mars's Ring",
					right_ring="Rajas Ring",
					back="Takaha Mantle",})
			
	-- Kogarasumaru(Ionis) TP Sets --
	sets.TP.Kogarasumaru.Ionis =  set_combine(sets.TP.Kogarasumaru,{})
	sets.TP.Kogarasumaru.AvgACC.Ionis = set_combine(sets.TP.Kogarasumaru.Ionis,{
			ear2="Zennaroi Earring"})
	sets.TP.Kogarasumaru.MidACC.Ionis = set_combine(sets.TP.Kogarasumaru.Ionis,{
			waist="Olseni Belt",})
	sets.TP.Kogarasumaru.HighACC.Ionis = set_combine(sets.TP.Kogarasumaru.MidACC.Ionis,{
			neck="Dakatsu Nodowa",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			head="Yaoyotl helm",
			body="Sakonji domaru +1",
			back="Takaha Mantle",
			legs="Unkai Haidate +2",
			waist="Olseni Belt",
			hands="Sakonji Kote +1",
			feet="Wakido Sune-ate +1",
			ring1="Mars's ring",
			ring2="Rajas Ring"})
	sets.TP.Kogarasumaru.OshiACC.Ionis = set_combine(sets.TP.Kogarasumaru,{
					head="Yaoyotl Helm",
					body="Sakonji Domaru +1",
					hands="Sakonji Kote +1",
					legs="Unkai Haidate +2",
					feet="Ejekamal Boots",
					neck="Ganesha's Mala",
					waist="Olseni Belt",
					left_ear="Tripudio Earring",
					right_ear="Zennaroi Earring",
					left_ring="Mars's Ring",
					right_ring="Rajas Ring",
					back="Takaha Mantle",})
	

	-- Kogarasumaru(AM3 + Ionis) TP Sets --
	sets.TP.Kogarasumaru.AM3.Ionis = set_combine(sets.TP.Kogarasumaru.AM3,{})
	sets.TP.Kogarasumaru.AvgACC.AM3.Ionis=set_combine(sets.TP.Kogarasumaru.AM3,{		
			head="Yaoyotl Helm",
			ear2="Zennaroi Earring",})
	sets.TP.Kogarasumaru.MidACC.AM3.Ionis = set_combine(sets.TP.Kogarasumaru.AM3,{
				range={ name="Cibitshavore", augments={'STR+12','Rng.Acc.+10','"Store TP"+7',}},
				head="Yaoyotl Helm",
				body="Sakonji Domaru +1",
				hands="Wakido Kote +1",
				legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','Crit.hit rate+1',}},
				feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Crit.hit rate+1',}},
				neck="Ganesha's Mala",
				waist="Olseni Belt",
				left_ear="Tripudio Earring",
				right_ear="Zennaroi Earring",
				left_ring="K'ayres Ring",
				right_ring="Rajas Ring",
				back="Takaha Mantle",})
	sets.TP.Kogarasumaru.HighACC.AM3.Ionis = set_combine(sets.TP.Kogarasumaru.AM3,{
				head="Yaoyotl Helm",
				body="Sakonji Domaru +1",
				hands="Sakonji Kote +1",
				legs="Unkai Haidate +2",
				feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -2%','Crit.hit rate+1',}},
				neck="Dakatsu Nodowa",
				waist="Olseni Belt",
				left_ear="Tripudio Earring",
				right_ear="Zennaroi Earring",
				left_ring="K'ayres Ring",
				right_ring="Rajas Ring",
				back="Takaha Mantle",})
	sets.TP.Kogarasumaru.OshiACC.AM3.Ionis = set_combine(sets.TP.Kogarasumaru.AM3,{
					head="Yaoyotl Helm",
					body="Sakonji Domaru +1",
					hands="Sakonji Kote +1",
					legs="Unkai Haidate +2",
					feet="Ejekamal Boots",
					neck="Dakatsu Nodowa",
					waist="Olseni Belt",
					left_ear="Tripudio Earring",
					right_ear="Zennaroi Earring",
					left_ring="Mars's Ring",
					right_ring="Rajas Ring",
					back="Takaha Mantle",})
			
	sets.TP.Kogarasumaru.AM3.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{})
	sets.TP.Kogarasumaru.AvgACC.AM3.STP =set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{		
			ear2="Zennaroi Earring"})
	sets.TP.Kogarasumaru.MidACC.AM3.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{
			ear2="Zennaroi Earring",
			legs="Xaddi Cuisses"})
	sets.TP.Kogarasumaru.HighACC.AM3.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{
			neck="Dakatsu Nodowa",
			ear1="Tripudio Earring",
			ear2="Zennaroi Earring",
			head="Yaoyotl Helm",
			legs="Xaddi Cuisses",
			body="Sakonji Domaru +1",
			back="Takaha Mantle",
			waist="Olseni Belt",
			hands="Wakido Kote +1",
			feet="Ejekamal Boots",
			ring1="Mars's Ring",
			ring2="Rajas Ring",})
		sets.TP.Kogarasumaru.OshiACC.AM3.STP = set_combine(sets.TP.Kogarasumaru,{
					head="Yaoyotl Helm",
					body="Sakonji Domaru +1",
					hands="Sakonji Kote +1",
					legs="Unkai Haidate +2",
					feet="Ejekamal Boots",
					neck="Ganesha's Mala",
					waist="Olseni Belt",
					left_ear="Tripudio Earring",
					right_ear="Zennaroi Earring",
					left_ring="Mars's Ring",
					right_ring="Rajas Ring",
					back="Takaha Mantle",})

			
	sets.TP.Kogarasumaru.AM3.Ionis.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{})
	sets.TP.Kogarasumaru.AvgACC.AM3.Ionis.STP =set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{		
			ear2="Zennaroi Earring"})
	sets.TP.Kogarasumaru.MidACC.AM3.Ionis.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{
			ear2="Zennaroi Earring",
			legs="Xaddi Cuisses"})
	sets.TP.Kogarasumaru.HighACC.AM3.Ionis.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{
			neck="Dakatsu Nodowa",
			ear1="Tripudio Earring",
			ear2="Brutal Earring",
			head="Yaoyotl Helm",
			legs="Xaddi Cuisses",
			body="Sakonji Domaru +1",
			back="Takaha Mantle",
			waist="Olseni Belt",
			hands="Wakido Kote +1",
			feet="Ejekamal Boots",
			ring1="Mars's Ring",
			ring2="Rajas Ring"})
	sets.TP.Kogarasumaru.OshiACC.AM3.Ionis.STP = set_combine(sets.TP.Kogarasumaru.AM3.Ionis,{
					head="Yaoyotl Helm",
					body="Sakonji Domaru +1",
					hands="Sakonji Kote +1",
					legs="Unkai Haidate +2",
					feet="Ejekamal Boots",
					neck="Ganesha's Mala",
					waist="Olseni Belt",
					left_ear="Tripudio Earring",
					right_ear="Zennaroi Earring",
					left_ring="Mars's Ring",
					right_ring="Rajas Ring",
					back="Takaha Mantle",})


	-- Tsurumaru TP Sets --
	
	--	sets.TP.Tsurumaru = {
		--range="Yoichinoyumi",
		--	--ammo="Tulfaire Arrow",
		--	head="Sakonji kabuto +1",
		--	neck="Ganesha's Mala",
		--	ear1="Steelflash earring",
		--	ear2="Bladeborn Earring",
		--	body="Sakonji domaru +1 +1",
		--	hands="Wakido Kote +1",
		--	ring1="K'ayres Ring",
		--	ring2="Rajas Ring",
		--	back="Misuuchi Kappa",
		--	waist="Cetl Belt",
		--	legs="Wakido Haidate +1",
		--	feet="Sak. Sune-ate +1"}
		
		-- Adouling 31 / 57
		--61 STP-
	sets.TP.Tsurumaru =  {
			main="Tsurumaru",
			head="Otomi Helm",
			body="Sakonji domaru +1",
			hands="Wakido Kote +1",
			legs="Wakido Haidate +1",
			feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','"Dbl.Atk."+2',}},
			neck="Ganesha's Mala",
			waist="Windbuffet belt +1",
			left_ear="Trux Earring",
			right_ear="Brutal Earring",
			left_ring="Rajas Ring",
			right_ring="K'ayres ring",
			back="Takaha Mantle",
			}
			
			--60--
	sets.TP.Tsurumaru.AvgACC = set_combine(sets.TP.Tsurumaru,{
	        head="Yaoyotl Helm",
            back="Takaha Mantle",
			right_ring="Oneiros ring",})
			--58--
	sets.TP.Tsurumaru.MidACC = set_combine(sets.TP.Tsurumaru.AvgACC,{
			head="Yaoyotl Helm",
			body="Sakonji Domaru +1",
			hands="Wakido Kote +1",
			legs="Wakido Haidate +1",
			feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','"Dbl.Atk."+2',}},
			neck="Iqabi Necklace",
			waist="Olseni Belt",
			left_ear="Bladeborn Earring",
			right_ear="Steelflash Earring",
			back="Takaha Mantle"})
	sets.TP.Tsurumaru.HighACC = set_combine(sets.TP.Tsurumaru.MidACC,{
			neck="Dakatsu-no-nodowa",
			body="Xaddi Mail",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			back="Takaha Mantle",
			waist="Olseni Belt",
			left_ear="Tripudio Earring",
			right_ear="Zennaroi Earring",
			hands="Wakido kote +1",
			feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','"Dbl.Atk."+2',}},
			ring2="Mars's ring",
			ring1="Rajas Ring"})
	sets.TP.Tsurumaru.OshiACC = set_combine(sets.TP.Tsurumaru.OshiACC,{})

	-- Tsurumaru(Ionis) TP Sets --
	sets.TP.Tsurumaru.Ionis ={
    head="Otomi Helm",
    body="Xaddi Mail",
    hands="Wakido Kote +1",
    legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
    feet={ name="Otronif Boots +1", augments={'Phys. dmg. taken -3%','Magic dmg. taken -3%','"Dbl.Atk."+2',}},
    neck="Ganesha's Mala",
    waist="Windbuffet belt +1",
    left_ear="Trux Earring",
    right_ear="Brutal Earring",
    left_ring="Rajas Ring",
    right_ring="Oneiros Ring",
    back="Misuuchi Kappa"
}

	sets.TP.Tsurumaru.AvgACC.Ionis = set_combine(sets.TP.Tsurumaru.Ionis,{
                        back="Takaha Mantle",
						})
	sets.TP.Tsurumaru.MidACC.Ionis = set_combine(sets.TP.Tsurumaru.AvgACC.Ionis,{
                        neck="Iqabi Necklace",
                        back="Takaha Mantle",
                        waist="Olseni Belt",
                        feet="Wakido Sune-ate +1"})
	sets.TP.Tsurumaru.HighACC.Ionis ={  
	sub="Bloodrain Strap",
	head="Yaoyotl Helm",
    body="Xaddi Mail",
    hands="Sakonji Kote +1",
    legs="Unkai Haidate +2",
    feet="Waki. Sune-Ate +1",
    neck="Dakatsu Nodowa",
    waist="Olseni Belt",
			left_ear="Brutal Earring",
			right_ear="Zennaroi Earring",
    left_ring="Rajas Ring",
    right_ring="Patricius Ring",
    back="Letalis Mantle"}
	sets.TP.Tsurumaru.OshiACC.Ionis = set_combine(sets.TP.Tsurumaru.OshiACC.Ionis,{})

	-- Amanomurakumo TP Sets --
	sets.TP.Amanomurakumo = {
			head="Otomi Helm",
			neck="Ganesha's Mala",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			body="Sakonji domaru +1",
			hands="Wakido Kote +1",
			ring1="K'ayres Ring",
			ring2="Rajas Ring",
			back="Misuuchi Kappa",
			waist="Windbuffet belt +1",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet="Sakonji Sune-Ate +1"}
			
	sets.TP.Amanomurakumo.AvgACC = set_combine(sets.TP.Amanomurakumo,{
			legs="Sakonji Haidate +1",
			head="Sakonji Kabuto +1"})	
			
	sets.TP.Amanomurakumo.MidACC = set_combine(sets.TP.Amanomurakumo.AvgACC,{
			legs="Sakonji Haidate +1",
			head="Sakonji Kabuto +1",
			waist="Olseni Belt",})
	sets.TP.Amanomurakumo.HighACC = set_combine(sets.TP.Amanomurakumo.MidACC,{
			neck="Iqabi Necklace",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			head="Yaoyotl helm",
			body="Sakonji domaru +1",
			back="Letalis Mantle",
			feet="Wakido Sune-ate +1",
			ring2="Mars's ring",
			ring1="Rajas Ring"})

	-- Amanomurakumo(AM) TP Sets --
	sets.TP.Amanomurakumo.AM = set_combine(sets.TP.Amanomurakumo,{})
	sets.TP.Amanomurakumo.AvgACC.AM = set_combine(sets.TP.Amanomurakumo,{
			legs="Sakonji Haidate +1",
			head="Sakonji Kabuto +1"})
	sets.TP.Amanomurakumo.MidACC.AM = set_combine(sets.TP.Amanomurakumo.AvgACC.AM,{
			legs="Sakonji Haidate +1",
			head="Unkai Kabuto +2",
			waist="Olseni Belt",
			back="Takaha Mantle"})
	sets.TP.Amanomurakumo.HighACC.AM = set_combine(sets.TP.Amanomurakumo.MidACC.AM,{
			neck="Iqabi Necklace",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			head="Yaoyotl helm",
			body="Sakonji domaru +1",
			back="Letalis Mantle",
			waist="Olseni Belt",
			hands="Umuthi gloves",
			feet="Wakido Sune-ate +1",
			ring1="Mars's ring",
			ring2="Rajas Ring"})

	-- Amanomurakumo(Ionis) TP Sets --
	sets.TP.Amanomurakumo.Ionis =  set_combine(sets.TP.Amanomurakumo,{})
	sets.TP.Amanomurakumo.AvgACC.Ionis = set_combine(sets.TP.Amanomurakumo,{
			legs="Sakonji Haidate +1",
			head="Sakonji Kabuto +1"})
	sets.TP.Amanomurakumo.MidACC.Ionis = set_combine(sets.TP.Amanomurakumo.AvgACC.Ionis,{
			legs="Sakonji Haidate +1",
			head="Unkai Kabuto +2",
			waist="Olseni Belt",
			back="Takaha Mantle"})
	sets.TP.Amanomurakumo.HighACC.Ionis = set_combine(sets.TP.Amanomurakumo.MidACC.Ionis,{
			neck="Iqabi Necklace",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			head="Yaoyotl helm",
			body="Sakonji domaru +1",
			back="Letalis Mantle",
			waist="Olseni Belt",
			hands="Umuthi gloves",
			feet="Wakido Sune-ate +1",
			ring1="Mars's ring",
			ring2="Rajas Ring"})

	-- Amanomurakumo(AM + Ionis) TP Sets --
	sets.TP.Amanomurakumo.AM.Ionis =  set_combine(sets.TP.Amanomurakumo.AM,{})
	sets.TP.Amanomurakumo.AvgACC.AM.Ionis = set_combine(sets.TP.Amanomurakumo.AM.Ionis,{
			legs="Sakonji Haidate +1",
			head="Sakonji Kabuto +1"})
	sets.TP.Amanomurakumo.MidACC.AM.Ionis = set_combine(sets.TP.Amanomurakumo.AvgACC.Ionis,{
			legs="Sakonji Haidate +1",
			head="Unkai Kabuto +2",
			waist="Olseni Belt",
			back="Takaha Mantle"})
	sets.TP.Amanomurakumo.HighACC.AM.Ionis = set_combine(sets.TP.Amanomurakumo.MidACC.AM.Ionis,{
			neck="Iqabi Necklace",
			ammo="Jukukik Feather",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			head="Yaoyotl helm",
			body="Sakonji domaru +1",
			back="Letalis Mantle",
			waist="Olseni Belt",
			hands="Umuthi gloves",
			feet="Wakido Sune-ate +1",
			ring1="Mars's ring",
			ring2="Rajas Ring"})

	-- Masamune TP Sets --
	sets.TP.Masamune = {
			ammo="Hagneia Stone",
			head="Otomi Helm",
			neck="Ganesha's Mala",
			ear1="Trux Earring",
			ear2="Brutal Earring",
			body="Wakido Domaru +1",
			hands="Wakido Kote +1",
			ring1="K'ayres Ring",
			ring2="Rajas Ring",
			back="Misuuchi Kappa",
			waist="Windbuffet belt +1",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet="Sakonji Sune-Ate +1"}
	sets.TP.Masamune.AvgACC= set_combine(sets.TP.Masamune,{})
	sets.TP.Masamune.MidACC = set_combine(sets.TP.Masamune,{
			head="Yaoyotl Helm",
			back="Takaha Mantle",
			waist="Olseni Belt",
			feet="Whirlpool Greaves"})
	sets.TP.Masamune.HighACC = set_combine(sets.TP.Masamune.MidACC,{
			neck="Iqabi Necklace",
			body="Sakonji domaru +1",
			hands="Buremte Gloves",
			ring1="Patricius Ring",
			ring2="Mars's Ring"})

	
	-- Masamune(Ionis) TP Sets --
	sets.TP.Masamune.Ionis = set_combine(sets.TP.Masamune,{})
	sets.TP.Masamune.AvgACC.Ionis = set_combine(sets.TP.Masamune.Ionis,{})
	sets.TP.Masamune.MidACC.Ionis = set_combine(sets.TP.Masamune.AvgACC.Ionis,{
			head="Yaoyotl Helm",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			back="Takaha Mantle",
			waist="Olseni Belt",
			feet="Whirlpool Greaves"})
	sets.TP.Masamune.HighACC.Ionis = set_combine(sets.TP.Masamune.MidACC.Ionis,{
			neck="Iqabi Necklace",
			body="Sakonji domaru +1",
			hands="Buremte Gloves",
			ring1="Patricius Ring",
			ring2="Mars's Ring"})

	-- Seigan Set --
	sets.TP.Seigan = {
			  head="Unkai Kabuto +1",
			  legs="Sakonji Haidate"}

	-- PDT/MDT Sets --
	
	sets.misc = {hands="Unkai Kote +1"}
	sets.PDT = {
			head="Lithelimb Cap",	
			neck="Twilight Torque",
			ear1="Colossus's earring",
			ear2="Darkness earring",
			body="Mekira Meikogai",
			hands="Sakonji Kote +1",
			ring1="Dark Ring",
			ring2="Patricius Ring",
			back="Shadow mantle",
			waist="Flume Belt",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet="Otronif Boots +1"}
			
		sets.Range = {
    head="Sakonji Kabuto +1",
    body="Kyujutsugi",
    hands="Buremte Gloves",
    legs="Wakido Haidate +1",
    feet="Wakido Sune-ate +1",
    neck="Iqabi Necklace",
    waist="Olseni Belt",
    left_ear="Flame Pearl",
    right_ear="Flame Pearl",
    left_ring="Hajduk Ring",
    right_ring="Hajduk Ring",
    back="Thall Mantle",}

	sets.MDT = set_combine(sets.PDT,{
			ear1="Merman's earring",
			ear2="Merman's earring",
			body="Mekira Meikogai",
			hands="Buremte gloves",
			ring1="Archon Ring",
			back="Engulfer cape",
			waist="Resolute Belt",
			legs={ name="Otronif Brais +1", augments={'Phys. dmg. taken -3%','"Dbl.Atk."+2',}},
			feet="Otronif Boots +1"})

	-- Hybrid Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
			body="Sakonji domaru +1",
			hands="Wakido Kote +1",
			ring1="Dark ring",
			feet="Sakonji Sune-Ate +1"})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})
	sets.TP.Hybrid.OshiACC = set_combine(sets.TP.Hybrid.HighACC,{})

	-- WS Base Set --
	sets.WS = {
			head="Otomi Helm",
			neck="Ganesha's Mala",
			ear1="Brutal Earring",
			ear2="Moonshade earring",
			body="Phorcys Korazin",
			hands="Miki. Gauntlets",
			ring1="Ifrit Ring +1",
			ring2="Ifrit Ring",
			back="Takaha Mantle",
			waist="Windbuffet belt +1",
			legs="Wakido Haidate +1",
			feet="Sak. Sune-ate +1"}

	-- WS Sets --
	
	sets.WS['Tachi: Jinpu'] = {    
	range={ name="Cibitshavore", augments={'STR+10','Rng.Acc.+8','"Store TP"+3',}},
    ammo="Tulfaire Arrow",
    head={ name="Sakonji Kabuto +1", augments={'Enhances "Ikishoten" effect',}},
    body="Phorcys Korazin",
    hands={name="Miki. Gauntlets", augments={'Attack+15','Accuracy+10','STR+10',}},
    legs="Wakido Haidate +1",
    feet="Sakonji Sune-Ate +1",
    neck="Ganesha's Mala",
    waist="Snow Belt",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Rajas Ring",
    right_ring="K'ayres Ring",
    back="Toro Cape",
}
	sets.WS['Tachi: Jinpu'].AvgACC = set_combine(sets.WS['Tachi: Jinpu'])
	sets.WS['Tachi: Jinpu'].MidACC = set_combine(sets.WS['Tachi: Jinpu'])
	sets.WS['Tachi: Jinpu'].HighACC = set_combine(sets.WS['Tachi: Jinpu'])
	sets.WS['Tachi: Jinpu'].OshiACC = set_combine(sets.WS['Tachi: Jinpu'])
	
	

	
	sets.WS['Tachi: Fudo'] = {
		head="Otomi Helm",
			neck="Justiciar's Torque",
			ear2="Brutal Earring",
			ear1="Moonshade earring",
			body="Phorcys Korazin",
			hands="Boor Bracelets",
			ring2="Ifrit Ring +1",
			ring1="Ifrit Ring",
			back="Buquwik Cape",
			waist="Prosilio Belt +1",
			legs="Scuffler's Cosciales",
			feet="Sak. Sune-ate +1"}
	sets.WS['Tachi: Fudo'].AvgACC = set_combine(sets.WS['Tachi: Fudo'],{
			hands="Miki. Gauntlets",})
	sets.WS['Tachi: Fudo'].MidACC = set_combine(sets.WS['Tachi: Fudo'],{
			head="Yaoyotl Helm",
			hands="Miki. Gauntlets",
			feet="Wakido Sune-ate +1",
			neck="Snow Gorget"})
	sets.WS['Tachi: Fudo'].HighACC = set_combine(sets.WS['Tachi: Fudo'].MidACC,{
			back="Takaha Mantle",
			ring1="Rajas Ring",
			ear1="Moonshade Earring",
			ear2="Zennaroi Earring"})
	sets.WS['Tachi: Fudo'].OshiACC = set_combine(sets.WS['Tachi: Fudo'].HighACC,{
			legs="Wukong's Hakama +1"})

	sets.WS['Tachi: Shoha'] = {
			head="Otomi Helm",
			neck="Breeze Gorget",
			ear2="Brutal Earring",
			ear1="Moonshade Earring",
			body="Phorcy's Korazin",
			hands="Boor Bracelets",
			ring1="Ifrit Ring +1",
			ring2="Ifrit Ring",
			back="Buquwik Cape",
			waist="Windbuffet belt +1",
			legs="Wakido Haidate +1",
			feet="Ejekamal Boots"}
	sets.WS['Tachi: Shoha'].AvgACC = set_combine(sets.WS['Tachi: Shoha'],{
			hands="Miki. Gauntlets",
			legs="Miki. Cuisses",})
	
	sets.WS['Tachi: Shoha'].MidACC = set_combine(sets.WS['Tachi: Shoha'],{
			head="Yaoyotl Helm",
			body="Sakonji Domaru +1",
			hands="Miki. Gauntlets",
			legs="Miki. Cuisses",
			feet="Wakido Sune-ate +1",
			neck="Breeze Gorget",
			waist="Windbuffet belt +1",
			right_ear="Brutal Earring",
			left_ear="Moonshade Earring",
			left_ring="Ifrit Ring +1",
			right_ring="Rajas Ring",
			back="Letalis Mantle",})
	sets.WS['Tachi: Shoha'].HighACC = set_combine(sets.WS['Tachi: Shoha'].MidACC,{
			body="Sakonji domaru +1",
			back="Letalis Mantle",
			legs="Wakido Haidate"})
	sets.WS['Tachi: Shoha'].OshiACC = set_combine(sets.WS['Tachi: Shoha'].HighACC,{})

	sets.WS['Tachi: Kaiten'] = {
			ammo="Cheruski Needle",
			head="Otomi Helm",
			neck="Light Gorget",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			body="Phorcys Korazin",
			hands="Boor Bracelets",
			ring1="Ifrit Ring +1",
			ring2="Ifrit Ring +1",
			back="Buquwik Cape",
			waist="Light Belt",
			legs="Wakido Haidate +1",
			feet="Sak. Sune-ate +1"}
	sets.WS['Tachi: Kaiten'].AvgACC = set_combine(sets.WS['Tachi: Kaiten'],{})
	sets.WS['Tachi: Kaiten'].MidACC = set_combine(sets.WS['Tachi: Kaiten'],{
			head="Yaoyotl Helm",
			hands="Miki. Gauntlets",
			feet="Whirlpool Greaves"})
	sets.WS['Tachi: Kaiten'].HighACC = set_combine(sets.WS['Tachi: Kaiten'].MidACC,{
			feet="Wakido Sune-ate +1",
			back="Letalis Mantle",
			ring1="Mars's ring"})

	sets.WS['Tachi: Rana'] = {
			ammo="Cheruski Needle",
			head="Otomi Helm",
			neck="Ganesha's mala",
			ear1="Vulcan's pearl",
			ear2="Moonshade Earring",
			body="Phorcys Korazin",
			hands="Boor Bracelets",
			ring1="Ifrit Ring +1",
			ring2="Ifrit Ring +1",
			back="Buquwik Cape",
			waist="Windbuffet belt +1",
			legs="Wakido Haidate +1",
			feet="Sak. Sune-ate +1"}
	sets.WS['Tachi: Rana'].AvgACC = set_combine(sets.WS['Tachi: Rana'],{})
	sets.WS['Tachi: Rana'].MidACC = set_combine(sets.WS['Tachi: Rana'],{
			head="Yaoyotl Helm",
			hands="Miki. Gauntlets",
			feet="Whirlpool Greaves"})
	sets.WS['Tachi: Rana'].HighACC = set_combine(sets.WS['Tachi: Rana'].MidACC,{
			body="Sakonji domaru +1",
			back="Takaha Mantle",
			legs="Miki. Cuisses"})
	sets.WS['Tachi: Rana'].OshiACC = set_combine(sets.WS['Tachi: Rana'].HighACC,{})

	sets.WS['Namas Arrow'] = {
			ammo="Tulfaire Arrow",
			head="Sakonji Kabuto +1",
			neck="Light Gorget",
			ear1="Vulcan's Pearl",
			ear2="Vulcan's Pearl",
			body="Phorcys Korazin",
			hands="Unkai Kote +2",
			ring1="Ifrit Ring +1",
			ring2="Ifrit Ring +1",
			back="Buquwik Cape",
			waist="Light belt",
			legs="Wakido Haidate +1",
			feet="Wakido Sune-ate +1"}
	sets.WS['Namas Arrow'].MidACC = set_combine(sets.WS['Namas Arrow'],{
			body="Phorcys korazin"})
	sets.WS['Namas Arrow'].HighACC = set_combine(sets.WS['Namas Arrow'].MidACC,{
			ring1="Hajduk Ring +1",
			ring2="Hajduk Ring +1",
			ear1="Altdorf's earring",
			ear2="Willhelm's earring",
			back="Jaeger Mantle"})
	sets.WS['Namas Arrow'].OshiACC = set_combine(sets.WS['Namas Arrow'].HighACC,{})

	sets.WS['Apex Arrow'] = { 
    head="Sakonji Kabuto +1",
    body="Kyujutsugi",
    hands="Buremte Gloves",
    legs="Wakido Haidate +1",
    feet="Wakido Sune-ate +1",
    neck="Breeze Gorget",
    waist="Olseni Belt",
    left_ear="Flame Pearl",
    right_ear="Flame Pearl",
    left_ring="Hajduk Ring",
    right_ring="Hajduk Ring",
    back="Thall Mantle",
}
	sets.WS['Apex Arrow'].AvgACC = set_combine(sets.WS['Apex Arrow'],{})
	sets.WS['Apex Arrow'].MidACC = set_combine(sets.WS['Apex Arrow'],{})
	sets.WS['Apex Arrow'].HighACC = set_combine(sets.WS['Apex Arrow'].MidACC,{})
	sets.WS['Apex Arrow'].OshiACC = set_combine(sets.WS['Apex Arrow'].MidACC,{})

	-- JA Sets --
	sets.JA = {}
	sets.JA['Meditate'] = {head="Wakido Kabuto",hands="Sakonji Kote +1"}
	sets.JA['Warding Circle'] = {head="Wakido Kabuto"}
	sets.JA['Meikyo Shisui'] = {feet="Sak. Sune-Ate +1"}
	sets.Waltz = {}

	-- Magic Sets --
	sets.Precast = {}
	sets.Precast.FastCast = {
			ammo="Impatiens",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ring1="Prolix Ring",
			ring2="Veneficium Ring"}

	sets.Midcast = {}
	sets.Midcast.Haste = set_combine(sets.PDT,{
			head="Wakido Kabuto",
			body="Sakonji domaru +1 +1",
			hands="Sao. Kote +2",
			waist="Olseni Belt",
			legs="Wakido Haidate +1",
			feet="Whirlpool Greaves"})
end

    ranged_ws = S{"Flaming Arrow", "Piercing Arrow", "Dulling Arrow", "Sidewinder", "Arching Arrow",
	"Empyreal Arrow", "Refulgent Arrow", "Apex Arrow", "Namas Arrow", "Jishnu's Radiance", "Hot Shot", 
	"Split Shot", "Sniper Shot", "Slug Shot", "Heavy Shot", "Detonator", "Last Stand", "Trueflight","Wildfire"}


function pretarget(spell,action)
	if player.status ~= 'Engaged' then 
		if (spell.target.distance >5 and spell.prefix == '/weaponskill' and not ranged_ws[spell.name]) or (spell.target.distance > 21 and spell.prefix == '/weaponskill') then
		cancel_spell()
		return
		end
		if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.Silence then -- Auto Use Echo Drops If You Are Silenced --
			cancel_spell()
			send_command('input /item "Echo Drops" <me>')
		elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
			cancel_spell()
			send_command('Aggressor')
		elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
			cancel_spell()
			send_command('ThirdEye')
		elseif spell.english == "Meditate" and player.tp > 1900 then -- Cancel Meditate If TP Is Above 290 --
			cancel_spell()
			add_to_chat(8, spell.name .. ' Canceled: ['..player.tp..' TP]')
		end
	end
end

function precast(spell,action)
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
			if buffactive.Sekkanoki then -- Equip Unkai Kote +2 When Sekkanoki Is On --
				equipSet = set_combine(equipSet,{hands="Unkai Kote +1"})
			end
			if buffactive.Sengikori then -- Equip Unkai Sune-ate +2 When Sengikori Is On --
				equipSet = set_combine(equipSet,{feet="Unkai Sune-ate +2"})
				add_to_chat(8, 'Weapon Day Bonus')
			end
		--[[	if WS:contains(spell.name) and (player.tp > 2999 or buffactive.Sekkanoki or (player.tp > 1999 and buffactive.Hagakure)) 
				equipSet = set_combine(equipSet,{ear1="Vulcan's Pearl"})
			end--]]
			if (spell.english == "Tachi: Fudo") then
				if pDIF > 2.1 then
					if	AccIndex == 3 or AccIndex == 4 then
					equipSet = set_combine(equipSet,{waist="Snow Belt",neck="Snow Gorget"})
					else 
					equipSet = set_combine(equipSet,{waist="Prosilio Belt +1",neck="Justiciar's Torque"})
					end
				else
				equipSet = set_combine(equipSet,{waist="Prosilio Belt +1",neck="Justiciar's Torque"})				
				end
			end
			if (spell.english == "Tachi: Fudo") then
			
				if fudoDays:contains(world.day) then
				add_to_chat(8, 'Weapon Day Bonus')
				equipSet = set_combine(equipSet,{head="Gavialis Helm"})
				end
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(8, spell.english .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.FastCast)
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
	if Twilight == 1 then
		equip(sets.Twilight)
	end
end

function midcast(spell,action)
	if spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7; cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive.Sneak then
				send_command('@wait 1.7; cancel Sneak')
			end
			equip(sets.Midcast.Haste)
		else
			equip(sets.Midcast.Haste)
		end
	end
end



				

WS			= S{'Tachi: Fudo','Tachi: Shoha'}
fudoDays 	= S{'Lightsday','Windsday','Lightningday','Firesday','Iceday','Watersday'}

function aftercast(spell,action)
	if spell.type == "WeaponSkill" then
		send_command('wait 0.3;gs c TP')
	elseif spell.english == "Warding Circle" then -- Warding Circle Countdown --
		send_command('wait 260;input /echo '..spell.name..' Effect: [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..' Effect: [OFF]')
	end
	status_change(player.status)
end

function status_change(new,old)
	if player.equipment.range ~= 'empty' then
		disable('range','ammo')
	else
		enable('range','ammo')
	end
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif buffactive.Seigan and buffactive['Third Eye'] then -- For Seigan TP Set Use Seigan Toggle --
		equip(sets.TP.Seigan)
		
	elseif Armor == 'Range' then
		equip(sets.Range)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet['Hybrid'] then
			equipSet = equipSet['Hybrid']
		end
		if equipSet[player.equipment.main] then
			equipSet = equipSet[player.equipment.main]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive['Aftermath: Lv.3'] and equipSet['AM3'] then
			equipSet = equipSet['AM3']
		end
		if buffactive.Aftermath and equipSet['AM'] then
			equipSet = equipSet['AM']
		end	
		if buffactive.Ionis and equipSet['Ionis'] then
			equipSet = equipSet['Ionis']
		end
		if buffactive['Samurai Roll'] and equipSet['STP'] then
			equipSet = equipSet['STP']
		end
		equip(equipSet)
	else
		equip(sets.Idle[IdleArray[IdleIndex]])
	end
	if Twilight == 1 then
		equip(sets.Twilight)
	end
end


windower.register_event('tp change', function(tp)
	if AutoFudo == 1 then
		if not buffactive['amnesia'] then
			if player.tp > 999 and   player.status == 'Engaged' then
				windower.send_command('input /ws "Tachi: Fudo" <t>')
			end
		end
	end
		if Autows == 1 then
		if not buffactive['amnesia'] then
			if buffactive['Aftermath: Lv.3'] then
				if player.tp > 999 and   player.status == 'Engaged' then
					windower.send_command('input /ws "Tachi: Fudo" <t>')
				end
			elseif player.tp > 2999 then
				windower.send_command('input /ws "Tachi: Rana" <t>')
			end
		end
	end	
end)




windower.register_event('hp change', function(hp)
	if AutoFudo == 1 then
		if not buffactive['amnesia'] then
			if player.tp > 999 and   player.status == 'Engaged' then
				windower.send_command('input /ws "Tachi: Fudo" <t>')
			end
		end
	end
		if Autows == 1 then
		if not buffactive['amnesia'] then
			if buffactive['Aftermath: Lv.3'] then
				if player.tp > 999 and   player.status == 'Engaged' then
					windower.send_command('input /ws "Tachi: Fudo" <t>')
				end
			elseif player.tp > 2999 then
				windower.send_command('input /ws "Tachi: Rana" <t>')
			end
		end
	end	
end)


function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer Bar & AM3 Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(159,'AM3: [OFF]')
		end
	elseif buff == 'weakness' then -- Weakness Timer Bar --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Berserker's Torque Rule --
		equip({neck="Berserker's Torque"})
	else
		status_change(player.status)
	end
end



-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update')
	elseif command == 'C2' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(8,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'none'
			add_to_chat(8,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'B10' then -- Range Toggle --
		if Armor == 'Range' then
			Armor = 'none'
			add_to_chat(8,'Range Set: [Unlocked]')
		else
			Armor = 'Range'
			add_to_chat(158,'Range Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C15' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(8,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C9' then -- Seigan Toggle --
		if Seigan == 'Seigan' then
			Seigan = 'None'
			add_to_chat(8,'Seigan Set: [Unlocked]')
		else
			Seigan = 'Seigan'
			add_to_chat(158,'Seigan Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C3' then -- Twilight Toggle --
		if Twilight == 1 then
			Twilight = 0
			add_to_chat(8,'Twilight Set: [Unlocked]')
		else
			Twilight = 1
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
		
		elseif command == 'A10' then -- Twilight Toggle --
		if Autows == 1 then
			Autows = 0
			add_to_chat(8,'Automated Shoha [Off]')
		else
			Autows = 1
			add_to_chat(158,'Automated Shoha [ON]')
		end
		status_change(player.status)	
		
				elseif command == 'A11' then -- Twilight Toggle --
		if AutoFudo == 1 then
			AutoFudo = 0
			add_to_chat(8,'Automated Fudo [Off]')
		else
			AutoFudo = 1
			add_to_chat(158,'Automated Fudo [ON]')
		end
		status_change(player.status)
		
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
		status_change(player.status)
	elseif command:match('^SC%d$') then
		send_command('//'..sc_map[command])
	elseif command == 'Fudo' then
		if player.tp > 999 then
			send_command('wait 0.1;input /ws "Tachi: Fudo" <t>')
		else
			add_to_chat(158,'Not Enough TP: [ Suckless ]')
		end
	end
end






 
