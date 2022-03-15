; <COMPILER: v1.1.33.02>
global FileChatlog := % A_MyDocuments "\GTA San Andreas User Files\SAMP\chatlog.txt"
global ERROR_OK                     := 0
global ERROR_PROCESS_NOT_FOUND      := 1
global ERROR_OPEN_PROCESS           := 2
global ERROR_INVALID_HANDLE         := 3
global ERROR_MODULE_NOT_FOUND       := 4
global ERROR_ENUM_PROCESS_MODULES   := 5
global ERROR_ZONE_NOT_FOUND         := 6
global ERROR_CITY_NOT_FOUND         := 7
global ERROR_READ_MEMORY            := 8
global ERROR_WRITE_MEMORY           := 9
global ERROR_ALLOC_MEMORY           := 10
global ERROR_FREE_MEMORY            := 11
global ERROR_WAIT_FOR_OBJECT        := 12
global ERROR_CREATE_THREAD          := 13
global ADDR_ZONECODE                := 0xA49AD4
global ADDR_POSITION_X              := 0xB6F2E4
global ADDR_POSITION_Y              := 0xB6F2E8
global ADDR_POSITION_Z              := 0xB6F2EC
global ADDR_CPED_PTR                := 0xB6F5F0
global ADDR_CPED_HPOFF              := 0x540
global ADDR_CPED_ARMOROFF           := 0x548
global SAMP_COLOR_OFFSET := 0x16F6C0 ;0x17F6C0 ;0x18F6C0
global ADDR_CPED_MONEY              := 0x0B7CE54
global ADDR_CPED_INTID              := 0xA4ACE8
global ADDR_CPED_SKINIDOFF          := 0x22
global ADDR_VEHICLE_PTR             := 0xBA18FC
global ADDR_VEHICLE_HPOFF           := 0x4C0
global ADDR_VEHICLE_DOORSTATE       := 0x4F8
global ADDR_VEHICLE_ENGINESTATE     := 0x428
global ADDR_VEHICLE_LIGHTSTATE      := 0x584
global ADDR_VEHICLE_MODEL           := 0x22
global ADDR_VEHICLE_TYPE            := 0x590
global ADDR_VEHICLE_DRIVER          := 0x460
global ADDR_VEHICLE_X               := 0x44
global ADDR_VEHICLE_Y               := 0x48
global ADDR_VEHICLE_Z               := 0x4C
global oweaponNames := ["Кулак","Brass Knuckles","Клюшка для гольфа","Полицейская дубинка","Нож","Baseball Bat","Shovel","Pool Cue","Катана","Chainsaw","Purple Dildo","Dildo","Vibrator","Silver Vibrator","Flowers","Cane","Grenade","Tear Gas","Коктейль молотова", "", "", "", "9mm","Silenced 9mm","Desert Eagle","Shotgun","Sawnoff Shotgun","Combat Shotgun","Micro SMG/Uzi","MP5","AK-47","M4","Tec-9","Винтовка","Снайперка","РПГ","Ракетница","Огнемет","Миниган","Satchel Charge","Detonator","Spraycan","Fire Extinguisher","Camera","Night Vis Goggles","Thermal Goggles","Parachute"]
global oAirplaneModels := [417, 425, 447, 460, 469, 476, 487, 488, 497, 511, 512, 513, 519, 520, 548, 553, 563, 577, 592, 593]
global oBikeModels := [481,509,510]
global ovehicleNames := ["автомобиля Landstalker","автомобиля Bravura","автомобиля Buffalo","автомобиля Linerunner","автомобиля Perrenial","автомобиля Sentinel","Самосвала","Пожарной машины","Мусоровоза","Лимузина","автомобиля Manana","автомобиля Infernus","автомобиля Voodoo","автомобиля Pony","автомобиля Mool","автомобиля Cheetah","Скорой помощи","автомобиля Левиафан","автомобиля Moonbeam","автомобиля Esperanto","Такси","автомобиля Washington","автомобиля Bobcat","автомобиля Хоуп","автомобиля BF Injection","автомобиля Охотника","автомобиля Premier","Enforcer","автомобиля Securicar","автомобиля Banshee","лодки Predator","автобуса","танка","грузовика","автомобиля Hotknife","Трейлера","автомобиля Previon","автобуса","такси","автомобиля Stallion","автомобиля Rumpo","автомобиля RC Bandit","автомобиля Romero","Packer","монстра","автомобиля Admiral","автомобиля Squalo","автомобиля Seasparrow","автомобиля Pizzaboy","автомобиля Tram","Trailer","автомобиля Turismo","автомобиля Speeder","Reefer","автомобиля Tropic","автомобиля Flatbed","автомобиля Yankee","автомобиля Caddy","автомобиля Solair","автомобиля Berkley'sRCVan","автомобиля Skimmer","мотоцикла PCJ-600","мопеда","мотоцикла Freeway","автомобиля RCBaron","автомобиля RCRaider","автомобиля Glendale","автомобиля Oceanic","мотоцикла Sanchez","автомобиля Sparrow","хаммера","квадроцикла","автомобиля Coastguard","автомобиля Dinghy","автомобиля Hermes","автомобиля Sabre","автомобиля Rustler","автомобиля ZR-350","автомобиля Walton","автомобиля Regina","автомобиля Comet","велосипеда BMX","автомобиля Burrito","автомобиля Camper","автомобиля Marquis","автомобиля Baggage","автомобиля Dozer","вертолёта Maverick","вертолёта NewsChopper","автомобиля Rancher","Police Car","автомобиля Virgo","автомобиля Greenwood","автомобиля Jetmax","автомобиля Hotring","автомобиля Sandking","автомобиля Blista Compact","Police Maverick","автомобиля Boxvillde","автомобиля Benson","автомобиля Mesa","RCGoblin","автомобиля Hotring Racer A","автомобиля Hotring Racer B","автомобиля Bloodring Banger","автомобиля Rancher","автомобиля Super GT","автомобиля Elegant","автомобиля Journey","велосипеда Bike","Горного велосипеда","автомобиля Beagle","автомобиля Cropduster","автомобиля Stunt","грузовика","грузовика","автомобиля Nebula","автомобиля Majestic","автомобиля Buccaneer","самолёта Shamal","самолёта Hydra","мотоцикла FCR-900","мотоцикла NRG-500","HPV1000","автомобиля CementTruck","эвакуатора","автомобиля Fortuna","автомобиля Cadrona","FBI Truck","автомобиля Willard","автомобиля Forklift","автомобиля Tractor","комбайна","автомобиля Feltzer","автомобиля Remington","автомобиля Slamvan","автомобиля Blade","автомобиля Freight","автомобиля Streak","автомобиля Vortex","автомобиля Vincent","автомобиля Bullet","автомобиля Clover","автомобиля Sadler","Firetruck","автомобиля Hustler","автомобиля Intruder","автомобиля Primo","автомобиля Cargobob","автомобиля Tampa","Sunrise","автомобиля Merit","автомобиля Utility","автомобиля Nevada","автомобиля Yosemite","автомобиля Windsor","Монстра","Монстра","автомобиля Uranus","автомобиля Jester","автомобиля Sultan","автомобиля Stratum","автомобиля Elegy","Raindance","автомобиля RCTiger","автомобиля Flash","автомобиля Tahoma","автомобиля Savanna","автомобиля Bandito","автомобиля FreightFlat","автомобиля StreakCarriage","автомобиля Kart","автомобиля Mower","автомобиля Dune","автомобиля Sweeper","автомобиля Broadway","Tornado","AT-400","DFT-30","автомобиля Huntley","автомобиля Stafford","мотоцикла BF-400","фургона","Tug","Trailer","автомобиля Emperor","мотоцикла Wayfarer","автомобиля Euros","автомобиля продавца хот-догов","автомобиля Club","автомобиля FreightBox","автомобиля Trailer","Andromada","Dodo","RCCam","автомобиля Launch","Police Car","Police Car","Police Car","Police Ranger","автомобиля Picador","БТР","автомобиля Alpha","автомобиля Phoenix","автомобиля GlendaleShit","автомобиля SadlerShit","автомобиля Luggage","автомобиля Luggage","автомобиля Stairs","автомобиля Boxville","Tiller","UtilityTrailer"]
global ovehicleNamesImpad := ["Landstalker","Bravura","Buffalo","Linerunner","Perrenial","Sentinel","Dumper","Пожарная машина","Мусоровоз","Stretch","Manana","Infernus","Voodoo","Pony","Mool","Cheetah","Скорой помощи","Leviathan","Moonbeam","Esperanto","Такси","Washington","Bobcat","Хоуп","BF Injection","Hunter","Premier","Enforcer","Securicar","Banshee","Predator","Bus","Rhino","Barracks","Hotknife","Trailer","Previon","Bus","Taxi","Stallion","Rumpo","RC Bandit","Romero","Packer","Monster","Admiral","Squalo","Seasparrow","Pizzaboy","Tram","Trailer","Turismo","Speeder","Reefer","Tropic","Flatbed","Yankee","Caddy","Solair","Berkley'sRCVan","Skimmer","PCJ-600","Faggio","Freeway","RCBaron","RCRaider","Glendale","Oceanic","Sanchez","Sparrow","Patriot","Quad","Coastguard","Dinghy","Hermes","Sabre","Rustler","ZR-350","Walton","Regina","Comet","BMX","Burrito","Camper","Marquis","Baggage","Dozer","Maverick","NewsChopper","Rancher","Police Car","Virgo","Greenwood","Jetmax","Hotring","Sandking","Blista Compact","Police Maverick","Boxvillde","Benson","Mesa","RCGoblin","Hotring Racer A","Hotring Racer B","Bloodring Banger","Rancher","Super GT","Elegant","Journey","Bike","Горный велосипед","Beagle","Cropduster","Stunt","Tanker","Roadtrain","Nebula","Majestic","Buccaneer","Shamal","Hydra","FCR-900","NRG-500","HPV-1000","Бетономешалка","Эвакуатор","Fortuna","Cadrona","FBI Truck","Willard","Forklift","Трактор","Combine Harvester","Feltzer","Remington","Slamvan","Blade","Freight","Streak","Vortex","Vincent","Bullet","Clover","Sadler","Пожарная машина","Hustler","Intruder","Primo","Cargobob","Tampa","Sunrise","Merit","Utility","Nevada","Yosemite","Windsor","Monster","Monster","Uranus","Jester","Sultan","Stratum","Elegy","Raindance","RCTiger","Flash","Tahoma","Savanna","Bandito","FreightFlat","StreakCarriage","Kart","Mower","Dune","Sweeper","Broadway","Tornado","AT-400","DFT-30","Huntley","Stafford","BF-400","Newsvan","Tug","Trailer","Emperor","Wayfarer","Euros","Hotdog","Club","FreightBox","Trailer","Andromada","Dodo","RCCam","Launch","Police Car","Police Car","Police Car","Police Ranger","Picador","БТР","Alpha","Phoenix","GlendaleShit","SadlerShit","Luggage","Luggage","Stairs","Boxville","Tiller","UtilityTrailer"]
global oradiostationNames := ["Playback FM", "K Rose", "K-DST", "Bounce FM", "SF-UR", "Radio Los Santos", "Radio X", "CSR 103.9", "K-JAH West", "Master Sounds 98.3", "WCTR Talk Radio", "User Track Player", "Radio Off"]
global oweatherNames := ["EXTRASUNNY_LA", "SUNNY_LA", "EXTRASUNNY_SMOG_LA", "SUNNY_SMOG_LA", "CLOUDY_LA", "SUNNY_SF", "EXTRASUNNY_SF", "CLOUDY_SF", "RAINY_SF", "FOGGY_SF", "SUNNY_VEGAS", "EXTRASUNNY_VEGAS", "CLOUDY_VEGAS", "EXTRASUNNY_COUNTRYSIDE", "SUNNY_COUNTRYSIDE", "CLOUDY_COUNTRYSIDE", "RAINY_COUNTRYSIDE", "EXTRASUNNY_DESERT", "SUNNY_DESERT", "SANDSTORM_DESERT", "UNDERWATER", "EXTRACOLOURS_1", "EXTRACOLOURS_2"]
global color11namecars :=["черно-", "бело-", "голубо-", "красно-", "серо-", "лилово-", "оранжево-", "голубо-", "серо-", "серо-", "сине-", "серо-", "голубо-", "серо-", "серо-", "серо-", "зелено-", "красно-", "красно-", "серо-", "сине-", "малиново-", "малиново-", "серо-", "серо-", "серо-", "серо-", "серо-", "сине-", "серо-", "коричнево-", "коричнево-", "голубо-", "серо-", "серо-", "серо-", "черно-", "черно-", "серо-", "голубо-", "коричнево-", "серо-", "красно-", "красно-", "зелено-", "красно-", "зелено-","серо-", "серо-", "серо-", "серо-", "зелено-", "серо-", "сине-", "сине-", "коричнево-", "серо-", "коричнево-", "красно-", "сине-", "серо-", "коричнево-", "красно-", "серо-", "серо-", "желто-", "коричнево-", "голубо-", "желто-", "розово-", "красно-", "голубо-", "серо-", "серо-", "коричнево-", "черно-", "серо-", "коричнево-", "красно-", "сине-", "красно-", "коричнево-", "красно-", "зелено-", "коричнево-", "красно-", "зелено-", "голубо-", "красно-", "серо-", "светло-серо-", "сине-", "серо-", "голубо-", "сине-", "сине-", "серо-", "серо-", "серо-", "коричнево-", "серо-", "сине-", "коричнево-", "сине-", "коричнево-", "серо-", "голубо-", "серо-", "голубо-", "серо-", "коричнево-", "серо-", "голубо-", "коричнево-", "зелено-", "малиново-", "сине-", "красно-", "серо-", "коричнево-", "коричнево-", "красно-", "серо-", "желто-", "малиново-", "сине-", "розово-"]
global color12namecars := ["салатовый", "шоколадный", "голубой", "горчичный", "кремово-розовый", "черный", "фиолетовый", "светло-голубой", "лиловый", "ярко-салатовый", "бежевый", "лилово-фиолетовый", "молочный", "кремовый", "желтый", "пудровый", "лилово-пудровый", "бледно-салатовый", "бледно-розовый", "розовый", "серый", "серо-коричневый", "серый", "серо-салатовый", "голубой", "хакки", "светло-салатовый", "серо-голубой", "песочный", "светло-серый", "кирпичный", "коричневый", "темно-зеленый", "персиково-розовый", "темно-голубой", "морская волна", "темно-серый", "серо-голубой", "бледно-голубой", "фиалковый", "светлый шоколад", "бледно-лиловый", "бледно-пурпурный", "пурпурный", "грязный зеленый", "светлый шоколад", "светло-коричневый", "яркий персиковый", "бледно-фиолетовый", "бледно-пудровый", "бледно-розовый", "ягодный", "светло-горчичный", "темный персиковый", "темный бежевый", "светло-кирпичный", "бледно-розовый", "светло-серый","темно-зеленый", "зеленый", "светло-зеленый", "серо-зеленый", "чайная роза", "бледно-салатовый", "молочный", "белый", "яркожелтый", "бледно-желтый", "белый", "яичный", "серо-голубой", "хакки", "кремовый", "серо-синий", "серо-зеленый", "темно-серый", "металлик", "черно-синий", "черно-серый", "серый", "сизый", "серо-голубой", "темный серо-голубой", "фиолетовый", "кирпичный", "молочный", "желто-зеленый", "темный зеленый", "бежевый", "светло-голубой", "персиковый", "светло-оранжевый", "истинный розовый", "светло-желтый", "персиково-оранжевый", "темно-синий", "светлый шоколад", "хакки", "салатовый", "темно-зеленый", "кремово-желтый", "зеленый", "сливовый", "грязно-желтый", "лилово-розовый", "светло-малиновый", "темно-зеленый", "серо-зеленый", "темно-серый", "пудровый", "песочный", "кирпичный", "голубой", "желто-салатовый", "темно-малиновый", "бледно-зеленый", "шоколадный", "темно-зеленый", "серо-голубой", "серый", "светлый шоколад", "вишневый", "молочный", "светло-серый", "серый", "слоновая кость", "кремово-серый", "серо-синий"]
global color21namecars :=["черный", "белый", "голубой", "красный", "темно-серый", "лиловый", "оранжевый", "серо-голубой", "светло-серый", "серый", "серо-синий", "серый", "серо-голубой", "серый", "светло-серый", "светло-серый", "зеленый", "вишневый", "темно-малиновый", "светло-серый", "серо-синий", "бледно малиновый", "темно-малиновый", "светло-серый", "серый", "темно-серый", "светло-серый", "серый", "серо-синий", "светло-серый", "темно-коричневый", "коричневый", "светло-голубой", "серый", "серый", "серый", "темно-серый", "серо-зеленый", "сизый", "серо-голубой", "темно-коричневый", "серый", "бледно вишневый", "вишневый", "темно-зеленый", "коричнево-вишневый", "светлый хаки","серый", "светло-серый", "светло-серый", "серый", "зелено-голубой", "серый", "синий", "бледносиний", "какао", "светло-серый", "светлый хаки", "темно-вишневый", "серо-голубой", "светло-серый", "темный песочный", "темно-малиновый", "серый", "серый", "бледно салатовый", "темно коричневый", "серо-голубой", "светлый хаки", "какао с молоком", "бледно вишневый", "голубой", "темно-серый", "светло-серый", "темно-коричневый", "темно-синий", "светло-серый", "светлый хакки", "бледный вишневый", "синий", "бледно-малиновый", "мокко", "темно-вишневый", "темно-зеленый", "молочный шоколад", "малиновый", "светло-зеленый", "голубой", "бледновишневый", "светлый хакки", "светло-серый", "серо-синий", "серый", "голубой", "светло-сииний", "синий", "светло-серый", "серый", "темно-серый", "светлый хакки", "голубой", "темно-синий", "светлый хакки", "синий", "мокко", "серый", "темно-голубой", "песочный", "голубой", "темно-серый", "какао", "светло-серый", "голубой", "шоколадный", "хакки", "малиновый", "синий", "вишневый", "светло-серый", "какао", "мокко", "темно-вишневый", "темно-серый", "горчичный", "темно-малиновый", "синий", "розовый"]
global color22namecars := ["салатовый", "шоколадный", "голубой", "горчичный", "кремово-розовый", "черный", "фиолетовый", "светло-голубой", "лиловый", "ярко-салатовый", "бежевый", "лилово-фиолетовый", "молочный", "кремовый", "желтый", "пудровый", "лилово-пудровый", "бледно-салатовый", "бледно-розовый", "розовый", "серый", "серо-коричневый", "серый", "серо-салатовый", "голубой", "хакки", "светло-салатовый", "серо-голубой", "песочный", "светло-серый", "кирпичный", "коричневый", "темно-зеленый", "персиково-розовый", "темно-голубой", "морская волна", "темно-серый", "серо-голубой", "бледно-голубой", "фиалковый", "светлый шоколад", "бледно-лиловый", "бледно-пурпурный", "пурпурный", "грязный зеленый", "светлый шоколад", "светло-коричневый", "яркий персиковый", "бледно-фиолетовый", "бледно-пудровый", "бледно-розовый", "ягодный", "светло-горчичный", "темный персиковый", "темный бежевый", "светло-кирпичный", "бледно-розовый", "светло-серый","темно-зеленый", "зеленый", "светло-зеленый", "серо-зеленый", "чайная роза", "бледно-салатовый", "молочный", "белый", "яркожелтый", "бледно-желтый", "белый", "яичный", "серо-голубой", "хакки", "кремовый", "серо-синий", "серо-зеленый", "темно-серый", "металлик", "черно-синий", "черно-серый", "серый", "сизый", "серо-голубой", "темный серо-голубой", "фиолетовый", "кирпичный", "молочный", "желто-зеленый", "темный зеленый", "бежевый", "светло-голубой", "персиковый", "светло-оранжевый", "истинный розовый", "светло-желтый", "персиково-оранжевый", "темно-синий", "светлый шоколад", "хакки", "салатовый", "темно-зеленый", "кремово-желтый", "зеленый", "сливовый", "грязно-желтый", "лилово-розовый", "светло-малиновый", "темно-зеленый", "серо-зеленый", "темно-серый", "пудровый", "песочный", "кирпичный", "голубой", "желто-салатовый", "темно-малиновый", "бледно-зеленый", "шоколадный", "темно-зеленый", "серо-голубой", "серый", "светлый шоколад", "вишневый", "молочный", "светло-серый", "серый", "слоновая кость", "кремово-серый", "серо-синий"]
global ADDR_SAMP_INCHAT_PTR                 := [0x21A10C, 0x21A114, 0x2ACA3C]
global ADDR_SAMP_INCHAT_PTR_OFF             := [0x55, 0x60, 0x60]
global ADDR_SAMP_USERNAME                   := [0x219A6F, 0x219A77, 0x2AC187]
global ADDR_SAMP_SERVERNAME                 := [0x121, 0x11D, 0x131]
global ADDR_SAMP_SERVERIP                   := [0x20, 0x1C, 0x30]
global ADDR_SAMP_SERVERPORT                 := [0x225, 0x221, 0x235]
global ADDR_SAMP_VEHPOOL                    := [0x1C, 0xC, 0xC]
global SAMP_SCOREBOARD_INFO_PTR 	    := [0x21A0B4, 0x21A0BC, 0x2AC9DC]
global SAMP_REMOTEPLAYERDATA_OFFSET         := [0x0, 0xC, 0x8]
global SAMP_REMOTEPLAYERDATA_ACTOR          := [0x0, 0x1C, 0x4]
global SAMP_REMOTEPLAYERDATA_PED            := [0x25C, 0x40, 0x40]
global SAMP_REMOTEPLAYERDATA_HEALTH	    := [0x1BC, 0x1BC, 0x1B0]
global SAMP_REMOTEPLAYERDATA_ARMOR          := [0x1B8, 0x1AC, 0x1AC]
global SAMP_REMOTEPLAYERDATA_GLOBALPOS      := [0x2A4, 0x17C, 0x120]
global SAMP_REMOTEPLAYERDATA_POS            := [0x2A4, 0x2A, 0x42]
global FUNC_SAMP_SETCHECKPOINT              := [0x9D340, 0x9D3F0, 0xA1C00]
global SAMP_CHECKPOINT_ACTIVE               := [0x24, 0x4D, 0x4D]
global FUNC_SAMP_SENDCMD                    := [0x65C60, 0x65D30, 0x69340]
global FUNC_SAMP_SENDSAY                    := [0x57F0, 0x57E0, 0x5860]
global FUNC_SAMP_ADDTOCHATWND               := [0x64520, 0x645F0, 0x67B60]
global ADDR_SAMP_CHATMSG_PTR                := [0x21A0E4, 0x21A0EC, 0x2ACA10]
global FUNC_SAMP_SHOWGAMETEXT               := [0x9C2C0, 0x9C370, 0xA0B20]
global FUNC_SAMP_PLAYAUDIOSTR               := [0x62DA0, 0x62E70, 0x663E0]
global FUNC_SAMP_STOPAUDIOSTR               := [0x629A0, 0x62A70, 0x65FE0]
global DIALOG_STYLE_MSGBOX                  := 0
global DIALOG_STYLE_INPUT                   := 1
global DIALOG_STYLE_LIST                    := 2
global DIALOG_STYLE_PASSWORD                := 3
global DIALOG_STYLE_TABLIST                 := 4
global DIALOG_STYLE_TABLIST_HEADERS         := 5
global SAMP_DIALOG_STRUCT_PTR               := [0x21A0B8, 0x21A0C0, 0x2AC9E0]
global SAMP_DIALOG_PTR1_OFFSET              := 0x1C
global SAMP_DIALOG_LINES_OFFSET             := 0x44C
global SAMP_DIALOG_INDEX_OFFSET             := 0x443
global SAMP_DIALOG_BUTTON_HOVERING_OFFSET   := 0x465
global SAMP_DIALOG_BUTTON_CLICKED_OFFSET    := 0x466
global SAMP_DIALOG_PTR2_OFFSET              := 0x20
global SAMP_DIALOG_LINECOUNT_OFFSET         := 0x150
global SAMP_DIALOG_OPEN_OFFSET              := 0x28
global SAMP_DIALOG_STYLE_OFFSET             := 0x2C
global SAMP_DIALOG_ID_OFFSET                := 0x30
global SAMP_DIALOG_TEXT_PTR_OFFSET          := 0x34
global SAMP_DIALOG_CAPTION_OFFSET           := 0x40
global FUNC_SAMP_SHOWDIALOG                 := [0x6B9C0, 0x6BA70, 0x6FA50]
global FUNC_SAMP_CLOSEDIALOG                := [0x6C040, 0x6B2C0, 0x6F2A0]
global FUNC_UPDATESCOREBOARD                := [0x8A10, 0x8A20, 0x8C00]
global SAMP_INFO_OFFSET                     := [0x21A0F8, 0x21A100, 0x2ACA24]
global ADDR_SAMP_CRASHREPORT                := [0x5CF2C, 0x5D00C, 0x604CC]
global SAMP_PPOOLS_OFFSET                   := [0x3CD, 0x3C5, 0x3DE]
global SAMP_PPOOL_PLAYER_OFFSET             := [0x18, 0x8, 0x8]
global SAMP_SLOCALPLAYERID_OFFSET           := [0x4, 0x0, 0x0]
global SAMP_ISTRLEN_LOCALPLAYERNAME_OFFSET  := [0x1A, 0x16, 0x16]
global SAMP_SZLOCALPLAYERNAME_OFFSET        := [0xA, 0x6, 0x6]
global SAMP_PSZLOCALPLAYERNAME_OFFSET       := [0xA, 0x6, 0x6]
global SAMP_ILOCALPLAYERPING_OFFSET         := [0x26, 0x2F36, 0x2F36]
global SAMP_ILOCALPLAYERSCORE_OFFSET        := [0x2A, 0x2F3A, 0x2F3A]
global SAMP_PREMOTEPLAYER_OFFSET            := [0x2E, 0x26, 0x26]
global SAMP_ISTRLENNAME___OFFSET            := [0x1C, 0x24, 0x24]
global SAMP_SZPLAYERNAME_OFFSET             := [0xC, 0x14, 0x14]
global SAMP_PSZPLAYERNAME_OFFSET            := [0xC, 0x14, 0x14]
global SAMP_IPING_OFFSET                    := [0x28, 0x4, 0xC]
global SAMP_ISCORE_OFFSET                   := [0x24, 0x0, 0x0]
global SAMP_ISNPC_OFFSET                    := [0x4, 0x8, 0x4]
global SAMP_PLAYER_MAX                      := 1004
global ADDR_CP_CHECK                        := 0xC7DEEA
global ADDR_REDMARKER                       := [0xC7DEC8, 0xC7DECC, 0xC7DED0]
global SIZE_SAMP_CHATMSG                    := 0xFC
global sampVersion							:= 0
global hGTA                                 := 0x0
global dwGTAPID                             := 0x0
global dwSAMP                               := 0x0
global pMemory                              := 0x0
global pParam1                              := 0x0
global pParam2                              := 0x0
global pParam3                              := 0x0
global pParam4                              := 0x0
global pParam5                              := 0x0
global pInjectFunc                          := 0x0
global nZone                                := 1
global nZoneTwo 							:= 1
global nCity                                := 1
global bInitZaC                             := 0
global iRefreshScoreboard                   := 0
global oScoreboardData                      := ""
global iRefreshHandles                      := 0
global iUpdateTick                          := 2500
GetCheckDialogButton()
{
    if (isDialogOpen() == 1)
    {
        Loop
        {
            if (GetKeyState("LButton","P"))
            {
                Loop
                {
                    if (isDialogButtonSelected(1) == 1)
                    {
                        while (isDialogOpen() = 0)
                        return 1
                    }
                    else if (GetKeyState("LButton","P"))
                    {
                        while (isDialogOpen() = 0)
                        return 1
                    }
                    else if (GetKeyState("Esc","P"))
                    {
                        while (isDialogOpen() = 0)
                        return 0
                    }
                    else if (GetKeyState("Enter","P"))
                    {
                        while (isDialogOpen() = 0)
                        return 1
                    }
                    else
                    {
                        while (isDialogOpen() = 0)
                        return 0
                    }
                }
            }
            if (GetKeyState("Up","P") || GetKeyState("Down","P"))
            {
                Loop
                {
                    if (isDialogButtonSelected(1) == 1)
                    {
                        while (isDialogOpen() = 0)
                        return 1
                    }
                    else if (GetKeyState("LButton","P"))
                    {
                        while (isDialogOpen() = 0)
                        return 1
                    }
                    else if (GetKeyState("Esc","P"))
                    {
                        while (isDialogOpen() = 0)
                        return 0
                    }
                    else if (GetKeyState("Enter","P"))
                    {
                        while (isDialogOpen() = 0)
                        return 1
                    }
                    else if (isDialogOpen() = 0)
                    return 0
                }
            }
            else if (GetKeyState("Esc", "P") && GetKeyState("Enter", "U"))
            {
                while (isDialogOpen() = 0)
                return 0
            }
            else if (GetKeyState("Enter", "P") && GetKeyState("Esc", "U"))
            {
                while (isDialogOpen() = 0)
                return 1
            }
            else if (GetKeyState("Enter", "P"))
            return 1
            else if (GetKeyState("Esc", "P"))
            return 0
            else if (isDialogOpen() = 0)
            return 1
        }
    }
    if (isDialogOpen() == 0)
    return 0
}
GetText(name, min := 1, max := 105, button := 0)
{
    text := ""
    for key, val in name
    {
        if (A_Index >= min && A_Index <= max)
        text .= val "`n"
        temp_A_Index := A_Index
    }
    text := Trim(text, "`n")
    if  (button)
    {
        if (min > 105)
        text .= " `nНазад"
        if (temp_A_Index > max)
        text .= "`nВперед"
    }
    text := Trim(text, "`n")
    return Array(text, min, max, temp_A_Index)
}
setPlayerName(playerid, newnick) {
    if(!checkHandles() || !strlen(newnick))
    return 0
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwPlayers := readDWORD(hGTA, dwAddress + SAMP_PPOOL_PLAYER_OFFSET)
    if(ErrorLevel || dwPlayers==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwRemoteplayer := readDWORD(hGTA, dwPlayers+SAMP_PREMOTEPLAYER_OFFSET+playerid*4)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    if(dwRemoteplayer==0)
    return 0
    dwTemp := readMem(hGTA, dwRemoteplayer + SAMP_ISTRLENNAME___OFFSET, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    sUsername := ""
    if(dwTemp <= 0xf)
    {
        sUsername := readString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET, 16)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        writeString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET, newnick)
    }
    else {
        dwAddress := readDWORD(hGTA, dwRemoteplayer + SAMP_PSZPLAYERNAME_OFFSET)
        if(ErrorLevel || dwAddress==0) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        sUsername := readString(hGTA, dwAddress, 25)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        writeString(hGTA, dwAddress, newnick)
    }
    ErrorLevel := ERROR_OK
    return 1
}
getDialogLineNumber() {
    dwPointer := getDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return 0
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    count := readMem(hGTA, dwPointer + SAMP_DIALOG_LINENUMBER_OFFSET, 4, "UInt")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    return count//16777216+1
}
IsSAMPAvailable() {
    if(!checkHandles())
    return false
    dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
    if(dwChatInfo == 0 || dwChatInfo == "ERROR")
    {
        return false
    }
    else
    {
        return true
    }
}
IsInChat() {
    if(!checkHandles())
    return -1
    dwPtr := dwSAMP + ADDR_SAMP_INCHAT_PTR[sampVersion]
    dwAddress := readDWORD(hGTA, dwPtr) + ADDR_SAMP_INCHAT_PTR_OFF[sampVersion]
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwInChat := readDWORD(hGTA, dwAddress)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    if(dwInChat > 0) {
        return true
    } else {
        return false
    }
}
GetPlayerName() {
    if(!checkHandles())
    return ""
    dwAddress := dwSAMP + ADDR_SAMP_USERNAME[sampVersion]
    sUsername := readString(hGTA, dwAddress, 25)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return sUsername
}
GetPlayerId() {
    s := GetPlayerName()
    return GetPlayerIdByName(s)
}
SendChat(wText) {
    wText := "" wText
    if(!checkHandles())
    return false
    dwFunc:=0
    if(SubStr(wText, 1, 1) == "/") {
        dwFunc := dwSAMP + FUNC_SAMP_SENDCMD[sampVersion]
    } else {
        dwFunc := dwSAMP + FUNC_SAMP_SENDSAY[sampVersion]
    }
    callWithParams(hGTA, dwFunc, [["s", wText]], false)
    ErrorLevel := ERROR_OK
    return true
}
AddChatMessage(wText) {
    wText := "" wText
    if(!checkHandles())
    return false
    dwFunc := dwSAMP + FUNC_SAMP_ADDTOCHATWND[sampVersion]
    dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR[sampVersion])
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    callWithParams(hGTA, dwFunc, [["p", dwChatInfo], ["s", wText]], true)
    ErrorLevel := ERROR_OK
    return true
}
addChatMessageEx(Color, wText) {
    wText := "" wText
    if(!checkHandles())
    return false
    VarSetCapacity(data2, 4, 0)
    NumPut(HexToDec(Color),data2,0,"Int")
    Addrr := readDWORD(hGTA, dwSAMP+ADDR_SAMP_CHATMSG_PTR)
    VarSetCapacity(data1, 4, 0)
    NumPut(readDWORD(hGTA, Addrr + 0x12A), data1,0,"Int")
    WriteRaw(hGTA, Addrr + 0x12A, &data2, 4)
    dwFunc := dwSAMP + FUNC_SAMP_ADDTOCHATWND
    dwChatInfo := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    callWithParams(hGTA, dwFunc, [["p", dwChatInfo], ["s", wText]], true)
    WriteRaw(hGTA, Addrr + 0x12A, &data1, 4)
    ErrorLevel := ERROR_OK
    return true
}
ShowGameText(wText, dwTime, dwTextstyle) {
    wText := "" wText
    dwTime += 0
    dwTime := Floor(dwTime)
    dwTextstyle += 0
    dwTextstyle := Floor(dwTextstyle)
    if(!checkHandles())
    return false
    dwFunc := dwSAMP + FUNC_SAMP_SHOWGAMETEXT[sampVersion]
    callWithParams(hGTA, dwFunc, [["s", wText], ["i", dwTime], ["i", dwTextstyle]], false)
    ErrorLevel := ERROR_OK
    return true
}
PlayAudioStream(wUrl) {
    wUrl := "" wUrl
    if(!checkHandles())
    return false
    dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR[sampVersion]
    PatchRadio()
    callWithParams(hGTA, dwFunc, [["s", wUrl], ["i", 0], ["i", 0], ["i", 0], ["i", 0], ["i", 0]], false)
    UnPatchRadio()
    ErrorLevel := ERROR_OK
    return true
}
StopAudioStream() {
    if(!checkHandles())
    return false
    dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR[sampVersion]
    PatchRadio()
    callWithParams(hGTA, dwFunc, [["i", 1]], false)
    UnPatchRadio()
    ErrorLevel := ERROR_OK
    return true
}
PatchRadio() {
    if(!checkHandles())
    return false
    VarSetCapacity(nop, 4, 0)
    NumPut(0x90909090,nop,0,"UInt")
    dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR[sampVersion]
    writeRaw(hGTA, dwFunc, &nop, 4)
    writeRaw(hGTA, dwFunc+4, &nop, 1)
    dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR[sampVersion]
    writeRaw(hGTA, dwFunc, &nop, 4)
    writeRaw(hGTA, dwFunc+4, &nop, 1)
    return true
}
UnPatchRadio() {
    if(!checkHandles())
    return false
    VarSetCapacity(old, 4, 0)
    dwFunc := dwSAMP + FUNC_SAMP_PLAYAUDIOSTR[sampVersion]
    NumPut(0x74003980,old,0,"UInt")
    writeRaw(hGTA, dwFunc, &old, 4)
    NumPut(0x39,old,0,"UChar")
    writeRaw(hGTA, dwFunc+4, &old, 1)
    dwFunc := dwSAMP + FUNC_SAMP_STOPAUDIOSTR[sampVersion]
    NumPut(0x74003980,old,0,"UInt")
    writeRaw(hGTA, dwFunc, &old, 4)
    NumPut(0x09,old,0,"UChar")
    writeRaw(hGTA, dwFunc+4, &old, 1)
    return true
}
BlockChatInput() {
    if(!checkHandles())
    return false
    VarSetCapacity(nop, 2, 0)
    dwFunc := dwSAMP + FUNC_SAMP_SENDSAY[sampVersion]
    NumPut(0x04C2,nop,0,"Short")
    writeRaw(hGTA, dwFunc, &nop, 2)
    dwFunc := dwSAMP + FUNC_SAMP_SENDCMD[sampVersion]
    writeRaw(hGTA, dwFunc, &nop, 2)
    return true
}
UnBlockChatInput() {
    if(!checkHandles())
    return false
    VarSetCapacity(nop, 2, 0)
    dwFunc := dwSAMP + FUNC_SAMP_SENDSAY[sampVersion]
    NumPut(0xA164,nop,0,"Short")
    writeRaw(hGTA, dwFunc, &nop, 2)
    dwFunc := dwSAMP + FUNC_SAMP_SENDCMD[sampVersion]
    writeRaw(hGTA, dwFunc, &nop, 2)
    return true
}
GetServerName() {
    if(!checkHandles())
    return -1
    dwAdress := readMem(hGTA, dwSAMP + SAMP_INFO_OFFSET[sampVersion], 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAdress)
    return -1
    ServerName := readString(hGTA, dwAdress + ADDR_SAMP_SERVERNAME[sampVersion], 200)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return ServerName
}
GetServerIp() {
    if(!checkHandles())
    return -1
    dwAdress := readMem(hGTA, dwSAMP + SAMP_INFO_OFFSET[sampVersion], 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAdress)
    return -1
    ServerIP := readString(hGTA, dwAdress + ADDR_SAMP_SERVERIP[sampVersion], 100)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return ServerIP
}
GetServerPort() {
    if(!checkHandles())
    return -1
    dwAdress := readMem(hGTA, dwSAMP + SAMP_INFO_OFFSET[sampVersion], 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAdress)
    return -1
    ServerPort := readMem(hGTA, dwAdress + ADDR_SAMP_SERVERPORT[sampVersion], 4, "int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return ServerPort
}
GetWeatherId() {
    if(!checkHandles())
    return -1
    WeatherID := readMem(hGTA, 0xC81320, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return WeatherID
}
GetWeatherName() {
    id := getWeatherID()
    if(id >= 0 && id < 23)
    {
        return oweatherNames[id-1]
    }
    return ""
}
setTime(hour)
{
    if(!checkHandles())
    return
    VarSetCapacity(nop, 6, 0)
    Loop 6 {
        NumPut(0x90, nop, A_INDEX-1, "UChar")
    }
    writeRaw(hGTA, 0x52D168, &nop, 6)
    VarSetCapacity(time, 1, 0)
    NumPut(hour, time, 0, "Int")
    writeRaw(hGTA, 0xB70153, &time, 1)
}
setWeather(id)
{
    if(!checkHandles())
    return
    VarSetCapacity(weather, 1, 0)
    NumPut(id, weather, 0, "Int")
    writeRaw(hGTA, 0xC81320, &weather, 1)
    if(ErrorLevel)
    return false
    return true
}
getSkinID() {
    if(!checkHandles())
    return -1
    dwAddress := readDWORD(hGTA, 0xB6F3B8)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    id := readMem(hGTA, dwAddress + 0x22, 2, "UShort")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return id
}
GetPlayerHealth() {
    if(!checkHandles())
    return -1
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwAddr := dwCPedPtr + ADDR_CPED_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}
GetPlayerArmor() {
    if(!checkHandles())
    return -1
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwAddr := dwCPedPtr + ADDR_CPED_ARMOROFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}
GetPlayerInteriorId() {
    if(!checkHandles())
    return -1
    iid := readMem(hGTA, ADDR_CPED_INTID, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return iid
}
GetPlayerSkinId() {
    if(!checkHandles())
    return -1
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwAddr := dwCPedPtr + ADDR_CPED_SKINIDOFF
    SkinID := readMem(hGTA, dwAddr, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return SkinID
}
GetNewLine(filename) {
    static old
    static new
    if !old
    {
        FileGetSize, old, %filename%
        new := old
    }
    while old = new
    {
        sleep 200
        FileGetSize, new, %filename%
    }
    old := new
    Loop, read, %filename%
    if A_LoopReadLine
    {
        last := A_LoopReadLine
    }
    return last
}
GetPlayerMoney() {
    if(!checkHandles())
    return ""
    money := readMem(hGTA, ADDR_CPED_MONEY, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return money
}
GetPlayerWanteds() {
    if(!checkHandles())
    return -1
    dwPtr := 0xB7CD9C
    dwPtr := readDWORD(hGTA, dwPtr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    Wanteds := readDWORD(hGTA, dwPtr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return Wanteds
}
GetPlayerWeaponId() {
    if(!checkHandles())
    return 0
    WaffenId := readMem(hGTA, 0xBAA410, 4, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    return WaffenId
}
GetPlayerWeaponName() {
    id := GetPlayerWeaponId()
    if(id >= 0 && id < 44)
    {
        return oweaponNames[id+1]
    }
    return ""
}
GetPlayerState() {
    if(!checkHandles())
    return -1
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    State := readDWORD(hGTA, dwCPedPtr + 0x530)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return State
}
IsPlayerInMenu() {
    if(!checkHandles())
    return -1
    IsInMenu := readMem(hGTA, 0xBA67A4, 4, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return IsInMenu
}
GetPlayerMapPosX() {
    if(!checkHandles())
    return -1
    MapPosX := readFloat(hGTA, 0xBA67B8)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return MapPosX
}
GetPlayerMapPosY() {
    if(!checkHandles())
    return -1
    MapPosY := readFloat(hGTA, 0xBA67BC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return MapPosY
}
GetPlayerMapZoom() {
    if(!checkHandles())
    return -1
    MapZoom := readFloat(hGTA, 0xBA67AC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return MapZoom
}
IsPlayerFreezed() {
    if(!checkHandles())
    return -1
    IPF := readMem(hGTA, 0x690495, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return IPF
}
IsPlayerInAnyVehicle()
{
    if(!checkHandles())
    return -1
    dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    return (dwVehPtr > 0)
}
IsPlayerDriver() {
    if(!checkHandles())
    return -1
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAddr)
    return -1
    dwCPedPtr := readDWORD(hGTA, ADDR_CPED_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DRIVER)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal==dwCPedPtr)
}
isTargetDriverbyId(dwId)
{
    if(!checkHandles())
    return -1
    dwPedPointer := getPedById(dwId)
    dwAddrVPtr := getVehiclePointerByPed(dwPedPointer)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwVal := readDWORD(hGTA, dwAddrVPtr + ADDR_VEHICLE_DRIVER)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal == dwPedPointer)
}
GetVehicleHealth() {
    if(!checkHandles())
    return -1
    dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}
GetVehicleType() {
    if(!checkHandles())
    return 0
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    if(!dwAddr)
    return 0
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    if(!cVal)
    {
        mid := GetVehicleModelId()
        Loop % oAirplaneModels.MaxIndex()
        {
            if(oAirplaneModels[A_Index]==mid)
            return 5
        }
        return 1
    }
    else if(cVal==5)
    return 2
    else if(cVal==6)
    return 3
    else if(cVal==9)
    {
        mid := GetVehicleModelId()
        Loop % oBikeModels.MaxIndex()
        {
            if(oBikeModels[A_Index]==mid)
            return 6
        }
        return 4
    }
    return 0
}
getPlayerColorById(playerid) {
    if(!checkHandles())
    return false
    idColor := readDWORD(hGTA, dwSAMP + 0x18F6C0 + 4 * playerid)
    rgbhex := SubStr(IntToHex(idColor), 3, 6)
    rgbhex2 := SubStr(IntToHex(idColor), 1, 6)
    StringUpper, playercolor, rgbhex
    if (rgbhex2="0x33FF" || playercolor="96FF")
    playercolor := "0333F1"
    else if (rgbhex2="0x9900")
    playercolor := "009900"
    else if (rgbhex2="0xCCFF")
    playercolor := "00CCFF"
    else if (playercolor="0")
    playercolor := "FFFFFF"
return "{" playercolor "}"
}
getPlayerWantedsById(playerid) {
    if(!checkHandles())
    return false
    PlayerColor := getPlayerColorById(playerid)
if ((PlayerColor = "{FF6000}") or (PlayerColor = "{FF7A2A}") or (PlayerColor = "{FF9454}") or (PlayerColor = "{FFAE7E}") or (PlayerColor = "{FFC8A8}") or (PlayerColor = "{FFE2D2}"))
    {
    if (PlayerColor = "{FF6000}")
        {
        playerWanteds := "{FF6000}6зв{FFFFFF}"
        }
    if (PlayerColor = "{FF7A2A}")
        {
        playerWanteds := "{FF7A2A}5зв{FFFFFF}"
        }
    if (PlayerColor = "{FF9454}")
        {
        playerWanteds := "{FF9454}4зв{FFFFFF}"
        }
    if (PlayerColor = "{FFAE7E}")
        {
        playerWanteds := "{FFAE7E}3зв{FFFFFF}"
        }
    if (PlayerColor = "{FFC8A8}")
        {
        playerWanteds := "{FFC8A8}2зв{FFFFFF}"
        }
    if (PlayerColor = "{FFE2D2}")
        {
        playerWanteds := "{FFE2D2}1зв{FFFFFF}"
        }
    }
    else
    {
    playerWanteds := "{FFFFFF}0зв{FFFFFF}"
    }
    return playerWanteds
}
setPlayerColor(id,color)
{
    id += 0
    color +=0

    if(!checkHandles())
        return

    VarSetCapacity(bla, 4, 0)
    NumPut(color,bla,0,"UInt")

    writeRaw(hGTA, dwSAMP + 0x216378 + 4*id, &bla, 4)
}
colorToStr(color)
{
    color += 0
    color >>= 8
    color &= 0xffffff
    SetFormat, IntegerFast, hex
    color += 0
    color .= ""
    StringTrimLeft, color, color, 2
    SetFormat, IntegerFast, d
return "{" color "}"
}
Convert(up,txt) {
    DllCall("Char" . (up ? "Upper" : "Lower"), Str, string := txt)
    text := string
    return, %text%
}
GetVehicleModelId() {
    if(!checkHandles())
    return 0
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
GetVehicleModelName() {
    id:=GetVehicleModelId()
    if(id > 400 && id < 611)
    {
        return ovehicleNames[id-399]
    }
    return ""
}
GetVehicleLightState() {
    if(!checkHandles())
    return -1
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAddr)
    return -1
    dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal>0)
}
GetVehicleEngineState() {
    if(!checkHandles())
    return -1
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAddr)
    return -1
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_ENGINESTATE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (cVal==24 || cVal==56 || cVal==88 || cVal==120)
}
GetVehicleLockState() {
    if(!checkHandles())
    return -1
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    if(!dwAddr)
    return -1
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal==2)
}
GetVehicleColor1() {
    if(!checkHandles())
    return 0
    dwAddr := readDWORD(hGTA, 0xBA18FC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
GetVehicleColor2() {
    if(!checkHandles())
    return 0
    dwAddr := readDWORD(hGTA, 0xBA18FC)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
GetVehicleSpeed() {
    if(!checkHandles())
    return -1
    dwAddr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
    fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
    fVehicleSpeed := (fVehicleSpeed * 100) * 1.43
    return fVehicleSpeed
}
GetPlayerRadiostationId() {
    if(!checkHandles())
    return -1
    if(IsPlayerInAnyVehicle() == 0)
    return -1
    RadioStationID := readMem(hGTA, 0x4CB7E1, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    return RadioStationID
}
GetPlayerRadiostationName() {
    if(IsPlayerInAnyVehicle() == 0)
    return -1
    id := GetPlayerRadiostationID()
    if(id == 0)
    return -1
    if(id >= 0 && id < 14)
    {
        return oradiostationNames[id]
    }
    return ""
}
GetVehicleNumberPlate() {
    if(!checkHandles())
    return ""
    dwVehPtr := readDWORD(hGTA, ADDR_VEHICLE_PTR)
    if(ErrorLevel || dwVehPtr==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    vehpool := readDWORD(hGTA, dwAddress + ADDR_SAMP_VEHPOOL[sampVersion])
    if(ErrorLevel || vehpool==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    Loop, 2000
    {
        i := A_Index-1
        listed := readDWORD(hGTA, vehpool + 0x3074 + i*4)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return ""
        }
        if(listed==0)
        continue
        svehptr := readDWORD(hGTA, vehpool + 0x4FB4 + i*4)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return ""
        }
        if(svehptr==dwVehPtr) {
            sampveh := readDWORD(hGTA, vehpool + 0x1134 + i*4)
            if(ErrorLevel || sampveh==0) {
                ErrorLevel := ERROR_READ_MEMORY
                return ""
            }
            plate := readString(hGTA, sampveh + 0x93, 32)
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return ""
            }
            ErrorLevel := ERROR_OK
            return plate
        }
    }
    ErrorLevel := ERROR_OK
    return ""
}
GetTargetPed() {
    if(!checkHandles())
    return 0
    dwAddress := readDWORD(hGTA, 0xB6F3B8)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    if(!dwAddress)
    return 0
    dwAddress := readDWORD(hGTA, dwAddress+0x79C)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwAddress
}
CalcScreenCoords(fX, fY, fZ) {
    if(!checkHandles())
    return false
    dwM := 0xB6FA2C
    m_11 := readFloat(hGTA, dwM + 0*4)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    m_12 := readFloat(hGTA, dwM + 1*4)
    m_13 := readFloat(hGTA, dwM + 2*4)
    m_21 := readFloat(hGTA, dwM + 4*4)
    m_22 := readFloat(hGTA, dwM + 5*4)
    m_23 := readFloat(hGTA, dwM + 6*4)
    m_31 := readFloat(hGTA, dwM + 8*4)
    m_32 := readFloat(hGTA, dwM + 9*4)
    m_33 := readFloat(hGTA, dwM + 10*4)
    m_41 := readFloat(hGTA, dwM + 12*4)
    m_42 := readFloat(hGTA, dwM + 13*4)
    m_43 := readFloat(hGTA, dwM + 14*4)
    dwLenX := readDWORD(hGTA, 0xC17044)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    dwLenY := readDWORD(hGTA, 0xC17048)
    frX := fZ * m_31 + fY * m_21 + fX * m_11 + m_41
    frY := fZ * m_32 + fY * m_22 + fX * m_12 + m_42
    frZ := fZ * m_33 + fY * m_23 + fX * m_13 + m_43
    fRecip := 1.0/frZ
    frX *= fRecip * dwLenX
    frY *= fRecip * dwLenY
    if(frX<=dwLenX && frY<=dwLenY && frZ>1)
    return [frX,frY,frZ]
}
GetPedById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return 0
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
            if(oScoreboardData[dwId].HasKey("PED"))
            return oScoreboardData[dwId].PED
        }
        return 0
    }
    if(!updateOScoreboardData())
    return 0
    if(oScoreboardData[dwId])
    {
        if(oScoreboardData[dwId].HasKey("PED"))
        return oScoreboardData[dwId].PED
    }
    return 0
}
getIdByPed(dwPed) {
    dwPed += 0
    dwPed := Floor(dwPed)
    if(!dwPed)
    return -1
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        For i, o in oScoreboardData
        {
            if(o.HasKey("PED"))
            {
                if(o.PED==dwPed)
                return i
            }
        }
        return -1
    }
    if(!updateOScoreboardData())
    return -1
    For i, o in oScoreboardData
    {
        if(o.HasKey("PED"))
        {
            if(o.PED==dwPed)
            return i
        }
    }
    return -1
}
GetStreamedInPlayersInfo() {
    r:=[]
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        For i, o in oScoreboardData
        {
            if(o.HasKey("PED"))
            {
                p := GetPedCoordinates(o.PED)
                if(p)
                {
                    o.POS := p
                    r[i] := o
                }
            }
        }
        return r
    }
    if(!updateOScoreboardData())
    return ""
    For i, o in oScoreboardData
    {
        if(o.HasKey("PED"))
        {
            p := GetPedCoordinates(o.PED)
            if(p)
            {
                o.POS := p
                r[i] := o
            }
        }
    }
    return r
}
CallFuncForAllStreamedInPlayers(cfunc, dist=0x7fffffff) {
    cfunc := "" cfunc
    dist += 0
    if(!IsFunc(cfunc))
    return false
    p := GetStreamedInPlayersInfo()
    if(!p)
    return false
    if(dist<0x7fffffff)
    {
        lpos := GetPlayerCoordinates()
        if(!lpos)
        return false
        For i, o in p
        {
            if(dist>GetDist(lpos,o.POS))
            %cfunc%(o)
        }
    }
    else
    {
        For i, o in p
        %cfunc%(o)
    }
    return true
}
isPlayerInStreamById(player_id, radius := 300) {
    NAME := ""
    check := []
    p := getStreamedInPlayersInfo()
    if (!p)
    return 0
    For i, o in p
    {
        if (Floor(getDist(getCoordinates(), o.POS)) <= radius)
        {
            NAME .= o.NAME ", "
        }
    }
    if (IsObject(player_id))
    {
        for k, v in player_id
        {
            i := 0
            Loop, Parse, % NAME, % ",", % " ,.`n`r"
            {
                if (A_LoopField == getPlayerNameById(v))
                {
                    i := 1
                    break
                }
            }
            if (i)
            check[v] := i
            else
            check[v] := i
        }
        return check
    }
    else if (!IsObject(player_id))
    {
        if (!getPlayerNameById(player_id))
        return 0
        i := 0
        Loop, Parse, % NAME, % ",", % " ,.`n`r"
        {
            if (A_LoopField == getPlayerNameById(player_id))
            return 1
        }
        return 0
    }
}
GetDist(pos1, pos2) {
    if(!pos1 || !pos2)
    return 0
    return Sqrt((pos1[1]-pos2[1])*(pos1[1]-pos2[1])+(pos1[2]-pos2[2])*(pos1[2]-pos2[2])+(pos1[3]-pos2[3])*(pos1[3]-pos2[3]))
}
GetClosestPlayerPed() {
    dist := 0x7fffffff
    p := GetStreamedInPlayersInfo()
    if(!p)
    return -1
    lpos := GetPlayerCoordinates()
    if(!lpos)
    return -1
    id := -1
    For i, o in p
    {
        t:=GetDist(lpos,o.POS)
        if(t<dist)
        {
            dist := t
            id := i
        }
    }
    PED := GetPedById(id)
    return PED
}
GetClosestPlayerId() {
    dist := 0x7fffffff
    p := GetStreamedInPlayersInfo()
    if(!p)
    return -1
    lpos := GetPlayerCoordinates()
    if(!lpos)
    return -1
    id := -1
    For i, o in p
    {
        t:=GetDist(lpos,o.POS)
        if(t<dist)
        {
            dist := t
            id := i
        }
    }
    return id
}
CountOnlinePlayers() {
    if(!checkHandles())
    return -1
    dwOnline := readDWORD(hGTA, dwSAMP + SAMP_SCOREBOARD_INFO_PTR[sampVersion])
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwAddr := dwOnline + 0x4
    OnlinePlayers := readDWORD(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return OnlinePlayers
}
GetPedCoordinates(dwPED) {
    dwPED += 0
    dwPED := Floor(dwPED)
    if(!dwPED)
    return ""
    if(!checkHandles())
    return ""
    dwAddress := readDWORD(hGTA, dwPED + 0x14)
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fX := readFloat(hGTA, dwAddress + 0x30)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fY := readFloat(hGTA, dwAddress + 0x34)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fZ := readFloat(hGTA, dwAddress + 0x38)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return [fX, fY, fZ]
}
GetTargetPosById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return ""
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
            if(oScoreboardData[dwId].HasKey("PED"))
            return GetPedCoordinates(oScoreboardData[dwId].PED)
            if(oScoreboardData[dwId].HasKey("MPOS"))
            return oScoreboardData[dwId].MPOS
        }
        return ""
    }
    if(!updateOScoreboardData())
    return ""
    if(oScoreboardData[dwId])
    {
        if(oScoreboardData[dwId].HasKey("PED"))
        return GetPedCoordinates(oScoreboardData[dwId].PED)
        if(oScoreboardData[dwId].HasKey("MPOS"))
        return oScoreboardData[dwId].MPOS
    }
    return ""
}
GetTargetPlayerSkinIdByPed(dwPED) {
    if(!checkHandles())
    return -1
    dwAddr := dwPED + ADDR_CPED_SKINIDOFF
    SkinID := readMem(hGTA, dwAddr, 2, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return SkinID
}
GetTargetPlayerSkinIdById(dwId) {
    if(!checkHandles())
    return -1
    SkinID := readMem(hGTA, GetPedById(dwId) + ADDR_CPED_SKINIDOFF, 2, "UShort")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return SkinID
}
GetVehiclePointerByPed(dwPED) {
    dwPED += 0
    dwPED := Floor(dwPED)
    if(!dwPED)
    return 0
    if(!checkHandles())
    return 0
    dwAddress := readDWORD(hGTA, dwPED + 0x58C)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwAddress
}
GetVehiclePointerById(dwId) {
    if(!dwId)
    return 0
    if(!checkHandles())
    return 0
    dwPed_By_Id := GetPedById(dwId)
    dwAddress := readDWORD(hGTA, dwPed_By_Id + 0x58C)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwAddress
}
IsTargetInAnyVehicleByPed(dwPED) {
    if(!checkHandles())
    return -1
    dwVehiclePointer := GetVehiclePointerByPed(dwPedPointer)
    if(dwVehiclePointer > 0)
    {
        return 1
    }
    else if(dwVehiclePointer <= 0)
    {
        return 0
    }
    else
    {
        return -1
    }
}
IsTargetInAnyVehicleById(dwId) {
    if(!checkHandles())
    return -1
    dwPedPointer := GetPedById(dwId)
    dwVehiclePointer := GetVehiclePointerByPed(dwPedPointer)
    if(dwVehiclePointer > 0)
    {
        return 1
    }
    else if(dwVehiclePointer <= 0)
    {
        return 0
    }
    else
    {
        return -1
    }
}
GetTargetVehicleHealthByPed(dwPed) {
    if(!checkHandles())
    return -1
    dwVehPtr := GetVehiclePointerByPed(dwPed)
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}
GetTargetVehicleHealthById(dwId) {
    if(!checkHandles())
    return -1
    dwVehPtr := GetVehiclePointerById(dwId)
    dwAddr := dwVehPtr + ADDR_VEHICLE_HPOFF
    fHealth := readFloat(hGTA, dwAddr)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return Round(fHealth)
}
GetTargetVehicleTypeByPed(dwPED) {
    if(!checkHandles())
    return 0
    dwAddr := GetVehiclePointerByPed(dwPED)
    if(!dwAddr)
    return 0
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    if(!cVal)
    {
        mid := GetVehicleModelId()
        Loop % oAirplaneModels.MaxIndex()
        {
            if(oAirplaneModels[A_Index]==mid)
            return 5
        }
        return 1
    }
    else if(cVal==5)
    return 2
    else if(cVal==6)
    return 3
    else if(cVal==9)
    {
        mid := GetVehicleModelId()
        Loop % oBikeModels.MaxIndex()
        {
            if(oBikeModels[A_Index]==mid)
            return 6
        }
        return 4
    }
    return 0
}
GetTargetVehicleLightStateByPed(dwPED) {
    if(!checkHandles())
    return -1
    dwAddr := GetVehiclePointerByPed(dwPED)
    if(!dwAddr)
    return -1
    dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal>0)
}
GetTargetVehicleLightStateById(dwId) {
    if(!checkHandles())
    return -1
    dwAddr := GetVehiclePointerById(dwId)
    if(!dwAddr)
    return -1
    dwVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_LIGHTSTATE, 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal>0)
}
GetTargetVehicleLockStateByPed(dwPED) {
    if(!checkHandles())
    return -1
    dwAddr := GetVehiclePointerByPed(dwPED)
    if(!dwAddr)
    return -1
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal==2)
}
GetTargetVehicleLockStateById(dwId) {
    if(!checkHandles())
    return -1
    dwAddr := GetVehiclePointerById(dwId)
    if(!dwAddr)
    return -1
    dwVal := readDWORD(hGTA, dwAddr + ADDR_VEHICLE_DOORSTATE)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return (dwVal==2)
}
GetTargetVehicleColor1ByPed(dwPED) {
    if(!checkHandles())
    return 0
    dwAddr := GetVehiclePointerByPed(dwPED)
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
getTargetVehicleColorNameById(dwId) {
    id := dwId
    colorid := getTargetVehicleColor1byId(id)
    if (colorid > -1 and colorid < 128)
    return color21namecars[colorid+1]
    else if (colorid > 127 and colorid < 256)
    return color22namecars[colorid-127]
    else
    return "черный"
}
getTargetVehicleTypeById(dwId) {
    if(!checkHandles())
    return 0
    dwAddr := getVehiclePointerById(dwId)
    if(!dwAddr)
    return 0
    cVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_TYPE, 1, "Char")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    if(!cVal) {
        mid := getVehicleModelId()
        Loop % oAirplaneModels.MaxIndex()
        {
            if(oAirplaneModels[A_Index]==mid)
            return 5
        }
        return 1
    }
    else if(cVal==5)
    return 2
    else if(cVal==6)
    return 3
    else if(cVal==9) {
        mid := getVehicleModelId()
        Loop % oBikeModels.MaxIndex()
        {
            if(oBikeModels[A_Index]==mid)
            return 6
        }
        return 4
    }
    return 0
}
getTargetVehicleModelIdByPed(dwPED) {
    if(!checkHandles())
    return 0
    dwAddr := getVehiclePointerByPed(dwPED)
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
getTargetVehicleModelIdById(dwId) {
    if(!checkHandles())
    return 0
    dwAddr := getVehiclePointerById(dwId)
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + ADDR_VEHICLE_MODEL, 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
getTargetVehicleModelNameByPed(dwPED) {
    id := getTargetVehicleModelIdByPed(dwPED)
    if(id > 400 && id < 611)
    return ovehicleNames[id-399]
    return ""
}
getTargetVehicleModelNameById(dwId) {
    id := getTargetVehicleModelIdById(dwId)
    if(id > 400 && id < 611)
    return ovehicleNames[id-399]
    return ""
}
getTargetVehicleModelNameByIdDop(dwId) {
    id := getTargetVehicleModelIdById(dwId)
    if(id > 400 && id < 611)
    return ovehicleNamesImpad[id-399]
    return ""
}
GetTargetVehicleColor1ById(dwId) {
    if(!checkHandles())
    return 0
    dwAddr := GetVehiclePointerById(dwId)
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + 1076, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
GetTargetVehicleColor2ByPed(dwPED) {
    if(!checkHandles())
    return 0
    dwAddr := GetVehiclePointerByPed(dwPED)
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
GetTargetVehicleColor2ById(dwId) {
    if(!checkHandles())
    return 0
    dwAddr := GetVehiclePointerById(dwId)
    if(!dwAddr)
    return 0
    sVal := readMem(hGTA, dwAddr + 1077, 1, "byte")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return sVal
}
GetTargetVehicleSpeedByPed(dwPED) {
    if(!checkHandles())
    return -1
    dwAddr := GetVehiclePointerByPed(dwPED)
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
    fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
    fVehicleSpeed := (fVehicleSpeed * 100) * 1.43
    return fVehicleSpeed
}
GetTargetVehicleSpeedById(dwId) {
    if(!checkHandles())
    return -1
    dwAddr := GetVehiclePointerById(dwId)
    fSpeedX := readMem(hGTA, dwAddr + ADDR_VEHICLE_X, 4, "float")
    fSpeedY := readMem(hGTA, dwAddr + ADDR_VEHICLE_Y, 4, "float")
    fSpeedZ := readMem(hGTA, dwAddr + ADDR_VEHICLE_Z, 4, "float")
    fVehicleSpeed :=  sqrt((fSpeedX * fSpeedX) + (fSpeedY * fSpeedY) + (fSpeedZ * fSpeedZ))
    fVehicleSpeed := (fVehicleSpeed * 100) * 1.43
    return fVehicleSpeed
}
GetChatLine(Line, ByRef Output, timestamp=0, color=0) {
    chatindex := 0
    FileRead, file, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
    loop, Parse, file, `n, `r
    {
        if(A_LoopField)
        chatindex := A_Index
    }
    loop, Parse, file, `n, `r
    {
        if(A_Index = chatindex - line){
            output := A_LoopField
            break
        }
    }
    file := ""
    if(!timestamp)
output := RegExReplace(output, "U)^\[\d{2}:\d{2}:\d{2}\]")
    if(!color)
output := RegExReplace(output, "Ui)\{[a-f0-9]{6}\}")
    return
}
AntiCrash() {
    If(!checkHandles())
    return false
    cReport := ADDR_SAMP_CRASHREPORT
    writeMemory(hGTA, dwSAMP + cReport, 0x90909090, 4)
    cReport += 0x4
    writeMemory(hGTA, dwSAMP + cReport, 0x90, 1)
    cReport += 0x9
    writeMemory(hGTA, dwSAMP + cReport, 0x90909090, 4)
    cReport += 0x4
    writeMemory(hGTA, dwSAMP + cReport, 0x90, 1)
}
GetDialogStructPtr() {
    if (!checkHandles()) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    dwPointer := readDWORD(hGTA, dwSAMP + SAMP_DIALOG_STRUCT_PTR[sampVersion])
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return dwPointer
}
IsDialogOpen() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return false
    dwIsOpen := readMem(hGTA, dwPointer + SAMP_DIALOG_OPEN_OFFSET, 4, "UInt")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return dwIsOpen ? true : false
}
GetDialogStyle() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return -1
    style := readMem(hGTA, dwPointer + SAMP_DIALOG_STYLE_OFFSET, 4, "UInt")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return style
}
GetDialogId() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return -1
    id := readMem(hGTA, dwPointer + SAMP_DIALOG_ID_OFFSET, 4, "UInt")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    ErrorLevel := ERROR_OK
    return id
}
SetDialogId(id) {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return false
    writeMemory(hGTA, dwPointer + SAMP_DIALOG_ID_OFFSET, id, "UInt", 4)
    if (ErrorLevel) {
        ErrorLevel := ERROR_WRITE_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return true
}
GetDialogIndex() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return 0
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    index := readMem(hGTA, dwPointer + SAMP_DIALOG_INDEX_OFFSET, 1, "Byte")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return index + 1
}
GetDialogCaption() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return ""
    text := readString(hGTA, dwPointer + SAMP_DIALOG_CAPTION_OFFSET, 64)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return text
}
getsexbyskin(skin)
{
    if skin in 1,2,3,4,5,6,7,8,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,32,33,34,35,36,37,42,43,44,45,46,47,48,49,50,51,52,57,58,59,60,61,62,66,67,68,70,71,72,73,79,80,81,82,83,84,86,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,132,133,134,135,136,137,142,143,144,146,147,149,153,154,155,156,158,159,160,161,162,163,164,165,166,167,168,170,171,173,174,175,176,177,179,180,181,182,183,184,185,186,187,188,189,200,202,203,204,206,208,209,210,212,213,217,220,221,222,223,227,228,229,230,234,235,236,239,240,241,242,247,248,249,250,252,253,254,255,258,259,260,261,262,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,299,300,301,302,303,304,305,310,311
    {
        return 1
    }
    if skin in 9,10,11,12,13,31,38,39,40,41,53,54,55,56,63,64,65,69,75,76,77,85,87,88,89,90,91,92,93,129,130,131,138,139,140,141,143,144,145,148,150,151,152,157,169,172,178,190,191,192,193,194,195,196,197,198,199,201,205,207,211,214,215,216,218,219,224,225,226,231,232,233,237,238,243,244,245,246,251,256,257,263,298,306,307,308,309
    {
        return 2
    }
    else
    {
        return 1
    }
}
GetDialogTextSize(dwAddress) {
    i := 0
    Loop, 4096 {
        i := A_Index - 1
        byte := Memory_ReadByte(hGTA, dwAddress + i)
        if (!byte)
        break
    }
    return i
}
GetDialogText() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return ""
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_TEXT_PTR_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    text := readString(hGTA, dwPointer, 4096)
    if (ErrorLevel) {
        text := readString(hGTA, dwPointer, GetDialogTextSize(dwPointer))
        if (ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return ""
        }
    }
    ErrorLevel := ERROR_OK
    return text
}
isDialogButtonSelected(btn := 1) {
    dwPointer := getDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return false
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    offset := (btn == 1 ? 0x165 : 0x2C5)
    sel := readMem(hGTA, dwPointer + offset, 1, "Byte")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return sel
}
GetDialogLineCount() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return 0
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    count := readMem(hGTA, dwPointer + SAMP_DIALOG_LINECOUNT_OFFSET, 4, "UInt")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return count
}
GetDialogLine__(index) {
    if (GetDialogLineCount > index)
    return ""
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return ""
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_LINES_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    dwLineAddress := readDWORD(hGTA, dwPointer + (index - 1) * 0x4)
    line := readString(hGTA, dwLineAddress, 128)
    ErrorLevel := ERROR_OK
    return line
}
GetDialogLine(index) {
    lines := GetDialogLines()
    if (index > lines.Length())
    return ""
    if (GetDialogStyle() == DIALOG_STYLE_TABLIST_HEADERS)
    index++
    return lines[index]
}
GetDialogLines() {
    text := GetDialogText()
    if (text == "")
    return -1
    lines := StrSplit(text, "`n")
    return lines
}
IsDialogButton1Selected() {
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return false
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    selected := readMem(hGTA, dwPointer + SAMP_DIALOG_BUTTON_HOVERING_OFFSET, 1, "Byte")
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return selected
}
GetDialogLines__() {
    count := GetDialogLineCount()
    dwPointer := GetDialogStructPtr()
    if (ErrorLevel || !dwPointer)
    return -1
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR1_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_LINES_OFFSET)
    if (ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return -1
    }
    lines := []
    Loop %count% {
        dwLineAddress := readDWORD(hGTA, dwPointer + (A_Index - 1) * 0x4)
        lines[A_Index] := readString(hGTA, dwLineAddress, 128)
    }
    ErrorLevel := ERROR_OK
    return lines
}
ShowDialog(style, caption, text, button1, button2 := "", id := 1) {
    style += 0
    style := Floor(style)
    id += 0
    id := Floor(id)
    caption := "" caption
    text := "" text
    button1 := "" button1
    button2 := "" button2
    if (id < 0 || id > 32767 || style < 0 || style > 5 || StrLen(caption) > 64 || StrLen(text) > 4096 || StrLen(button1) > 10 || StrLen(button2) > 10)
    return false
    if (!checkHandles())
    return false
    dwFunc := dwSAMP + FUNC_SAMP_SHOWDIALOG[sampVersion]
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_DIALOG_STRUCT_PTR[sampVersion])
    if (ErrorLevel || !dwAddress) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    writeString(hGTA, pParam5, caption)
    if (ErrorLevel)
    return false
    writeString(hGTA, pParam1, text)
    if (ErrorLevel)
    return false
    writeString(hGTA, pParam5 + 512, button1)
    if (ErrorLevel)
    return false
    writeString(hGTA, pParam5+StrLen(caption) + 1, button2)
    if (ErrorLevel)
    return false
    dwLen := 5 + 7 * 5 + 5 + 1
    VarSetCapacity(injectData, dwLen, 0)
    NumPut(0xB9, injectData, 0, "UChar")
    NumPut(dwAddress, injectData, 1, "UInt")
    NumPut(0x68, injectData, 5, "UChar")
    NumPut(1, injectData, 6, "UInt")
    NumPut(0x68, injectData, 10, "UChar")
    NumPut(pParam5 + StrLen(caption) + 1, injectData, 11, "UInt")
    NumPut(0x68, injectData, 15, "UChar")
    NumPut(pParam5 + 512, injectData, 16, "UInt")
    NumPut(0x68, injectData, 20, "UChar")
    NumPut(pParam1, injectData, 21, "UInt")
    NumPut(0x68, injectData, 25, "UChar")
    NumPut(pParam5, injectData, 26, "UInt")
    NumPut(0x68, injectData, 30, "UChar")
    NumPut(style, injectData, 31, "UInt")
    NumPut(0x68, injectData, 35, "UChar")
    NumPut(id, injectData, 36, "UInt")
    NumPut(0xE8, injectData, 40, "UChar")
    offset := dwFunc - (pInjectFunc + 45)
    NumPut(offset, injectData, 41, "Int")
    NumPut(0xC3, injectData, 45, "UChar")
    writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
    if (ErrorLevel)
    return false
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if (ErrorLevel)
    return false
    waitForSingleObject(hThread, 0xFFFFFFFF)
    closeProcess(hThread)
    return true
}
GetPlayerNameById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return ""
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        return oScoreboardData[dwId].NAME
        return ""
    }
    if(!updateOScoreboardData())
    return ""
    if(oScoreboardData[dwId])
    return oScoreboardData[dwId].NAME
    return ""
}
SelMenuItem(id,delay,name) {
    sendchat("/b " id)
    sleep, %delay%
    count := getDialogLineCount()
    loop % count
    {
        text1 := getDialogLine(A_Index)
        if text1 contains %name%
        {
            result := A_index
        }
    }
    SetDialogIndex(result)
sendinput, {enter}
    sleep, 100
sendinput, {enter}
    return
}
getPlayerIdByName(wName) {
    wName := "" wName
    if(StrLen(wName) < 1 || StrLen(wName) > 24)
    return -1
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        For i, o in oScoreboardData
        {
            if(InStr(o.NAME,wName)==1)
            return i
        }
        return -1
    }
    if(!updateOScoreboardData())
    return -1
    For i, o in oScoreboardData
    {
        if(InStr(o.NAME,wName)==1)
        return i
    }
    return -1
}
GetPlayerScoreById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return ""
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        return oScoreboardData[dwId].SCORE
        return ""
    }
    if(!updateOScoreboardData())
    return ""
    if(oScoreboardData[dwId])
    return oScoreboardData[dwId].SCORE
    return ""
}
GetPlayerPingById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return -1
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        return oScoreboardData[dwId].PING
        return -1
    }
    if(!updateOScoreboardData())
    return -1
    if(oScoreboardData[dwId])
    return oScoreboardData[dwId].PING
    return -1
}
IsNPCById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return -1
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        return oScoreboardData[dwId].ISNPC
        return -1
    }
    if(!updateOScoreboardData())
    return -1
    if(oScoreboardData[dwId])
    return oScoreboardData[dwId].ISNPC
    return -1
}
UpdateScoreboardDataEx() {
    if(!checkHandles())
    return false
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    dwFunc := dwSAMP + FUNC_UPDATESCOREBOARD[sampVersion]
    VarSetCapacity(injectData, 11, 0)
    NumPut(0xB9, injectData, 0, "UChar")
    NumPut(dwAddress, injectData, 1, "UInt")
    NumPut(0xE8, injectData, 5, "UChar")
    offset := dwFunc - (pInjectFunc + 10)
    NumPut(offset, injectData, 6, "Int")
    NumPut(0xC3, injectData, 10, "UChar")
    writeRaw(hGTA, pInjectFunc, &injectData, 11)
    if(ErrorLevel)
    return false
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if(ErrorLevel)
    return false
    waitForSingleObject(hThread, 0xFFFFFFFF)
    closeProcess(hThread)
    return true
}
UpdateOScoreboardData() {
    if(!checkHandles())
    return 0
    oScoreboardData := []
    if(!UpdateScoreboardDataEx())
    return 0
    iRefreshScoreboard := A_TickCount
    dwAddress := readDWORD(hGTA, dwSAMP + SAMP_INFO_OFFSET[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwAddress := readDWORD(hGTA, dwAddress + SAMP_PPOOLS_OFFSET[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwPlayers := readDWORD(hGTA, dwAddress + SAMP_PPOOL_PLAYER_OFFSET[sampVersion])
    if(ErrorLevel || dwPlayers==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    wID := readMem(hGTA, dwPlayers + SAMP_SLOCALPLAYERID_OFFSET[sampVersion], 2, "Short")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwPing := readMem(hGTA, dwPlayers + SAMP_ILOCALPLAYERPING_OFFSET[sampVersion], 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwScore := readMem(hGTA, dwPlayers + SAMP_ILOCALPLAYERSCORE_OFFSET[sampVersion], 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    dwTemp := readMem(hGTA, dwPlayers + SAMP_ISTRLEN_LOCALPLAYERNAME_OFFSET[sampVersion], 4, "Int")
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    sUsername := ""
    if(dwTemp <= 0xf) {
        sUsername := readString(hGTA, dwPlayers + SAMP_SZLOCALPLAYERNAME_OFFSET[sampVersion], 16)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
    }
    else {
        dwAddress := readDWORD(hGTA, dwPlayers + SAMP_PSZLOCALPLAYERNAME_OFFSET[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        sUsername := readString(hGTA, dwAddress, 25)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
    }
    oScoreboardData[wID] := Object("NAME", sUsername, "ID", wID, "PING", dwPing, "SCORE", dwScore, "ISNPC", 0)
    Loop, % SAMP_PLAYER_MAX
    {
        i := A_Index-1
        dwRemoteplayer := readDWORD(hGTA, dwPlayers+SAMP_PREMOTEPLAYER_OFFSET[sampVersion]+i*4)
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwRemoteplayer==0)
        continue
        dwPing := readMem(hGTA, dwRemoteplayer + SAMP_IPING_OFFSET[sampVersion], 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        dwScore := readMem(hGTA, dwRemoteplayer + SAMP_ISCORE_OFFSET[sampVersion], 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        dwIsNPC := readMem(hGTA, dwRemoteplayer + SAMP_ISNPC_OFFSET[sampVersion], 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        dwTemp := readMem(hGTA, dwRemoteplayer + SAMP_ISTRLENNAME___OFFSET[sampVersion], 4, "Int")
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        sUsername := ""
        if(dwTemp <= 0xf)
        {
            sUsername := readString(hGTA, dwRemoteplayer+SAMP_SZPLAYERNAME_OFFSET[sampVersion], 16)
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
        }
        else {
            dwAddress := readDWORD(hGTA, dwRemoteplayer + SAMP_PSZPLAYERNAME_OFFSET[sampVersion])
            if(ErrorLevel || dwAddress==0) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
            sUsername := readString(hGTA, dwAddress, 25)
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
        }
        o := Object("NAME", sUsername, "ID", i, "PING", dwPing, "SCORE", dwScore, "ISNPC", dwIsNPC)
        oScoreboardData[i] := o
        dwRemoteplayerData := readDWORD(hGTA, dwRemoteplayer + SAMP_REMOTEPLAYERDATA_OFFSET[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwRemoteplayerData==0)
        continue
        dwAddress := readFloat(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_GLOBALPOS[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwAddress)
        {
            ix := readMem(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_GLOBALPOS[sampVersion], 4, "Float")
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
            iy := readMem(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_GLOBALPOS[sampVersion] + 0x4, 4, "Float")
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
            iz := readMem(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_GLOBALPOS[sampVersion] + 0x8, 4, "Float")
            if(ErrorLevel) {
                ErrorLevel := ERROR_READ_MEMORY
                return 0
            }
            o.MPOS := [ix, iy, iz]
        }
        dwpSAMP_Actor := readDWORD(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_ACTOR[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwpSAMP_Actor==0)
        continue
        dwPed := readDWORD(hGTA, dwpSAMP_Actor + SAMP_REMOTEPLAYERDATA_PED[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        if(dwPed==0)
        continue
        o.PED := dwPed
        fHP := readFloat(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_HEALTH[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        fARMOR := readFloat(hGTA, dwRemoteplayerData + SAMP_REMOTEPLAYERDATA_ARMOR[sampVersion])
        if(ErrorLevel) {
            ErrorLevel := ERROR_READ_MEMORY
            return 0
        }
        o.HP := fHP
        o.ARMOR := fARMOR
    }
    ErrorLevel := ERROR_OK
    return 1
}
getPlayerPosById(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return ""
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
            if(oScoreboardData[dwId].HasKey("PED"))
            return getPedCoordinates(oScoreboardData[dwId].PED)
            if(oScoreboardData[dwId].HasKey("MPOS"))
            return oScoreboardData[dwId].MPOS
        }
        return ""
    }
    if(!updateOScoreboardData())
    return ""
    if(oScoreboardData[dwId])
    {
        if(oScoreboardData[dwId].HasKey("PED"))
        return getPedCoordinates(oScoreboardData[dwId].PED)
        if(oScoreboardData[dwId].HasKey("MPOS"))
        return oScoreboardData[dwId].MPOS
    }
    return ""
}
getTargetPos(dwId) {
    dwId += 0
    dwId := Floor(dwId)
    if(dwId < 0 || dwId >= SAMP_PLAYER_MAX)
    return ""
    if(iRefreshScoreboard+iUpdateTick > A_TickCount)
    {
        if(oScoreboardData[dwId])
        {
            if(oScoreboardData[dwId].HasKey("PED"))
            return getPedCoordinates(oScoreboardData[dwId].PED)
            if(oScoreboardData[dwId].HasKey("MPOS"))
            return oScoreboardData[dwId].MPOS
        }
        return ""
    }
    if(!updateOScoreboardData())
    return ""
    if(oScoreboardData[dwId])
    {
        if(oScoreboardData[dwId].HasKey("PED"))
        return getPedCoordinates(oScoreboardData[dwId].PED)
        if(oScoreboardData[dwId].HasKey("MPOS"))
        return oScoreboardData[dwId].MPOS
    }
    return ""
}
SetCheckpoint(fX, fY, fZ, fSize) {
    if(!checkHandles())
    return false
    dwFunc := dwSAMP + FUNC_SAMP_SETCHECKPOINT[sampVersion]
    dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_INCHAT_PTR[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    VarSetCapacity(buf, 16, 0)
    NumPut(fX, buf, 0, "Float")
    NumPut(fY, buf, 4, "Float")
    NumPut(fZ, buf, 8, "Float")
    NumPut(fSize, buf, 12, "Float")
    writeRaw(hGTA, pParam1, &buf, 16)
    dwLen := 31
    VarSetCapacity(injectData, dwLen, 0)
    NumPut(0xB9, injectData, 0, "UChar")
    NumPut(dwAddress, injectData, 1, "UInt")
    NumPut(0x68, injectData, 5, "UChar")
    NumPut(pParam1+12, injectData, 6, "UInt")
    NumPut(0x68, injectData, 10, "UChar")
    NumPut(pParam1, injectData, 11, "UInt")
    NumPut(0xE8, injectData, 15, "UChar")
    offset := dwFunc - (pInjectFunc + 20)
    NumPut(offset, injectData, 16, "Int")
    NumPut(0x05C7, injectData, 20, "UShort")
    NumPut(dwAddress+SAMP_CHECKPOINT_ACTIVE[sampVersion], injectData, 22, "UInt")
    NumPut(1, injectData, 26, "UInt")
    NumPut(0xC3, injectData, 30, "UChar")
    writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
    if(ErrorLevel)
    return false
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if(ErrorLevel)
    return false
    waitForSingleObject(hThread, 0xFFFFFFFF)
    closeProcess(hThread)
    ErrorLevel := ERROR_OK
    return true
}
DisableCheckpoint() {
    if(!checkHandles())
    return false
    dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_INCHAT_PTR[sampVersion])
    if(ErrorLevel || dwAddress==0) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    VarSetCapacity(enablecp, 4, 0)
    NumPut(0,enablecp,0,"Int")
    writeRaw(hGTA, dwAddress+SAMP_CHECKPOINT_ACTIVE[sampVersion], &enablecp, 4)
    ErrorLevel := ERROR_OK
    return true
}
IsMarkerCreated() {
    If(!checkHandles())
    return false
    active := readMem(hGTA, ADDR_CP_CHECK, 1, "byte")
    If(!active)
    return 0
    else return 1
}
CoordsFromRedmarker() {
    if(!checkhandles())
    return false
    for i, v in ADDR_REDMARKER
    f%i% := readFloat(hGTA, v)
    return [f1, f2, f3]
}
GetPlayerCoordinates() {
    if(!checkHandles())
    return ""
    fX := readFloat(hGTA, ADDR_POSITION_X)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fY := readFloat(hGTA, ADDR_POSITION_Y)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fZ := readFloat(hGTA, ADDR_POSITION_Z)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return [fX, fY, fZ]
}
GetPlayerPos(ByRef fX,ByRef fY,ByRef fZ) {
    if(!checkHandles())
    return 0
    fX := readFloat(hGTA, ADDR_POSITION_X)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    fY := readFloat(hGTA, ADDR_POSITION_Y)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    fZ := readFloat(hGTA, ADDR_POSITION_Z)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
}
getVehiclePassenger(place)
{
    if(!checkHandles())
    return -1
    if(!CVeh := readDWORD(hGTA, ADDR_VEHICLE_PTR))
    return -1
    return readDWORD(hGTA, CVeh + 0x460 + (place * 4))
}
getVehiclePassengerId(place)
{
    CPed := getVehiclePassenger(place)
    return getIdByPed(CPed)
}
getLastDamagePed(ByRef Ped := "", ByRef Weapon := "")
{
    if(!checkHandles())
    return -1
    if(!CPed := readDWORD(hGTA, ADDR_CPED_PTR))
    return -1
    if(!dwPed := readDWORD(hGTA, CPed + 0x764))
    return -1
    Ped := getIdByPed(dwPed)
    Weapon := readMem(hGTA, CPed + 0x760, 4, "int")
    return Ped
}
getKillStat(ByRef IsEnabled := "")
{
    if(!checkHandles())
    return false
    a := []
    klist := readDWORD(hGTA, dwSAMP + 0x21A0EC)
    isEnabled := readMem(hGTA, klist, 4, "int")
    klist += 4
    loop 5
    {
        szKiller := readString(hGTA, klist, 25)
        szVictim := readString(hGTA, (klist += 25), 25)
        clKillerColor := inttohex(readMem(hGTA, (klist += 25), 4, "uint"))
        clVictimColor := inttohex(readMem(hGTA, (klist += 4), 4, "uint"))
        byteType := Memory_ReadByte(hGTA, (klist += 4))
        klist++
        a.Insert([szKiller, szVictim, clKillerColor, clVictimColor, byteType])
    }
    return a
}
getCoordinates() {
    if(!checkHandles())
    return ""
    fX := readFloat(hGTA, ADDR_POSITION_X)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fY := readFloat(hGTA, ADDR_POSITION_Y)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    fZ := readFloat(hGTA, ADDR_POSITION_Z)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return [fX, fY, fZ]
}
InitZonesAndCities() {
    AddCity("Las Venturas", 685.0, 476.093, -500.0, 3000.0, 3000.0, 500.0)
    AddCity("Tierra Robada", -1213.91, 596.349, -242.99, -480.539, 1659.68, 900.0)
    AddCity("San Fierro", -3000.0, -742.306, -500.0, -1270.53, 1530.24, 500.0)
    AddCity("San Fierro", -1270.53, -402.481, -500.0, -1038.45, 832.495, 500.0)
    AddCity("San Fierro", -1038.45, -145.539, -500.0, -897.546, 376.632, 500.0)
    AddCity("Flint County", -1213.91, -2892.97, -242.99, 44.6147, -768.027, 900.0)
    AddCity("Whetstone", -2997.47, -2892.97, -242.99, -1213.91, -1115.58, 900.0)
    AddCity("Los Santos", 480.0, -3000.0, -500.0, 3000.0, -850.0, 500.0)
    AddCity("Los Santos", 80.0, -2101.61, -500.0, 1075.0, -1239.61, 500.0)
    AddCity("Red County", -1213.91, -768.027, -242.99, 2997.06, 596.349, 900.0)
    AddZone("Avispa Country Club", -2667.810, -302.135, -28.831, -2646.400, -262.320, 71.169)
    AddZone("Easter Bay Airport", -1315.420, -405.388, 15.406, -1264.400, -209.543, 25.406)
    AddZone("Avispa Country Club", -2550.040, -355.493, 0.000, -2470.040, -318.493, 39.700)
    AddZone("Easter Bay Airport", -1490.330, -209.543, 15.406, -1264.400, -148.388, 25.406)
    AddZone("Garcia", -2395.140, -222.589, -5.3, -2354.090, -204.792, 200.000)
    AddZone("Shady Cabin", -1632.830, -2263.440, -3.0, -1601.330, -2231.790, 200.000)
    AddZone("East Los Santos", 2381.680, -1494.030, -89.084, 2421.030, -1454.350, 110.916)
    AddZone("LVA Freight Depot", 1236.630, 1163.410, -89.084, 1277.050, 1203.280, 110.916)
    AddZone("Blackfield Intersection", 1277.050, 1044.690, -89.084, 1315.350, 1087.630, 110.916)
    AddZone("Avispa Country Club", -2470.040, -355.493, 0.000, -2270.040, -318.493, 46.100)
    AddZone("Temple", 1252.330, -926.999, -89.084, 1357.000, -910.170, 110.916)
    AddZone("Unity Station", 1692.620, -1971.800, -20.492, 1812.620, -1932.800, 79.508)
    AddZone("LVA Freight Depot", 1315.350, 1044.690, -89.084, 1375.600, 1087.630, 110.916)
    AddZone("Los Flores", 2581.730, -1454.350, -89.084, 2632.830, -1393.420, 110.916)
    AddZone("Starfish Casino", 2437.390, 1858.100, -39.084, 2495.090, 1970.850, 60.916)
    AddZone("Easter Bay Chemicals", -1132.820, -787.391, 0.000, -956.476, -768.027, 200.000)
    AddZone("Downtown Los Santos", 1370.850, -1170.870, -89.084, 1463.900, -1130.850, 110.916)
    AddZone("Esplanade East", -1620.300, 1176.520, -4.5, -1580.010, 1274.260, 200.000)
    AddZone("Market Station", 787.461, -1410.930, -34.126, 866.009, -1310.210, 65.874)
    AddZone("Linden Station", 2811.250, 1229.590, -39.594, 2861.250, 1407.590, 60.406)
    AddZone("Montgomery Intersection", 1582.440, 347.457, 0.000, 1664.620, 401.750, 200.000)
    AddZone("Frederick Bridge", 2759.250, 296.501, 0.000, 2774.250, 594.757, 200.000)
    AddZone("Yellow Bell Station", 1377.480, 2600.430, -21.926, 1492.450, 2687.360, 78.074)
    AddZone("Downtown Los Santos", 1507.510, -1385.210, 110.916, 1582.550, -1325.310, 335.916)
    AddZone("Jefferson", 2185.330, -1210.740, -89.084, 2281.450, -1154.590, 110.916)
    AddZone("Mulholland", 1318.130, -910.170, -89.084, 1357.000, -768.027, 110.916)
    AddZone("Avispa Country Club", -2361.510, -417.199, 0.000, -2270.040, -355.493, 200.000)
    AddZone("Jefferson", 1996.910, -1449.670, -89.084, 2056.860, -1350.720, 110.916)
    AddZone("Julius Thruway West", 1236.630, 2142.860, -89.084, 1297.470, 2243.230, 110.916)
    AddZone("Jefferson", 2124.660, -1494.030, -89.084, 2266.210, -1449.670, 110.916)
    AddZone("Julius Thruway North", 1848.400, 2478.490, -89.084, 1938.800, 2553.490, 110.916)
    AddZone("Rodeo", 422.680, -1570.200, -89.084, 466.223, -1406.050, 110.916)
    AddZone("Cranberry Station", -2007.830, 56.306, 0.000, -1922.000, 224.782, 100.000)
    AddZone("Downtown Los Santos", 1391.050, -1026.330, -89.084, 1463.900, -926.999, 110.916)
    AddZone("Redsands West", 1704.590, 2243.230, -89.084, 1777.390, 2342.830, 110.916)
    AddZone("Little Mexico", 1758.900, -1722.260, -89.084, 1812.620, -1577.590, 110.916)
    AddZone("Blackfield Intersection", 1375.600, 823.228, -89.084, 1457.390, 919.447, 110.916)
    AddZone("Los Santos International", 1974.630, -2394.330, -39.084, 2089.000, -2256.590, 60.916)
    AddZone("Beacon Hill", -399.633, -1075.520, -1.489, -319.033, -977.516, 198.511)
    AddZone("Rodeo", 334.503, -1501.950, -89.084, 422.680, -1406.050, 110.916)
    AddZone("Richman", 225.165, -1369.620, -89.084, 334.503, -1292.070, 110.916)
    AddZone("Downtown Los Santos", 1724.760, -1250.900, -89.084, 1812.620, -1150.870, 110.916)
    AddZone("The Strip", 2027.400, 1703.230, -89.084, 2137.400, 1783.230, 110.916)
    AddZone("Downtown Los Santos", 1378.330, -1130.850, -89.084, 1463.900, -1026.330, 110.916)
    AddZone("Blackfield Intersection", 1197.390, 1044.690, -89.084, 1277.050, 1163.390, 110.916)
    AddZone("Conference Center", 1073.220, -1842.270, -89.084, 1323.900, -1804.210, 110.916)
    AddZone("Montgomery", 1451.400, 347.457, -6.1, 1582.440, 420.802, 200.000)
    AddZone("Foster Valley", -2270.040, -430.276, -1.2, -2178.690, -324.114, 200.000)
    AddZone("Blackfield Chapel", 1325.600, 596.349, -89.084, 1375.600, 795.010, 110.916)
    AddZone("Los Santos International", 2051.630, -2597.260, -39.084, 2152.450, -2394.330, 60.916)
    AddZone("Mulholland", 1096.470, -910.170, -89.084, 1169.130, -768.027, 110.916)
    AddZone("Yellow Bell Gol Course", 1457.460, 2723.230, -89.084, 1534.560, 2863.230, 110.916)
    AddZone("The Strip", 2027.400, 1783.230, -89.084, 2162.390, 1863.230, 110.916)
    AddZone("Jefferson", 2056.860, -1210.740, -89.084, 2185.330, -1126.320, 110.916)
    AddZone("Mulholland", 952.604, -937.184, -89.084, 1096.470, -860.619, 110.916)
    AddZone("Aldea Malvada", -1372.140, 2498.520, 0.000, -1277.590, 2615.350, 200.000)
    AddZone("Las Colinas", 2126.860, -1126.320, -89.084, 2185.330, -934.489, 110.916)
    AddZone("Las Colinas", 1994.330, -1100.820, -89.084, 2056.860, -920.815, 110.916)
    AddZone("Richman", 647.557, -954.662, -89.084, 768.694, -860.619, 110.916)
    AddZone("LVA Freight Depot", 1277.050, 1087.630, -89.084, 1375.600, 1203.280, 110.916)
    AddZone("Julius Thruway North", 1377.390, 2433.230, -89.084, 1534.560, 2507.230, 110.916)
    AddZone("Willowfield", 2201.820, -2095.000, -89.084, 2324.000, -1989.900, 110.916)
    AddZone("Julius Thruway North", 1704.590, 2342.830, -89.084, 1848.400, 2433.230, 110.916)
    AddZone("Temple", 1252.330, -1130.850, -89.084, 1378.330, -1026.330, 110.916)
    AddZone("Little Mexico", 1701.900, -1842.270, -89.084, 1812.620, -1722.260, 110.916)
    AddZone("Queens", -2411.220, 373.539, 0.000, -2253.540, 458.411, 200.000)
    AddZone("Las Venturas Airport", 1515.810, 1586.400, -12.500, 1729.950, 1714.560, 87.500)
    AddZone("Richman", 225.165, -1292.070, -89.084, 466.223, -1235.070, 110.916)
    AddZone("Temple", 1252.330, -1026.330, -89.084, 1391.050, -926.999, 110.916)
    AddZone("East Los Santos", 2266.260, -1494.030, -89.084, 2381.680, -1372.040, 110.916)
    AddZone("Julius Thruway East", 2623.180, 943.235, -89.084, 2749.900, 1055.960, 110.916)
    AddZone("Willowfield", 2541.700, -1941.400, -89.084, 2703.580, -1852.870, 110.916)
    AddZone("Las Colinas", 2056.860, -1126.320, -89.084, 2126.860, -920.815, 110.916)
    AddZone("Julius Thruway East", 2625.160, 2202.760, -89.084, 2685.160, 2442.550, 110.916)
    AddZone("Rodeo", 225.165, -1501.950, -89.084, 334.503, -1369.620, 110.916)
    AddZone("Las Brujas", -365.167, 2123.010, -3.0, -208.570, 2217.680, 200.000)
    AddZone("Julius Thruway East", 2536.430, 2442.550, -89.084, 2685.160, 2542.550, 110.916)
    AddZone("Rodeo", 334.503, -1406.050, -89.084, 466.223, -1292.070, 110.916)
    AddZone("Vinewood", 647.557, -1227.280, -89.084, 787.461, -1118.280, 110.916)
    AddZone("Rodeo", 422.680, -1684.650, -89.084, 558.099, -1570.200, 110.916)
    AddZone("Julius Thruway North", 2498.210, 2542.550, -89.084, 2685.160, 2626.550, 110.916)
    AddZone("Downtown Los Santos", 1724.760, -1430.870, -89.084, 1812.620, -1250.900, 110.916)
    AddZone("Rodeo", 225.165, -1684.650, -89.084, 312.803, -1501.950, 110.916)
    AddZone("Jefferson", 2056.860, -1449.670, -89.084, 2266.210, -1372.040, 110.916)
    AddZone("Hampton Barns", 603.035, 264.312, 0.000, 761.994, 366.572, 200.000)
    AddZone("Temple", 1096.470, -1130.840, -89.084, 1252.330, -1026.330, 110.916)
    AddZone("Kincaid Bridge", -1087.930, 855.370, -89.084, -961.950, 986.281, 110.916)
    AddZone("Verona Beach", 1046.150, -1722.260, -89.084, 1161.520, -1577.590, 110.916)
    AddZone("Commerce", 1323.900, -1722.260, -89.084, 1440.900, -1577.590, 110.916)
    AddZone("Mulholland", 1357.000, -926.999, -89.084, 1463.900, -768.027, 110.916)
    AddZone("Rodeo", 466.223, -1570.200, -89.084, 558.099, -1385.070, 110.916)
    AddZone("Mulholland", 911.802, -860.619, -89.084, 1096.470, -768.027, 110.916)
    AddZone("Mulholland", 768.694, -954.662, -89.084, 952.604, -860.619, 110.916)
    AddZone("Julius Thruway South", 2377.390, 788.894, -89.084, 2537.390, 897.901, 110.916)
    AddZone("Idlewood", 1812.620, -1852.870, -89.084, 1971.660, -1742.310, 110.916)
    AddZone("Ocean Docks", 2089.000, -2394.330, -89.084, 2201.820, -2235.840, 110.916)
    AddZone("Commerce", 1370.850, -1577.590, -89.084, 1463.900, -1384.950, 110.916)
    AddZone("Julius Thruway North", 2121.400, 2508.230, -89.084, 2237.400, 2663.170, 110.916)
    AddZone("Temple", 1096.470, -1026.330, -89.084, 1252.330, -910.170, 110.916)
    AddZone("Glen Park", 1812.620, -1449.670, -89.084, 1996.910, -1350.720, 110.916)
    AddZone("Easter Bay Airport", -1242.980, -50.096, 0.000, -1213.910, 578.396, 200.000)
    AddZone("Martin Bridge", -222.179, 293.324, 0.000, -122.126, 476.465, 200.000)
    AddZone("The Strip", 2106.700, 1863.230, -89.084, 2162.390, 2202.760, 110.916)
    AddZone("Willowfield", 2541.700, -2059.230, -89.084, 2703.580, -1941.400, 110.916)
    AddZone("Marina", 807.922, -1577.590, -89.084, 926.922, -1416.250, 110.916)
    AddZone("Las Venturas Airport", 1457.370, 1143.210, -89.084, 1777.400, 1203.280, 110.916)
    AddZone("Idlewood", 1812.620, -1742.310, -89.084, 1951.660, -1602.310, 110.916)
    AddZone("Esplanade East", -1580.010, 1025.980, -6.1, -1499.890, 1274.260, 200.000)
    AddZone("Downtown Los Santos", 1370.850, -1384.950, -89.084, 1463.900, -1170.870, 110.916)
    AddZone("The Mako Span", 1664.620, 401.750, 0.000, 1785.140, 567.203, 200.000)
    AddZone("Rodeo", 312.803, -1684.650, -89.084, 422.680, -1501.950, 110.916)
    AddZone("Pershing Square", 1440.900, -1722.260, -89.084, 1583.500, -1577.590, 110.916)
    AddZone("Mulholland", 687.802, -860.619, -89.084, 911.802, -768.027, 110.916)
    AddZone("Gant Bridge", -2741.070, 1490.470, -6.1, -2616.400, 1659.680, 200.000)
    AddZone("Las Colinas", 2185.330, -1154.590, -89.084, 2281.450, -934.489, 110.916)
    AddZone("Mulholland", 1169.130, -910.170, -89.084, 1318.130, -768.027, 110.916)
    AddZone("Julius Thruway North", 1938.800, 2508.230, -89.084, 2121.400, 2624.230, 110.916)
    AddZone("Commerce", 1667.960, -1577.590, -89.084, 1812.620, -1430.870, 110.916)
    AddZone("Rodeo", 72.648, -1544.170, -89.084, 225.165, -1404.970, 110.916)
    AddZone("Roca Escalante", 2536.430, 2202.760, -89.084, 2625.160, 2442.550, 110.916)
    AddZone("Rodeo", 72.648, -1684.650, -89.084, 225.165, -1544.170, 110.916)
    AddZone("Market", 952.663, -1310.210, -89.084, 1072.660, -1130.850, 110.916)
    AddZone("Las Colinas", 2632.740, -1135.040, -89.084, 2747.740, -945.035, 110.916)
    AddZone("Mulholland", 861.085, -674.885, -89.084, 1156.550, -600.896, 110.916)
    AddZone("King's", -2253.540, 373.539, -9.1, -1993.280, 458.411, 200.000)
    AddZone("Redsands East", 1848.400, 2342.830, -89.084, 2011.940, 2478.490, 110.916)
    AddZone("Downtown", -1580.010, 744.267, -6.1, -1499.890, 1025.980, 200.000)
    AddZone("Conference Center", 1046.150, -1804.210, -89.084, 1323.900, -1722.260, 110.916)
    AddZone("Richman", 647.557, -1118.280, -89.084, 787.461, -954.662, 110.916)
    AddZone("Ocean Flats", -2994.490, 277.411, -9.1, -2867.850, 458.411, 200.000)
    AddZone("Greenglass College", 964.391, 930.890, -89.084, 1166.530, 1044.690, 110.916)
    AddZone("Glen Park", 1812.620, -1100.820, -89.084, 1994.330, -973.380, 110.916)
    AddZone("LVA Freight Depot", 1375.600, 919.447, -89.084, 1457.370, 1203.280, 110.916)
    AddZone("Regular Tom", -405.770, 1712.860, -3.0, -276.719, 1892.750, 200.000)
    AddZone("Verona Beach", 1161.520, -1722.260, -89.084, 1323.900, -1577.590, 110.916)
    AddZone("East Los Santos", 2281.450, -1372.040, -89.084, 2381.680, -1135.040, 110.916)
    AddZone("Caligula's Palace", 2137.400, 1703.230, -89.084, 2437.390, 1783.230, 110.916)
    AddZone("Idlewood", 1951.660, -1742.310, -89.084, 2124.660, -1602.310, 110.916)
    AddZone("Pilgrim", 2624.400, 1383.230, -89.084, 2685.160, 1783.230, 110.916)
    AddZone("Idlewood", 2124.660, -1742.310, -89.084, 2222.560, -1494.030, 110.916)
    AddZone("Queens", -2533.040, 458.411, 0.000, -2329.310, 578.396, 200.000)
    AddZone("Downtown", -1871.720, 1176.420, -4.5, -1620.300, 1274.260, 200.000)
    AddZone("Commerce", 1583.500, -1722.260, -89.084, 1758.900, -1577.590, 110.916)
    AddZone("East Los Santos", 2381.680, -1454.350, -89.084, 2462.130, -1135.040, 110.916)
    AddZone("Marina", 647.712, -1577.590, -89.084, 807.922, -1416.250, 110.916)
    AddZone("Richman", 72.648, -1404.970, -89.084, 225.165, -1235.070, 110.916)
    AddZone("Vinewood", 647.712, -1416.250, -89.084, 787.461, -1227.280, 110.916)
    AddZone("East Los Santos", 2222.560, -1628.530, -89.084, 2421.030, -1494.030, 110.916)
    AddZone("Rodeo", 558.099, -1684.650, -89.084, 647.522, -1384.930, 110.916)
    AddZone("Easter Tunnel", -1709.710, -833.034, -1.5, -1446.010, -730.118, 200.000)
    AddZone("Rodeo", 466.223, -1385.070, -89.084, 647.522, -1235.070, 110.916)
    AddZone("Redsands East", 1817.390, 2202.760, -89.084, 2011.940, 2342.830, 110.916)
    AddZone("The Clown's Pocket", 2162.390, 1783.230, -89.084, 2437.390, 1883.230, 110.916)
    AddZone("Idlewood", 1971.660, -1852.870, -89.084, 2222.560, -1742.310, 110.916)
    AddZone("Montgomery Intersection", 1546.650, 208.164, 0.000, 1745.830, 347.457, 200.000)
    AddZone("Willowfield", 2089.000, -2235.840, -89.084, 2201.820, -1989.900, 110.916)
    AddZone("Temple", 952.663, -1130.840, -89.084, 1096.470, -937.184, 110.916)
    AddZone("Prickle Pine", 1848.400, 2553.490, -89.084, 1938.800, 2863.230, 110.916)
    AddZone("Los Santos International", 1400.970, -2669.260, -39.084, 2189.820, -2597.260, 60.916)
    AddZone("Garver Bridge", -1213.910, 950.022, -89.084, -1087.930, 1178.930, 110.916)
    AddZone("Garver Bridge", -1339.890, 828.129, -89.084, -1213.910, 1057.040, 110.916)
    AddZone("Kincaid Bridge", -1339.890, 599.218, -89.084, -1213.910, 828.129, 110.916)
    AddZone("Kincaid Bridge", -1213.910, 721.111, -89.084, -1087.930, 950.022, 110.916)
    AddZone("Verona Beach", 930.221, -2006.780, -89.084, 1073.220, -1804.210, 110.916)
    AddZone("Verdant Bluffs", 1073.220, -2006.780, -89.084, 1249.620, -1842.270, 110.916)
    AddZone("Vinewood", 787.461, -1130.840, -89.084, 952.604, -954.662, 110.916)
    AddZone("Vinewood", 787.461, -1310.210, -89.084, 952.663, -1130.840, 110.916)
    AddZone("Commerce", 1463.900, -1577.590, -89.084, 1667.960, -1430.870, 110.916)
    AddZone("Market", 787.461, -1416.250, -89.084, 1072.660, -1310.210, 110.916)
    AddZone("Rockshore West", 2377.390, 596.349, -89.084, 2537.390, 788.894, 110.916)
    AddZone("Julius Thruway North", 2237.400, 2542.550, -89.084, 2498.210, 2663.170, 110.916)
    AddZone("East Beach", 2632.830, -1668.130, -89.084, 2747.740, -1393.420, 110.916)
    AddZone("Fallow Bridge", 434.341, 366.572, 0.000, 603.035, 555.680, 200.000)
    AddZone("Willowfield", 2089.000, -1989.900, -89.084, 2324.000, -1852.870, 110.916)
    AddZone("Chinatown", -2274.170, 578.396, -7.6, -2078.670, 744.170, 200.000)
    AddZone("El Castillo del Diablo", -208.570, 2337.180, 0.000, 8.430, 2487.180, 200.000)
    AddZone("Ocean Docks", 2324.000, -2145.100, -89.084, 2703.580, -2059.230, 110.916)
    AddZone("Easter Bay Chemicals", -1132.820, -768.027, 0.000, -956.476, -578.118, 200.000)
    AddZone("The Visage", 1817.390, 1703.230, -89.084, 2027.400, 1863.230, 110.916)
    AddZone("Ocean Flats", -2994.490, -430.276, -1.2, -2831.890, -222.589, 200.000)
    AddZone("Richman", 321.356, -860.619, -89.084, 687.802, -768.027, 110.916)
    AddZone("Green Palms", 176.581, 1305.450, -3.0, 338.658, 1520.720, 200.000)
    AddZone("Richman", 321.356, -768.027, -89.084, 700.794, -674.885, 110.916)
    AddZone("Starfish Casino", 2162.390, 1883.230, -89.084, 2437.390, 2012.180, 110.916)
    AddZone("East Beach", 2747.740, -1668.130, -89.084, 2959.350, -1498.620, 110.916)
    AddZone("Jefferson", 2056.860, -1372.040, -89.084, 2281.450, -1210.740, 110.916)
    AddZone("Downtown Los Santos", 1463.900, -1290.870, -89.084, 1724.760, -1150.870, 110.916)
    AddZone("Downtown Los Santos", 1463.900, -1430.870, -89.084, 1724.760, -1290.870, 110.916)
    AddZone("Garver Bridge", -1499.890, 696.442, -179.615, -1339.890, 925.353, 20.385)
    AddZone("Julius Thruway South", 1457.390, 823.228, -89.084, 2377.390, 863.229, 110.916)
    AddZone("East Los Santos", 2421.030, -1628.530, -89.084, 2632.830, -1454.350, 110.916)
    AddZone("Greenglass College", 964.391, 1044.690, -89.084, 1197.390, 1203.220, 110.916)
    AddZone("Las Colinas", 2747.740, -1120.040, -89.084, 2959.350, -945.035, 110.916)
    AddZone("Mulholland", 737.573, -768.027, -89.084, 1142.290, -674.885, 110.916)
    AddZone("Ocean Docks", 2201.820, -2730.880, -89.084, 2324.000, -2418.330, 110.916)
    AddZone("East Los Santos", 2462.130, -1454.350, -89.084, 2581.730, -1135.040, 110.916)
    AddZone("Ganton", 2222.560, -1722.330, -89.084, 2632.830, -1628.530, 110.916)
    AddZone("Avispa Country Club", -2831.890, -430.276, -6.1, -2646.400, -222.589, 200.000)
    AddZone("Willowfield", 1970.620, -2179.250, -89.084, 2089.000, -1852.870, 110.916)
    AddZone("Esplanade North", -1982.320, 1274.260, -4.5, -1524.240, 1358.900, 200.000)
    AddZone("The High Roller", 1817.390, 1283.230, -89.084, 2027.390, 1469.230, 110.916)
    AddZone("Ocean Docks", 2201.820, -2418.330, -89.084, 2324.000, -2095.000, 110.916)
    AddZone("Last Dime Motel", 1823.080, 596.349, -89.084, 1997.220, 823.228, 110.916)
    AddZone("Bayside Marina", -2353.170, 2275.790, 0.000, -2153.170, 2475.790, 200.000)
    AddZone("King's", -2329.310, 458.411, -7.6, -1993.280, 578.396, 200.000)
    AddZone("El Corona", 1692.620, -2179.250, -89.084, 1812.620, -1842.270, 110.916)
    AddZone("Blackfield Chapel", 1375.600, 596.349, -89.084, 1558.090, 823.228, 110.916)
    AddZone("The Pink Swan", 1817.390, 1083.230, -89.084, 2027.390, 1283.230, 110.916)
    AddZone("Julius Thruway West", 1197.390, 1163.390, -89.084, 1236.630, 2243.230, 110.916)
    AddZone("Los Flores", 2581.730, -1393.420, -89.084, 2747.740, -1135.040, 110.916)
    AddZone("The Visage", 1817.390, 1863.230, -89.084, 2106.700, 2011.830, 110.916)
    AddZone("Prickle Pine", 1938.800, 2624.230, -89.084, 2121.400, 2861.550, 110.916)
    AddZone("Verona Beach", 851.449, -1804.210, -89.084, 1046.150, -1577.590, 110.916)
    AddZone("Robada Intersection", -1119.010, 1178.930, -89.084, -862.025, 1351.450, 110.916)
    AddZone("Linden Side", 2749.900, 943.235, -89.084, 2923.390, 1198.990, 110.916)
    AddZone("Ocean Docks", 2703.580, -2302.330, -89.084, 2959.350, -2126.900, 110.916)
    AddZone("Willowfield", 2324.000, -2059.230, -89.084, 2541.700, -1852.870, 110.916)
    AddZone("King's", -2411.220, 265.243, -9.1, -1993.280, 373.539, 200.000)
    AddZone("Commerce", 1323.900, -1842.270, -89.084, 1701.900, -1722.260, 110.916)
    AddZone("Mulholland", 1269.130, -768.027, -89.084, 1414.070, -452.425, 110.916)
    AddZone("Marina", 647.712, -1804.210, -89.084, 851.449, -1577.590, 110.916)
    AddZone("Battery Point", -2741.070, 1268.410, -4.5, -2533.040, 1490.470, 200.000)
    AddZone("The Four Dragons Casino", 1817.390, 863.232, -89.084, 2027.390, 1083.230, 110.916)
    AddZone("Blackfield", 964.391, 1203.220, -89.084, 1197.390, 1403.220, 110.916)
    AddZone("Julius Thruway North", 1534.560, 2433.230, -89.084, 1848.400, 2583.230, 110.916)
    AddZone("Yellow Bell Gol Course", 1117.400, 2723.230, -89.084, 1457.460, 2863.230, 110.916)
    AddZone("Idlewood", 1812.620, -1602.310, -89.084, 2124.660, -1449.670, 110.916)
    AddZone("Redsands West", 1297.470, 2142.860, -89.084, 1777.390, 2243.230, 110.916)
    AddZone("Doherty", -2270.040, -324.114, -1.2, -1794.920, -222.589, 200.000)
    AddZone("Hilltop Farm", 967.383, -450.390, -3.0, 1176.780, -217.900, 200.000)
    AddZone("Las Barrancas", -926.130, 1398.730, -3.0, -719.234, 1634.690, 200.000)
    AddZone("Pirates in Men's Pants", 1817.390, 1469.230, -89.084, 2027.400, 1703.230, 110.916)
    AddZone("City Hall", -2867.850, 277.411, -9.1, -2593.440, 458.411, 200.000)
    AddZone("Avispa Country Club", -2646.400, -355.493, 0.000, -2270.040, -222.589, 200.000)
    AddZone("The Strip", 2027.400, 863.229, -89.084, 2087.390, 1703.230, 110.916)
    AddZone("Hashbury", -2593.440, -222.589, -1.0, -2411.220, 54.722, 200.000)
    AddZone("Los Santos International", 1852.000, -2394.330, -89.084, 2089.000, -2179.250, 110.916)
    AddZone("Whitewood Estates", 1098.310, 1726.220, -89.084, 1197.390, 2243.230, 110.916)
    AddZone("Sherman Reservoir", -789.737, 1659.680, -89.084, -599.505, 1929.410, 110.916)
    AddZone("El Corona", 1812.620, -2179.250, -89.084, 1970.620, -1852.870, 110.916)
    AddZone("Downtown", -1700.010, 744.267, -6.1, -1580.010, 1176.520, 200.000)
    AddZone("Foster Valley", -2178.690, -1250.970, 0.000, -1794.920, -1115.580, 200.000)
    AddZone("Las Payasadas", -354.332, 2580.360, 2.0, -133.625, 2816.820, 200.000)
    AddZone("Valle Ocultado", -936.668, 2611.440, 2.0, -715.961, 2847.900, 200.000)
    AddZone("Blackfield Intersection", 1166.530, 795.010, -89.084, 1375.600, 1044.690, 110.916)
    AddZone("Ganton", 2222.560, -1852.870, -89.084, 2632.830, -1722.330, 110.916)
    AddZone("Easter Bay Airport", -1213.910, -730.118, 0.000, -1132.820, -50.096, 200.000)
    AddZone("Redsands East", 1817.390, 2011.830, -89.084, 2106.700, 2202.760, 110.916)
    AddZone("Esplanade East", -1499.890, 578.396, -79.615, -1339.890, 1274.260, 20.385)
    AddZone("Caligula's Palace", 2087.390, 1543.230, -89.084, 2437.390, 1703.230, 110.916)
    AddZone("Royal Casino", 2087.390, 1383.230, -89.084, 2437.390, 1543.230, 110.916)
    AddZone("Richman", 72.648, -1235.070, -89.084, 321.356, -1008.150, 110.916)
    AddZone("Starfish Casino", 2437.390, 1783.230, -89.084, 2685.160, 2012.180, 110.916)
    AddZone("Mulholland", 1281.130, -452.425, -89.084, 1641.130, -290.913, 110.916)
    AddZone("Downtown", -1982.320, 744.170, -6.1, -1871.720, 1274.260, 200.000)
    AddZone("Hankypanky Point", 2576.920, 62.158, 0.000, 2759.250, 385.503, 200.000)
    AddZone("K.A.C.C. Military Fuels", 2498.210, 2626.550, -89.084, 2749.900, 2861.550, 110.916)
    AddZone("Harry Gold Parkway", 1777.390, 863.232, -89.084, 1817.390, 2342.830, 110.916)
    AddZone("Bayside Tunnel", -2290.190, 2548.290, -89.084, -1950.190, 2723.290, 110.916)
    AddZone("Ocean Docks", 2324.000, -2302.330, -89.084, 2703.580, -2145.100, 110.916)
    AddZone("Richman", 321.356, -1044.070, -89.084, 647.557, -860.619, 110.916)
    AddZone("Randolph Industrial Estate", 1558.090, 596.349, -89.084, 1823.080, 823.235, 110.916)
    AddZone("East Beach", 2632.830, -1852.870, -89.084, 2959.350, -1668.130, 110.916)
    AddZone("Flint Water", -314.426, -753.874, -89.084, -106.339, -463.073, 110.916)
    AddZone("Blueberry", 19.607, -404.136, 3.8, 349.607, -220.137, 200.000)
    AddZone("Linden Station", 2749.900, 1198.990, -89.084, 2923.390, 1548.990, 110.916)
    AddZone("Glen Park", 1812.620, -1350.720, -89.084, 2056.860, -1100.820, 110.916)
    AddZone("Downtown", -1993.280, 265.243, -9.1, -1794.920, 578.396, 200.000)
    AddZone("Redsands West", 1377.390, 2243.230, -89.084, 1704.590, 2433.230, 110.916)
    AddZone("Richman", 321.356, -1235.070, -89.084, 647.522, -1044.070, 110.916)
    AddZone("Gant Bridge", -2741.450, 1659.680, -6.1, -2616.400, 2175.150, 200.000)
    AddZone("Lil' Probe Inn", -90.218, 1286.850, -3.0, 153.859, 1554.120, 200.000)
    AddZone("Flint Intersection", -187.700, -1596.760, -89.084, 17.063, -1276.600, 110.916)
    AddZone("Las Colinas", 2281.450, -1135.040, -89.084, 2632.740, -945.035, 110.916)
    AddZone("Sobell Rail Yards", 2749.900, 1548.990, -89.084, 2923.390, 1937.250, 110.916)
    AddZone("The Emerald Isle", 2011.940, 2202.760, -89.084, 2237.400, 2508.230, 110.916)
    AddZone("El Castillo del Diablo", -208.570, 2123.010, -7.6, 114.033, 2337.180, 200.000)
    AddZone("Santa Flora", -2741.070, 458.411, -7.6, -2533.040, 793.411, 200.000)
    AddZone("Playa del Seville", 2703.580, -2126.900, -89.084, 2959.350, -1852.870, 110.916)
    AddZone("Market", 926.922, -1577.590, -89.084, 1370.850, -1416.250, 110.916)
    AddZone("Queens", -2593.440, 54.722, 0.000, -2411.220, 458.411, 200.000)
    AddZone("Pilson Intersection", 1098.390, 2243.230, -89.084, 1377.390, 2507.230, 110.916)
    AddZone("Spinybed", 2121.400, 2663.170, -89.084, 2498.210, 2861.550, 110.916)
    AddZone("Pilgrim", 2437.390, 1383.230, -89.084, 2624.400, 1783.230, 110.916)
    AddZone("Blackfield", 964.391, 1403.220, -89.084, 1197.390, 1726.220, 110.916)
    AddZone("'The Big Ear'", -410.020, 1403.340, -3.0, -137.969, 1681.230, 200.000)
    AddZone("Dillimore", 580.794, -674.885, -9.5, 861.085, -404.790, 200.000)
    AddZone("El Quebrados", -1645.230, 2498.520, 0.000, -1372.140, 2777.850, 200.000)
    AddZone("Esplanade North", -2533.040, 1358.900, -4.5, -1996.660, 1501.210, 200.000)
    AddZone("Easter Bay Airport", -1499.890, -50.096, -1.0, -1242.980, 249.904, 200.000)
    AddZone("Fisher's Lagoon", 1916.990, -233.323, -100.000, 2131.720, 13.800, 200.000)
    AddZone("Mulholland", 1414.070, -768.027, -89.084, 1667.610, -452.425, 110.916)
    AddZone("East Beach", 2747.740, -1498.620, -89.084, 2959.350, -1120.040, 110.916)
    AddZone("San Andreas Sound", 2450.390, 385.503, -100.000, 2759.250, 562.349, 200.000)
    AddZone("Shady Creeks", -2030.120, -2174.890, -6.1, -1820.640, -1771.660, 200.000)
    AddZone("Market", 1072.660, -1416.250, -89.084, 1370.850, -1130.850, 110.916)
    AddZone("Rockshore West", 1997.220, 596.349, -89.084, 2377.390, 823.228, 110.916)
    AddZone("Prickle Pine", 1534.560, 2583.230, -89.084, 1848.400, 2863.230, 110.916)
    AddZone("Easter Basin", -1794.920, -50.096, -1.04, -1499.890, 249.904, 200.000)
    AddZone("Leafy Hollow", -1166.970, -1856.030, 0.000, -815.624, -1602.070, 200.000)
    AddZone("LVA Freight Depot", 1457.390, 863.229, -89.084, 1777.400, 1143.210, 110.916)
    AddZone("Prickle Pine", 1117.400, 2507.230, -89.084, 1534.560, 2723.230, 110.916)
    AddZone("Blueberry", 104.534, -220.137, 2.3, 349.607, 152.236, 200.000)
    AddZone("El Castillo del Diablo", -464.515, 2217.680, 0.000, -208.570, 2580.360, 200.000)
    AddZone("Downtown", -2078.670, 578.396, -7.6, -1499.890, 744.267, 200.000)
    AddZone("Rockshore East", 2537.390, 676.549, -89.084, 2902.350, 943.235, 110.916)
    AddZone("San Fierro Bay", -2616.400, 1501.210, -3.0, -1996.660, 1659.680, 200.000)
    AddZone("Paradiso", -2741.070, 793.411, -6.1, -2533.040, 1268.410, 200.000)
    AddZone("The Camel's Toe", 2087.390, 1203.230, -89.084, 2640.400, 1383.230, 110.916)
    AddZone("Old Venturas Strip", 2162.390, 2012.180, -89.084, 2685.160, 2202.760, 110.916)
    AddZone("Juniper Hill", -2533.040, 578.396, -7.6, -2274.170, 968.369, 200.000)
    AddZone("Juniper Hollow", -2533.040, 968.369, -6.1, -2274.170, 1358.900, 200.000)
    AddZone("Roca Escalante", 2237.400, 2202.760, -89.084, 2536.430, 2542.550, 110.916)
    AddZone("Julius Thruway East", 2685.160, 1055.960, -89.084, 2749.900, 2626.550, 110.916)
    AddZone("Verona Beach", 647.712, -2173.290, -89.084, 930.221, -1804.210, 110.916)
    AddZone("Foster Valley", -2178.690, -599.884, -1.2, -1794.920, -324.114, 200.000)
    AddZone("Arco del Oeste", -901.129, 2221.860, 0.000, -592.090, 2571.970, 200.000)
    AddZone("Fallen Tree", -792.254, -698.555, -5.3, -452.404, -380.043, 200.000)
    AddZone("The Farm", -1209.670, -1317.100, 114.981, -908.161, -787.391, 251.981)
    AddZone("The Sherman Dam", -968.772, 1929.410, -3.0, -481.126, 2155.260, 200.000)
    AddZone("Esplanade North", -1996.660, 1358.900, -4.5, -1524.240, 1592.510, 200.000)
    AddZone("Financial", -1871.720, 744.170, -6.1, -1701.300, 1176.420, 300.000)
    AddZone("Garcia", -2411.220, -222.589, -1.14, -2173.040, 265.243, 200.000)
    AddZone("Montgomery", 1119.510, 119.526, -3.0, 1451.400, 493.323, 200.000)
    AddZone("Creek", 2749.900, 1937.250, -89.084, 2921.620, 2669.790, 110.916)
    AddZone("Los Santos International", 1249.620, -2394.330, -89.084, 1852.000, -2179.250, 110.916)
    AddZone("Santa Maria Beach", 72.648, -2173.290, -89.084, 342.648, -1684.650, 110.916)
    AddZone("Mulholland Intersection", 1463.900, -1150.870, -89.084, 1812.620, -768.027, 110.916)
    AddZone("Angel Pine", -2324.940, -2584.290, -6.1, -1964.220, -2212.110, 200.000)
    AddZone("Verdant Meadows", 37.032, 2337.180, -3.0, 435.988, 2677.900, 200.000)
    AddZone("Octane Springs", 338.658, 1228.510, 0.000, 664.308, 1655.050, 200.000)
    AddZone("Come-A-Lot", 2087.390, 943.235, -89.084, 2623.180, 1203.230, 110.916)
    AddZone("Redsands West", 1236.630, 1883.110, -89.084, 1777.390, 2142.860, 110.916)
    AddZone("Santa Maria Beach", 342.648, -2173.290, -89.084, 647.712, -1684.650, 110.916)
    AddZone("Verdant Bluffs", 1249.620, -2179.250, -89.084, 1692.620, -1842.270, 110.916)
    AddZone("Las Venturas Airport", 1236.630, 1203.280, -89.084, 1457.370, 1883.110, 110.916)
    AddZone("Flint Range", -594.191, -1648.550, 0.000, -187.700, -1276.600, 200.000)
    AddZone("Verdant Bluffs", 930.221, -2488.420, -89.084, 1249.620, -2006.780, 110.916)
    AddZone("Palomino Creek", 2160.220, -149.004, 0.000, 2576.920, 228.322, 200.000)
    AddZone("Ocean Docks", 2373.770, -2697.090, -89.084, 2809.220, -2330.460, 110.916)
    AddZone("Easter Bay Airport", -1213.910, -50.096, -4.5, -947.980, 578.396, 200.000)
    AddZone("Whitewood Estates", 883.308, 1726.220, -89.084, 1098.310, 2507.230, 110.916)
    AddZone("Calton Heights", -2274.170, 744.170, -6.1, -1982.320, 1358.900, 200.000)
    AddZone("Easter Basin", -1794.920, 249.904, -9.1, -1242.980, 578.396, 200.000)
    AddZone("Los Santos Inlet", -321.744, -2224.430, -89.084, 44.615, -1724.430, 110.916)
    AddZone("Doherty", -2173.040, -222.589, -1.0, -1794.920, 265.243, 200.000)
    AddZone("Mount Chiliad", -2178.690, -2189.910, -47.917, -2030.120, -1771.660, 576.083)
    AddZone("Fort Carson", -376.233, 826.326, -3.0, 123.717, 1220.440, 200.000)
    AddZone("Foster Valley", -2178.690, -1115.580, 0.000, -1794.920, -599.884, 200.000)
    AddZone("Ocean Flats", -2994.490, -222.589, -1.0, -2593.440, 277.411, 200.000)
    AddZone("Fern Ridge", 508.189, -139.259, 0.000, 1306.660, 119.526, 200.000)
    AddZone("Bayside", -2741.070, 2175.150, 0.000, -2353.170, 2722.790, 200.000)
    AddZone("Las Venturas Airport", 1457.370, 1203.280, -89.084, 1777.390, 1883.110, 110.916)
    AddZone("Blueberry Acres", -319.676, -220.137, 0.000, 104.534, 293.324, 200.000)
    AddZone("Palisades", -2994.490, 458.411, -6.1, -2741.070, 1339.610, 200.000)
    AddZone("North Rock", 2285.370, -768.027, 0.000, 2770.590, -269.740, 200.000)
    AddZone("Hunter Quarry", 337.244, 710.840, -115.239, 860.554, 1031.710, 203.761)
    AddZone("Los Santos International", 1382.730, -2730.880, -89.084, 2201.820, -2394.330, 110.916)
    AddZone("Missionary Hill", -2994.490, -811.276, 0.000, -2178.690, -430.276, 200.000)
    AddZone("San Fierro Bay", -2616.400, 1659.680, -3.0, -1996.660, 2175.150, 200.000)
    AddZone("Restricted Area", -91.586, 1655.050, -50.000, 421.234, 2123.010, 250.000)
    AddZone("Mount Chiliad", -2997.470, -1115.580, -47.917, -2178.690, -971.913, 576.083)
    AddZone("Mount Chiliad", -2178.690, -1771.660, -47.917, -1936.120, -1250.970, 576.083)
    AddZone("Easter Bay Airport", -1794.920, -730.118, -3.0, -1213.910, -50.096, 200.000)
    AddZone("The Panopticon", -947.980, -304.320, -1.1, -319.676, 327.071, 200.000)
    AddZone("Shady Creeks", -1820.640, -2643.680, -8.0, -1226.780, -1771.660, 200.000)
    AddZone("Back o Beyond", -1166.970, -2641.190, 0.000, -321.744, -1856.030, 200.000)
    AddZone("Mount Chiliad", -2994.490, -2189.910, -47.917, -2178.690, -1115.580, 576.083)
    AddZone("Tierra Robada", -1213.910, 596.349, -242.990, -480.539, 1659.680, 900.000)
    AddZone("Flint County", -1213.910, -2892.970, -242.990, 44.615, -768.027, 900.000)
    AddZone("Whetstone", -2997.470, -2892.970, -242.990, -1213.910, -1115.580, 900.000)
    AddZone("Bone County", -480.539, 596.349, -242.990, 869.461, 2993.870, 900.000)
    AddZone("Tierra Robada", -2997.470, 1659.680, -242.990, -480.539, 2993.870, 900.000)
    AddZone("San Fierro", -2997.470, -1115.580, -242.990, -1213.910, 1659.680, 900.000)
    AddZone("Las Venturas", 869.461, 596.349, -242.990, 2997.060, 2993.870, 900.000)
    AddZone("Red County", -1213.910, -768.027, -242.990, 2997.060, 596.349, 900.000)
    AddZone("Los Santos", 44.615, -2892.970, -242.990, 2997.060, -768.027, 900.000)
}
calculateZone(posX, posY, posZ) {
    if ( bInitZaC == 0 )
    {
        initZonesAndCities()
        bInitZaC := 1
    }
    Loop % nZone-1
    {
        if (posX >= zone%A_Index%_x1) && (posY >= zone%A_Index%_y1) && (posZ >= zone%A_Index%_z1) && (posX <= zone%A_Index%_x2) && (posY <= zone%A_Index%_y2) && (posZ <= zone%A_Index%_z2)
        {
            ErrorLevel := ERROR_OK
            return zone%A_Index%_name
        }
    }
    ErrorLevel := ERROR_ZONE_NOT_FOUND
    return "Штат Platinum"
}
calculateCity(posX, posY, posZ) {
    if ( bInitZaC == 0 )
    {
        initZonesAndCities()
        bInitZaC := 1
    }
    smallestCity := "Штат Platinum"
    currentCitySize := 0
    smallestCitySize := 0
    Loop % nCity-1
    {
        if (posX >= city%A_Index%_x1) && (posY >= city%A_Index%_y1) && (posZ >= city%A_Index%_z1) && (posX <= city%A_Index%_x2) && (posY <= city%A_Index%_y2) && (posZ <= city%A_Index%_z2)
        {
            currentCitySize := ((city%A_Index%_x2 - city%A_Index%_x1) * (city%A_Index%_y2 - city%A_Index%_y1) * (city%A_Index%_z2 - city%A_Index%_z1))
            if (smallestCity == "Штат Platinum") || (currentCitySize < smallestCitySize)
            {
                smallestCity := city%A_Index%_name
                smallestCitySize := currentCitySize
            }
        }
    }
    if(smallestCity == "Штат Platinum") {
        ErrorLevel := ERROR_CITY_NOT_FOUND
    } else {
        ErrorLevel := ERROR_OK
    }
    return smallestCity
}
AddZone(sName, x1, y1, z1, x2, y2, z2) {
    global
    zone%nZone%_name := sName
    zone%nZone%_x1 := x1
    zone%nZone%_y1 := y1
    zone%nZone%_z1 := z1
    zone%nZone%_x2 := x2
    zone%nZone%_y2 := y2
    zone%nZone%_z2 := z2
    nZone := nZone + 1
}
AddCity(sName, x1, y1, z1, x2, y2, z2) {
    global
    city%nCity%_name := sName
    city%nCity%_x1 := x1
    city%nCity%_y1 := y1
    city%nCity%_z1 := z1
    city%nCity%_x2 := x2
    city%nCity%_y2 := y2
    city%nCity%_z2 := z2
    nCity := nCity + 1
}
IsPlayerInRangeOfPoint(_posX, _posY, _posZ, _posRadius)
{
    GetPlayerPos(posX, posY, posZ)
    X := posX -_posX
    Y := posY -_posY
    Z := posZ -_posZ
    if(((X < _posRadius) && (X > -_posRadius)) && ((Y < _posRadius) && (Y > -_posRadius)) && ((Z < _posRadius) && (Z > -_posRadius)))
    return TRUE
    return FALSE
}
IsPlayerInRangeOfPoint2D(_posX, _posY, _posRadius)
{
    GetPlayerPos(posX, posY, posZ)
    X := posX - _posX
    Y := posY - _posY
    if(((X < _posRadius) && (X > -_posRadius)) && ((Y < _posRadius) && (Y > -_posRadius)))
    return TRUE
    return FALSE
}
getMarkerZone() {
    aktPos := CoordsFromRedmarker()
    return CalculateZone(aktPos[1], aktPos[2], aktPos[3])
}
getPlayerZone()
{
    aktPos := getCoordinates()
    return calculateZone(aktPos[1], aktPos[2], aktPos[3])
}
getPlayerCity()
{
    aktPos := getCoordinates()
    return calculateCity(aktPos[1], aktPos[2], aktPos[3])
}
getUsername() {
    if(!checkHandles())
    return ""
    dwAddress := dwSAMP + ADDR_SAMP_USERNAME
    sUsername := readString(hGTA, dwAddress, 25)
    if(ErrorLevel) {
        ErrorLevel := ERROR_READ_MEMORY
        return ""
    }
    ErrorLevel := ERROR_OK
    return sUsername
}
getId() {
    s:=getUsername()
    return getPlayerIdByName(s)
}
GetNearPlayer()
{
    TempDist := 0x7fffffff
    p := getStreamedInPlayersInfo()
    if(!p)
    return -1
    lpos := getCoordinates()
    if(!lpos)
    return -1
    For i, o in p
    {
        t:=getDist(lpos,o.POS)
        Skin12 := GetTargetPlayerSkinIdById(i)
        if ((Skin12 != 280) and (Skin12 != 281) and (Skin12 != 165) and (Skin12 != 282) and (Skin12 != 283) and (Skin12 != 284) and (Skin12 != 285) and (Skin12 != 288) and (Skin12 != 150) and (Skin12 != 267) and (Skin12 != 309) and (Skin12 != 306) and (Skin12 != 307))
        {
            if (t < TempDist)
            {
                TempId := i
                TempDist := t
            }
        }
    }
    return TempId
}
GetNearPlayerNotPoliceCar()
{
    TempDist := 0x7fffffff
    p := getStreamedInPlayersInfo()
    if(!p)
    return -1
    lpos := getCoordinates()
    if(!lpos)
    return -1
    For i, o in p
    {
        Skin12 := GetTargetPlayerSkinIdById(i)
        if ((Skin12 != 280) and (Skin12 != 281) and (Skin12 != 165) and (Skin12 != 282) and (Skin12 != 283) and (Skin12 != 284) and (Skin12 != 285) and (Skin12 != 288) and (Skin12 != 150) and (Skin12 != 267) and (Skin12 != 309) and (Skin12 != 306) and (Skin12 != 307))
        {
            ModelName := getTargetVehicleModelNameById(i)
            if ((ModelName != "Enforcer") and (ModelName != "Police Maverick") and (ModelName != "HPV1000") and (ModelName != "PoliceRanger") and (ModelName != "Police Car") and (ModelName != "FBI Truck") and (ModelName != "БТР"))
            {
                t:=getDist(lpos,o.POS)
                if (t < TempDist)
                {
                    TempId := i
                    TempDist := t
                }
            }
        }
    }
    return TempId
}
GetNearDriver()
{
    TempDist := 0x7fffffff
    p := getStreamedInPlayersInfo()
    if(!p)
    return -1
    lpos := getCoordinates()
    if(!lpos)
    return -1
    For i, o in p
    {
        Skin12 := GetTargetPlayerSkinIdById(i)
        Driv := isTargetDriverbyId(i)
        if ((Driv = 1) and (Skin12 != 280) and (Skin12 != 281) and (Skin12 != 165) and (Skin12 != 282) and (Skin12 != 283) and (Skin12 != 284) and (Skin12 != 285) and (Skin12 != 288) and (Skin12 != 150) and (Skin12 != 267) and (Skin12 != 309) and (Skin12 != 306) and (Skin12 != 307))
        {
            ModelName := getTargetVehicleModelNameById(i)
            if ((ModelName != "Enforcer") and (ModelName != "Police Maverick") and (ModelName != "HPV1000") and (ModelName != "PoliceRanger") and (ModelName != "Police Car") and (ModelName != "FBI Truck") and (ModelName != "БТР"))
            {
                t:=getDist(lpos,o.POS)
                if (t < TempDist)
                {
                    TempId := i
                    TempDist := t
                }
            }
        }
    }
    return TempId
}
setDialogIndex(index) {
    dwPointer := getDialogStructPtr()
    if( ErrorLevel || !dwPointer )
    return false
    dwPointer := readDWORD(hGTA, dwPointer + SAMP_DIALOG_PTR2_OFFSET)
    if( ErrorLevel ) {
        ErrorLevel := ERROR_READ_MEMORY
        return false
    }
    writeMemory(hGTA, dwPointer + 0x143, index-1, 1, "Byte")
    if( ErrorLevel ) {
        ErrorLevel := ERROR_WRITE_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return true
}
FixLanguage()
{
    SendMessage, 0x50,, 0x4090409,, A
    SendMessage, 0x50,, 0x4090409,,
    Layout := 0x4090409
    PostMessage, 0x50, 0, Layout, , ahk_id %A_ScriptHWND%
    SendMessage, 0x50, 0, Layout, , ahk_id %A_ScriptHWND%
    if A_OSVersion not in WIN_2003,WIN_XP,WIN_2000
    {
        tc := 0
        while (DllCall("GetKeyboardLayout", "Int", DllCall("GetWindowThreadProcessId", "Ptr", A_ScriptHWND, "Int", "0")) != Layout) and (tc <= 5)
        {
            tc += 1
        }
        if( tc = 5 )
        return 0
        return 1
    }
    return 1
}
StringToHex(String)
{
    local Old_A_FormatInteger, CharHex, HexString
    if !String
    Return 0
    Old_A_FormatInteger := A_FormatInteger
    SetFormat, INTEGER, H
    Loop, Parse, String
    {
        CharHex := Asc(A_LoopField)
        StringTrimLeft, CharHex, CharHex, 2
        HexString .= CharHex
    }
    SetFormat, INTEGER, %Old_A_FormatInteger%
    Return HexString
}
HexToString(String)
{
    local Length, CharStr, RetString
    if !String
    Return 0
    Length := StrLen(String)//2
    Loop, %Length%
    {
        StringMid, CharStr, String, A_Index*2 - 1, 2
        CharStr = 0x%CharStr%
        RetString .= Chr(CharStr)
    }
    Return RetString
}
HexToDec(str)
{
    local newStr := ""
static comp := {0:0, 1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7, 8:8, 9:9, "a":10, "b":11, "c":12, "d":13, "e":14, "f":15}
    StringLower, str, str
    str := RegExReplace(str, "^0x|[^a-f0-9]+", "")
    Loop, % StrLen(str)
    newStr .= SubStr(str, (StrLen(str)-A_Index)+1, 1)
    newStr := StrSplit(newStr, "")
    local ret := 0
    for i,char in newStr
    ret += comp[char]*(16**(i-1))
    return ret
}
HexToDecOne(Hex)
{
    if (InStr(Hex, "0x") != 1)
    Hex := "0x" Hex
    return, Hex + 0
}
HexToDecTwo(hex)
{
    VarSetCapacity(dec, 66, 0)
    , val := DllCall("msvcrt.dll\_wcstoui64", "Str", hex, "UInt", 0, "UInt", 16, "CDECL Int64")
    , DllCall("msvcrt.dll\_i64tow", "Int64", val, "Str", dec, "UInt", 10, "CDECL")
    return dec
}
hex2rgb(CR)
{
    NumPut((InStr(CR, "#") ? "0x" SubStr(CR, 2) : "0x") SubStr(CR, -5), (V := "000000"))
    return NumGet(V, 2, "UChar") "," NumGet(V, 1, "UChar") "," NumGet(V, 0, "UChar")
}
rgb2hex(R, G, B, H := 1)
{
    static U := A_IsUnicode ? "_wcstoui64" : "_strtoui64"
    static V := A_IsUnicode ? "_i64tow"    : "_i64toa"
    rgb := ((R << 16) + (G << 8) + B)
    H := ((H = 1) ? "#" : ((H = 2) ? "0x" : ""))
    VarSetCapacity(S, 66, 0)
    value := DllCall("msvcrt.dll\" U, "Str", rgb , "UInt", 0, "UInt", 10, "CDECL Int64")
    DllCall("msvcrt.dll\" V, "Int64", value, "Str", S, "UInt", 16, "CDECL")
    return H S
}
KeyToVK(Chr)
{
    SetFormat, Integer, Hex
    VK := DllCall( "VkKeyScan", Char,Asc(Chr) ) & 0xFF
    SetFormat, Integer, D
    StringReplace,VK,VK,0x,VK
    MsgBox,% VK
}
ConvertText(Text, ByRef OppositeLayout)
{
    static Cyr := "ЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМ? ТЬБЮёйцукенгшщзхъфывапролджэячсмитьбю,.""№;?"
, Lat := "~QWERTYUIOP{}ASDFGHJKL:""ZXCVBNM<>``qwertyuiop[]asdfghjkl;'zxcvbnm,.?/@#$&"
    RegExReplace(Text, "i)[A-Z]", "", LatCount)
    RegExReplace(Text, "i)[А-ЯЁ]", "", CyrCount)
    CurrentLayout := LatCount > CyrCount ? "Lat" : "Cyr"
    OppositeLayout := LatCount > CyrCount ? "Cyr" : "Lat"
    Loop, parse, Text
    NewText .= (found := InStr(%CurrentLayout%, A_LoopField, 1))
    ? SubStr(%OppositeLayout%, found, 1) : A_LoopField
    return NewText
}
LastChatLine()
{
    static result
    if !WinActive("GTA:SA:MP")
    {
        afk := true
        sleep 1000
        return false
    }
    FileGetSize, filesize_current, % FileChatlog
    if( filesize_current == filesize_last )
    {
        sleep 1000
        return false
    }
    loop, read, % FileChatlog
    {
        chat_current++
        if( chat_current <= chat_last || afk )
        continue
        chat_last++
        if StrLen(A_LoopReadLine)
        result := A_LoopReadLine
    }
    afk := false
    filesize_last := filesize_current
    chat_current := 1
    return result
}
HKtoKey(HKey)
{
    StringUpper,	HKey,	Hkey
    StringReplace,	HKey,	HKey,	+,				`Shift` ,		All
    StringReplace,	HKey,	HKey,	!,				`Alt` ,		All
    StringReplace,	HKey,	HKey,	^,				`Ctrl` ,		All
    StringReplace,	HKey,	HKey,	Numpad0,		`Num 0` ,		All
    StringReplace,	HKey,	HKey,	Numpad1,		`Num 1` ,		All
    StringReplace,	HKey,	HKey,	Numpad2,		`Num 2` ,		All
    StringReplace,	HKey,	HKey,	Numpad3,		`Num 3` ,		All
    StringReplace,	HKey,	HKey,	Numpad4,		`Num 4` ,		All
    StringReplace,	HKey,	HKey,	Numpad5,		`Num 5` ,		All
    StringReplace,	HKey,	HKey,	Numpad6,		`Num 6` ,		All
    StringReplace,	HKey,	HKey,	Numpad7,		`Num 7` ,		All
    StringReplace,	HKey,	HKey,	Numpad8,		`Num 8` ,		All
    StringReplace,	HKey,	HKey,	Numpad9,		`Num 9` ,		All
    StringReplace,	HKey,	HKey,	NumpadDiv,		`Num/` ,		All
    StringReplace,	HKey,	HKey,	NumpadDot,		`Num.` ,		All
    StringReplace,	HKey,	HKey,	NumpadAdd,		`Num+` ,		All
    StringReplace,	HKey,	HKey,	NumpadSub,		`Num-` ,		All
    StringReplace,	HKey,	HKey,	NumpadEnter,	`Num Enter` ,	All
    StringReplace,	HKey,	HKey,	&,				,				All
    StringReplace,	HKey,	HKey,	` ` ,			` ,				All
    SubStr(HKey, 2, -1)
    RegExMatch(HKey, "(\w)")
    return HKey
}
BubbleSort(Array)
{
    if( !isObject(Array) )
    return 0
    i := Array.MaxIndex()
    Loop % i
    {
        swapped := false
        Loop % i - A_Index
        {
            if( Array[A_Index] > Array[A_Index + 1] )
            {
                tmpvar := Array[A_Index + 1]
                Array[A_Index] := Array[A_Index + 1]
                Array[A_Index + 1] := tmpvar
                swapped := true
            }
        }
        if( !swapped )
        break
    }
    return Array
}
inArray(Array, Search)
{
    for Key, Val in Array
    {
        if (Val = Search)
        {
            Return 1
        }
    }
    Return 0
}
timestamp(time = "") {
    if( !strlen(time) )
    time := A_Now
    time -= 1970,s
    return time
}
MatchesCount(text, search)
{
    matches := 0
    StringLower, text, text
    StringLower, search, search
    text := " " text " "
    Loop, parse, search, %A_Space%
    {
        searchPart := A_LoopField
        searchPartLength := StrLen(searchPart)
        searchStep := (searchPartLength > 3 ? 2 : searchPartLength - 1)
        if( searchPartLength > searchStep )
        {
            Loop % searchPartLength - searchStep
            if InStr( text, SubStr(searchPart, A_Index, A_Index + searchStep) )
            matches++
            if InStr(text, searchPart " ")
            matches++
            if InStr(text, " " searchPart )
            matches++
        }
    }
    return matches
}
writeMemory(hProcess,address,writevalue,length=4, datatype="int") {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    VarSetCapacity(finalvalue,length, 0)
    NumPut(writevalue,finalvalue,0,datatype)
    dwRet :=  DllCall(  "WriteProcessMemory"
    ,"Uint",hProcess
    ,"Uint",address
    ,"Uint",&finalvalue
    ,"Uint",length
    ,"Uint",0)
    if(dwRet == 0) {
        ErrorLevel := ERROR_WRITE_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return true
}
checkHandles() {
    if (iRefreshHandles + 500 > A_TickCount)
    return true
    if (!refreshGTA() || !refreshSAMP() || !refreshMemory())
    return false
    iRefreshHandles := A_TickCount
    return true
}
refreshGTA() {
    newPID := getPID("GTA:SA:MP")
    if(!newPID) {
        if(hGTA) {
            virtualFreeEx(hGTA, pMemory, 0, 0x8000)
            closeProcess(hGTA)
            hGTA := 0x0
        }
        dwGTAPID := 0
        hGTA := 0x0
        dwSAMP := 0x0
        pMemory := 0x0
        return false
    }
    if(!hGTA || (dwGTAPID != newPID)) {
        hGTA := openProcess(newPID)
        if(ErrorLevel) {
            dwGTAPID := 0
            hGTA := 0x0
            dwSAMP := 0x0
            pMemory := 0x0
            return false
        }
        dwGTAPID := newPID
        dwSAMP := 0x0
        pMemory := 0x0
        return true
    }
    return true
}
refreshSAMP() {
    if(dwSAMP)
    return true
    dwSAMP := getModuleBaseAddress("samp.dll", hGTA)
    if(!dwSAMP)
    return false
    versionByte := readMem(hGTA, dwSAMP + 0x1036, 1, "UChar")
    sampVersion := versionByte == 0xD8 ? 1 : (versionByte == 0xA8 ? 2 : (versionByte == 0x78 ? 3 : 0))
    if (!sampVersion)
    return false
    return true
}
refreshMemory() {
    if(!pMemory) {
        pMemory     := virtualAllocEx(hGTA, 6144, 0x1000 | 0x2000, 0x40)
        if(ErrorLevel) {
            pMemory := 0x0
            return false
        }
        pParam1     := pMemory
        pParam2     := pMemory + 1024
        pParam3     := pMemory + 2048
        pParam4     := pMemory + 3072
        pParam5     := pMemory + 4096
        pInjectFunc := pMemory + 5120
    }
    return true
}
getPID(szWindow) {
    local dwPID := 0
    WinGet, dwPID, PID, %szWindow%
    return dwPID
}
openProcess(dwPID, dwRights = 0x1F0FFF) {
    hProcess := DllCall("OpenProcess"
    , "UInt", dwRights
    , "int",  0
    , "UInt", dwPID
    , "Uint")
    if(hProcess == 0) {
        ErrorLevel := ERROR_OPEN_PROCESS
        return 0
    }
    ErrorLevel := ERROR_OK
    return hProcess
}
closeProcess(hProcess) {
    if(hProcess == 0) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    dwRet := DllCall(    "CloseHandle"
    , "Uint", hProcess
    , "UInt")
    ErrorLevel := ERROR_OK
}
getModuleBaseAddress(sModule, hProcess) {
    if(!sModule) {
        ErrorLevel := ERROR_MODULE_NOT_FOUND
        return 0
    }
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    dwSize = 1024*4
    VarSetCapacity(hMods, dwSize)
    VarSetCapacity(cbNeeded, 4)
    dwRet := DllCall(    "Psapi.dll\EnumProcessModules"
    , "UInt", hProcess
    , "UInt", &hMods
    , "UInt", dwSize
    , "UInt*", cbNeeded
    , "UInt")
    if(dwRet == 0) {
        ErrorLevel := ERROR_ENUM_PROCESS_MODULES
        return 0
    }
    dwMods := cbNeeded / 4
    i := 0
    VarSetCapacity(hModule, 4)
    VarSetCapacity(sCurModule, 260)
    while(i < dwMods) {
        hModule := NumGet(hMods, i*4)
        DllCall("Psapi.dll\GetModuleFileNameEx"
        , "UInt", hProcess
        , "UInt", hModule
        , "Str", sCurModule
        , "UInt", 260)
        SplitPath, sCurModule, sFilename
        if(sModule == sFilename) {
            ErrorLevel := ERROR_OK
            return hModule
        }
        i := i + 1
    }
    ErrorLevel := ERROR_MODULE_NOT_FOUND
    return 0
}
readString(hProcess, dwAddress, dwLen) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    VarSetCapacity(sRead, dwLen)
    dwRet := DllCall(    "ReadProcessMemory"
    , "UInt", hProcess
    , "UInt", dwAddress
    , "Str", sRead
    , "UInt", dwLen
    , "UInt*", 0
    , "UInt")
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    if A_IsUnicode
    return __ansiToUnicode(sRead)
    return sRead
}
readFloat(hProcess, dwAddress) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    VarSetCapacity(dwRead, 4)
    dwRet := DllCall(    "ReadProcessMemory"
    , "UInt",  hProcess
    , "UInt",  dwAddress
    , "Str",   dwRead
    , "UInt",  4
    , "UInt*", 0
    , "UInt")
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return NumGet(dwRead, 0, "Float")
}
readDWORD(hProcess, dwAddress) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    VarSetCapacity(dwRead, 4)
    dwRet := DllCall(    "ReadProcessMemory"
    , "UInt",  hProcess
    , "UInt",  dwAddress
    , "Str",   dwRead
    , "UInt",  4
    , "UInt*", 0)
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return NumGet(dwRead, 0, "UInt")
}
readMem(hProcess, dwAddress, dwLen=4, type="UInt") {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    VarSetCapacity(dwRead, dwLen)
    dwRet := DllCall(    "ReadProcessMemory"
    , "UInt",  hProcess
    , "UInt",  dwAddress
    , "Str",   dwRead
    , "UInt",  dwLen
    , "UInt*", 0)
    if(dwRet == 0) {
        ErrorLevel := ERROR_READ_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return NumGet(dwRead, 0, type)
}
writeString(hProcess, dwAddress, wString) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    sString := wString
    if A_IsUnicode
    sString := __unicodeToAnsi(wString)
    dwRet := DllCall(    "WriteProcessMemory"
    , "UInt", hProcess
    , "UInt", dwAddress
    , "Str", sString
    , "UInt", StrLen(wString) + 1
    , "UInt", 0
    , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_WRITE_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return true
}
writeRaw(hProcess, dwAddress, pBuffer, dwLen) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    dwRet := DllCall(    "WriteProcessMemory"
    , "UInt", hProcess
    , "UInt", dwAddress
    , "UInt", pBuffer
    , "UInt", dwLen
    , "UInt", 0
    , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_WRITE_MEMORY
        return false
    }
    ErrorLevel := ERROR_OK
    return true
}
Memory_ReadByte(process_handle, address) {
    VarSetCapacity(value, 1, 0)
    DllCall("ReadProcessMemory", "UInt", process_handle, "UInt", address, "Str", value, "UInt", 1, "UInt *", 0)
    return, NumGet(value, 0, "Byte")
}
callWithParams(hProcess, dwFunc, aParams, bCleanupStack = true) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return false
    }
    validParams := 0
    i := aParams.MaxIndex()
    dwLen := i * 5    + 5    + 1
    if(bCleanupStack)
    dwLen += 3
    VarSetCapacity(injectData, i * 5    + 5       + 3       + 1, 0)
    i_ := 1
    while(i > 0) {
        if(aParams[i][1] != "") {
            dwMemAddress := 0x0
            if(aParams[i][1] == "p") {
                dwMemAddress := aParams[i][2]
            } else if(aParams[i][1] == "s") {
                if(i_>3)
                return false
                dwMemAddress := pParam%i_%
                writeString(hProcess, dwMemAddress, aParams[i][2])
                if(ErrorLevel)
                return false
                i_ += 1
            } else if(aParams[i][1] == "i") {
                dwMemAddress := aParams[i][2]
            } else {
                return false
            }
            NumPut(0x68, injectData, validParams * 5, "UChar")
            NumPut(dwMemAddress, injectData, validParams * 5 + 1, "UInt")
            validParams += 1
        }
        i -= 1
    }
    offset := dwFunc - ( pInjectFunc + validParams * 5 + 5 )
    NumPut(0xE8, injectData, validParams * 5, "UChar")
    NumPut(offset, injectData, validParams * 5 + 1, "Int")
    if(bCleanupStack) {
        NumPut(0xC483, injectData, validParams * 5 + 5, "UShort")
        NumPut(validParams*4, injectData, validParams * 5 + 7, "UChar")
        NumPut(0xC3, injectData, validParams * 5 + 8, "UChar")
    } else {
        NumPut(0xC3, injectData, validParams * 5 + 5, "UChar")
    }
    writeRaw(hGTA, pInjectFunc, &injectData, dwLen)
    if(ErrorLevel)
    return false
    hThread := createRemoteThread(hGTA, 0, 0, pInjectFunc, 0, 0, 0)
    if(ErrorLevel)
    return false
    waitForSingleObject(hThread, 0xFFFFFFFF)
    closeProcess(hThread)
    return true
}
virtualAllocEx(hProcess, dwSize, flAllocationType, flProtect) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    dwRet := DllCall(    "VirtualAllocEx"
    , "UInt", hProcess
    , "UInt", 0
    , "UInt", dwSize
    , "UInt", flAllocationType
    , "UInt", flProtect
    , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_ALLOC_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwRet
}
virtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    dwRet := DllCall(    "VirtualFreeEx"
    , "UInt", hProcess
    , "UInt", lpAddress
    , "UInt", dwSize
    , "UInt", dwFreeType
    , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_FREE_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwRet
}
createRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId) {
    if(!hProcess) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    dwRet := DllCall(    "CreateRemoteThread"
    , "UInt", hProcess
    , "UInt", lpThreadAttributes
    , "UInt", dwStackSize
    , "UInt", lpStartAddress
    , "UInt", lpParameter
    , "UInt", dwCreationFlags
    , "UInt", lpThreadId
    , "UInt")
    if(dwRet == 0) {
        ErrorLEvel := ERROR_ALLOC_MEMORY
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwRet
}
waitForSingleObject(hThread, dwMilliseconds) {
    if(!hThread) {
        ErrorLevel := ERROR_INVALID_HANDLE
        return 0
    }
    dwRet := DllCall(    "WaitForSingleObject"
    , "UInt", hThread
    , "UInt", dwMilliseconds
    , "UInt")
    if(dwRet == 0xFFFFFFFF) {
        ErrorLEvel := ERROR_WAIT_FOR_OBJECT
        return 0
    }
    ErrorLevel := ERROR_OK
    return dwRet
}
__ansiToUnicode(sString, nLen = 0) {
    If !nLen
    {
        nLen := DllCall("MultiByteToWideChar"
        , "Uint", 0
        , "Uint", 0
        , "Uint", &sString
        , "int",  -1
        , "Uint", 0
        , "int",  0)
    }
    VarSetCapacity(wString, nLen * 2)
    DllCall("MultiByteToWideChar"
    , "Uint", 0
    , "Uint", 0
    , "Uint", &sString
    , "int",  -1
    , "Uint", &wString
    , "int",  nLen)
    return wString
}
__unicodeToAnsi(wString, nLen = 0) {
    pString := wString + 1 > 65536 ? wString : &wString
    If !nLen
    {
        nLen := DllCall("WideCharToMultiByte"
        , "Uint", 0
        , "Uint", 0
        , "Uint", pString
        , "int",  -1
        , "Uint", 0
        , "int",  0
        , "Uint", 0
        , "Uint", 0)
    }
    VarSetCapacity(sString, nLen)
    DllCall("WideCharToMultiByte"
    , "Uint", 0
    , "Uint", 0
    , "Uint", pString
    , "int",  -1
    , "str",  sString
    , "int",  nLen
    , "Uint", 0
    , "Uint", 0)
    return sString
}
getChatLineColor(line := 0, isHex := true) {
    if(!checkHandles())
    return -1
    dwAddress := readDWORD(hGTA, dwSAMP + ADDR_SAMP_CHATMSG_PTR)
    if ErrorLevel
    return -1
    clAddress := dwAddress + 0x152 + ((99-line) * 0xFC) + 0xD4
    if ErrorLevel
    return -1
    color := readMem(hGTA, clAddress, 3, "byte")
    if ErrorLevel
    return -1
    if isHex
    return inttohex(color)
    return color
}
IntToHex(int)
{
    CurrentFormat := A_FormatInteger
    SetFormat, integer, hex
    int += 0
    SetFormat, integer, %CurrentFormat%
    return int
}
GetClosestNoCop() {
dist := 300 ;max int32
p := GetStreamedInPlayersInfo()
if(!p)
return -1
lpos := GetPlayerCoordinates()
if(!lpos)
return -1
id := -1
For i, o in p
{
Skin12 := GetTargetPlayerSkinIdById(i)
if (Skin12!="280" and Skin12!="281" and Skin12!= "165" and Skin12!="282" and Skin12!="283" and Skin12!="284" and Skin12!="285" and Skin12!="288" and Skin12!="150" and Skin12!="267" and Skin12!="309" and Skin12!="306") {
t := GetDist(lpos,o.POS)
if (t<dist) {
dist := t
id := i
}
}
}
return id
}

IdSkinColor(ActiveID) {
if(!checkHandles())
return false
PlayerId := GetTargetPlayerSkinIdById(ActiveID)
if ((PlayerId = "283") or (PlayerId = "281") or (PlayerId = "282") or (PlayerId = "280") or (PlayerId = "285") or (PlayerId = "165") or (PlayerId = "309") or (PlayerId = "306") or (PlayerId = "307") or (PlayerId = "274") or (PlayerId = "275") or (PlayerId = "276") or (PlayerId = "308") or (PlayerId = "70") or (PlayerId = "71") or (PlayerId = "46") or (PlayerId = "60") or (PlayerId = "170") or (PlayerId = "188") or (PlayerId = "223") or (PlayerId = "233") or (PlayerId = "211") or (PlayerId = "105") or (PlayerId = "106") or (PlayerId = "107") or (PlayerId = "269") or (PlayerId = "270") or (PlayerId = "65") or (PlayerId = "13") or (PlayerId = "21") or (PlayerId = "24") or (PlayerId = "102") or (PlayerId = "103") or (PlayerId = "104") or (PlayerId = "269") or (PlayerId = "270") or (PlayerId = "56") or (PlayerId = "114") or (PlayerId = "115") or (PlayerId = "116") or (PlayerId = "293") or (PlayerId = "292") or (PlayerId = "117") or (PlayerId = "118") or (PlayerId = "120") or (PlayerId = "124") or (PlayerId = "126") or (PlayerId = "214") or (PlayerId = "61") or (PlayerId = "73") or (PlayerId = "191") or (PlayerId = "179") or (PlayerId = "255") or (PlayerId = "287") or (PlayerId = "41") or (PlayerId = "176") or (PlayerId = "177") or (PlayerId = "175") or (PlayerId = "174") or (PlayerId = "173") or (PlayerId = "122") or (PlayerId = "123") or (PlayerId = "169") or (PlayerId = "124") or (PlayerId = "203") or (PlayerId = "204") or (PlayerId = "117") or (PlayerId = "118") or (PlayerId = "120") or (PlayerId = "208") or (PlayerId = "126") or (PlayerId = "214") or (PlayerId = "59") or (PlayerId = "141") or (PlayerId = "187") or (PlayerId = "228") or (PlayerId = "295") or (PlayerId = "186") (PlayerId = "111") or (PlayerId = "112") or (PlayerId = "12") or (PlayerId = "125") or (PlayerId = "127"))
{
if (PlayerId = "283") or (PlayerId = "281") or (PlayerId = "282") or (PlayerId = "280") or (PlayerId = "285") or (PlayerId = "165") or (PlayerId = "309") or (PlayerId = "306") or (PlayerId = "307")
{
playerIdColor := "{0033ff}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "274") or (PlayerId = "275") or (PlayerId = "276") or (PlayerId = "308") or (PlayerId = "70") or (PlayerId = "71")
{
playerIdColor := "{ff3e96}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "46") or (PlayerId = "60") or (PlayerId = "170") or (PlayerId = "188") or (PlayerId = "223") or (PlayerId = "233") or (PlayerId = "211")
{
playerIdColor := "{ff4500}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "{ff4500}")
{
playerIdColor := "{ff4500}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "117") or (PlayerId = "118") or (PlayerId = "120") or (PlayerId = "208") or (PlayerId = "126") or (PlayerId = "214")
{
playerIdColor := "{ba197e}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "186") or (PlayerId = "123") or (PlayerId = "169") or (PlayerId = "208") or (PlayerId = "203") or (PlayerId = "204") or (PlayerId = "12")
{
playerIdColor := "{ff0000}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "61") or (PlayerId = "73") or (PlayerId = "191") or (PlayerId = "179") or (PlayerId = "255") or (PlayerId = "287")
{
playerIdColor := "{7b3f00}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "56") or (PlayerId = "114") or (PlayerId = "115") or (PlayerId = "116") or (PlayerId = "293") or (PlayerId = "292")
{
playerIdColor := "{00ccff}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "41") or (PlayerId = "176") or (PlayerId = "177") or (PlayerId = "175") or (PlayerId = "174") or (PlayerId = "173")
{
playerIdColor := "{4488ff}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "13") or (PlayerId = "21") or (PlayerId = "24") or (PlayerId = "102") or (PlayerId = "103") or (PlayerId = "104")
{
playerIdColor := "{cc33ff}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "108") or (PlayerId = "109") or (PlayerId = "110") or (PlayerId = "30") or (PlayerId = "226") or (PlayerId = "291")
{
playerIdColor := "{ffcd00}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "111") or (PlayerId = "112") or (PlayerId = "12") or (PlayerId = "125") or
(PlayerId = "127")
{
playerIdColor := "{458b74}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "105") or (PlayerId = "106") or (PlayerId = "107") or (PlayerId = "269") or (PlayerId = "270") or (PlayerId = "65")
{
playerIdColor := "{009900}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "59") or (PlayerId = "141") or (PlayerId = "187") or (PlayerId = "228") or (PlayerId = "295")
{
playerIdColor := "{4170e1}(" ActiveID "){FFFFFF}"
}
if (PlayerId = "")
{
playerIdColor := "{ffffff}(" ActiveID "){FFFFFF}"
}
return playerIdColor
}
}


#IfWinActive GTA:SA:MP
#Persistent
#SingleInstance, force
#NoEnv


js = {FF0000}[JS]
sfics = {FF0000}[JS] {FFFFFF}Зафиксированный игрок сброшен.
version = V.1.0
Dstap = {FFFFFF} Вы отменили действие
Devvk = {FF0000}vk.com/asavelyev3
global mode := 0
global doc := 0
global kmode := 0
global kdoc := 0

SetTimer, Dostup, 3000

;=========================================Приветствие=======================
AddChatMessage("{0000FF}==========={FF0000}Binder 8+ LVPD{0000FF}============")
AddChatMessage("{FFFFFF}Версия биндера: " version)
AddChatMessage("{FFFFFF}По всем вопросам писать в личные сообщения в {FF00FF}VK")
AddChatMessage(" " Devvk)
AddChatMessage("{FFFFFF}Подожди 3 секунды для проверки доступа к биндеру.")
AddChatMessage("{0000FF}==========={FF0000}Binder 8+ LVPD{0000FF}============")

;========================
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
IniRead, name, data/info.ini, USER, name
IniRead, akid, data/info.ini, USER, akid
IniRead, number, data/info.ini, USER, number
IniRead, rank, data/info.ini, USER, rank
IniRead, ot, data/info.ini, USER, ot
IniRead, pd, data/info.ini, USER, pd
Gui, font, s12 CDefault Bold, Arial
Gui Add, Text,  center x20 y3 w395 h35 +0x200 cRed, Binder for Police Department
Gui Add, Edit, x20 y40 w147 h27 vname1, %name%
Gui Add, Edit, x20 y90 w147 h27 vakid, %akid%
Gui Add, Edit, x20 y140 w147 h27 vnumber, %number%
Gui Add, Edit, x20 y190 w147 h27 vrank, %rank%
Gui Add, Edit, x20 y240 w147 h27 vot, %ot%
Gui Add, Edit, x20 y290 w147 h27 vpd, %pd%
Gui Add, Text, x183 y40 w183 h23 +0x200, Ник
Gui Add, Text, x183 y90 w183 h23 +0x200, Номер Аккаунта
Gui Add, Text, x183 y140 w183 h23 +0x200, Номер телефона
Gui Add, Text, x183 y190 w183 h23 +0x200, Ваше звание
Gui Add, Text, x183 y240 w183 h23 +0x200, Ваш тег
Gui Add, Text, x183 y290 w183 h23 +0x200, Ваш департамент
Gui Add, Text, x19 y408 w139 h23 +0x200, Addon
Gui Add, Button, x30 y330 w100 h23 gSave, Save
Gui Add, Button, x142 y330 w100 h23, Dopa 1
Gui Add, Button, x256 y330 w100 h23, Dopa 2
Gui Add, Button, x14 y371 w87 h23 gHelp, Help
Gui Add, Button, x114 y371 w87 h23 gClose, Close
Gui Add, Button, x214 y371 w87 h23 gReload, Reload
Gui Add, Button, x314 y371 w87 h23, Anti-Cheat

Gui Show, w422 h445, Binder for Police Department
Return


GuiEscape:
return

GuiClose:
    ExitApp
    
Help:
    Run https://vk.com/asavelyev3 ;Открывает указанную ссылку.
return

Close:
    MsgBox, 4, ВНИМАНИЕ!!!, Вы действительно хотите закрыть скрипт
    IfMsgBox, Yes
    {
        ExitApp
    }
    IfMsgBox, No
    {
        return
    }
return

Reload:
    Reload ;Перезагружает программу
return

Save:
Gui, submit, nohide
IniWrite, %name1%, %A_ScriptDir%/data/info.ini, USER, name
IniWrite, %akid%, %A_ScriptDir%/data/info.ini, USER, akid
IniWrite, %number%, %A_ScriptDir%/data/info.ini, USER, number
IniWrite, %rank%, %A_ScriptDir%/data/info.ini, USER, rank
IniWrite, %ot%, %A_ScriptDir%/data/info.ini, USER, ot
IniWrite, %pd%, %A_ScriptDir%/data/info.ini, USER, pd
MsgBox, 0, SAVE, Введённые вами данные сохранены.
Reload
return

;====================================================Проверка на доступ========================================
Dostup:
{
If (GetPlayerName() = "Johnny_Jones") {
    AddChatMessage("" js "{FFFFFF}У вас есть доступ к биндеру. Юзай на здоровье")
    IniWrite, -1, data/setting.ini, Fics, fid
    IniWrite, -1, data/setting.ini, Fics, fname
    SetTimer, Dostup, Off
    return
}
else if (GetPlayerName() = "Juliette_Dreamer") {
    AddChatMessage("" js "{FFFFFF}У вас есть доступ к биндеру. Юзай на здоровье")
    IniWrite, -1, data/setting.ini, Fics, fid
    IniWrite, -1, data/setting.ini, Fics, fname
    SetTimer, Dostup, Off
    return
}
else if (GetPlayerName() = "Victoria_Strife") {
    AddChatMessage("" js "{FFFFFF}У вас есть доступ к биндеру. Юзай на здоровье")
    IniWrite, -1, data/setting.ini, Fics, fid
    IniWrite, -1, data/setting.ini, Fics, fname
    SetTimer, Dostup, Off
    return
}
Else
{
	addchatmessage("{ffffff}У тебя нет доступа")
ExitApp
}
}


RButton & F3::
    SendMessage, 0x50,, 0x4190419,, A
    BlockChatInput()
    gid := f2id
    SendInput, {F6} Введите ID игрока: {space}
    Input,f2id,V,{Enter}
    gname := getPlayerNameById(f2id)
    ncol := getPlayerColorById(f2id)
    zvezda := getPlayerWantedsById(f2id)
    Sleep, 200
    AddChatMessage("{FF0000}[JS]{FFFFFF} Ты зафиксировал игрока Ник: " ncol " " gname ". (" zvezda ") ID:" f2id )
    IniWrite, %f2id%, data\setting.ini, Fics, fid
    IniWrite, %gname%, data\setting.ini, Fics, fname
    Sleep 500
    UnBlockChatInput()
return

:?*:/повыш::
:?*:/gjdsi::
:?*:/повыш:: 
IniRead, fid, data\setting.ini, Fics, fid
AddChatMessage("" js " {FFFF00}Выберите за что повысить:")
AddChatMessage("{FFFF00}[1] {00FFFF}Сдачу ЗР")
AddChatMessage("{FFFF00}[2] {00FFFF}Одобренный отчет")
AddChatMessage("{FFFF00}[0] {00FFFF}Отмена")
Input, cmd, V, {1}{2}{0}
    If (ErrorLevel="EndKey:1")
    {
        SendChat("/ранг " fid " 2")
        SendChat("![" ot "] Офицер @" fid " повышен до звания Сержант за успешную сдачу ЗР.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    }    
    If (ErrorLevel="EndKey:2")
    {
    BlockChatInput()
    SendMessage, 0x50,, 0x4190419,, A
    Sleep, 100
    SendInput,{F6} На какой ранг повысить?:{space}
    Input, pov, V, {enter}
    Sleep 200
    UnBlockChatInput()
if (pov = "3")
{
        SendChat("/ранг " fid " 3")
        SendChat("![" ot "] Офицер @" fid " повышен до звания Ст. Сержант за одобренный отчет на портале штата.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    return
}
if (pov = "4")
{
        SendChat("/ранг " fid " 4")
        SendChat("![" ot "] Офицер @" fid " повышен до звания Лейтенант за одобренный отчет на портале штата.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    return
}
if (pov = "5")
{
        SendChat("/ранг " fid " 5")
        SendChat("![" ot "] Офицер @" fid " повышен до звания Ст. Лейтенант за одобренный отчет на портале штата.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    return
}
if (pov = "6")
{
        SendChat("/ранг " fid " 6")
        SendChat("![" ot "] Офицер @" fid " повышен до звания Капитан за одобренный отчет на портале штата.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    return
}
if (pov = "7")
{
        SendChat("/ранг " fid " 7")
        SendChat("![" ot "] Офицер @" fid " повышен до звания Майор за одобренный отчет на портале штата.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    return
}
}
return

:?*:/пригл::
:?*:/ghbuk::
:?*:/пригл::
:?*:/ghbuk::
IniRead, fid, data\setting.ini, Fics, fid
AddChatMessage("{FFFF00}[1] {00FFFF}Принять на собеседовании")
AddChatMessage("{FFFF00}[2] {00FFFF}Принять по резюме")
AddChatMessage("{FFFF00}[0] {00FFFF}Отмена")
Input, cmd, V, {1}{2}{0}
    If (ErrorLevel="EndKey:1")
    {
        SendChat("/пригласить " fid)
        AddChatMessage("После того, как примет приглашение нажми {FFFF00}1")
        Input, cmd, V, {1}{2}
        If (ErrorLevel="EndKey:1")
        SendChat("![" ot "] @" fid " прошел опрос на собеседовании и был принят в ряды LVPA.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    }    
    If (ErrorLevel="EndKey:2")
    {
        SendChat("/пригласить " fid)
        AddChatMessage("После того, как примет приглашение нажми {FFFF00}1")
        Input, cmd, V, {1}{2}
        If (ErrorLevel="EndKey:1")
        SendChat("![" ot "] @" fid " прошел опрос по резюме и был принят в ряды LVPA.")
		Sleep 100
		SendMessage, 0x50,, 0x4190419,, A
		Sleep 250
		SendInput {F6}/pagesize 30{Enter}
		Sleep 200
		SendInput {F6}/time{Enter}
		Sleep 250
		SendInput {F8}
		Sleep 250
		SendInput {F6}/pagesize 10{Enter}
        return
    } 
If (ErrorLevel="EndKey:0")
    {
        AddChatMessage( dstap )
        return
    }
return
	
	
alt & p::
if (mode=0 and doc=0) {
addchatmessage("Режим неактивен!")
}
else if (mode=1 and doc=1) {
addchatmessage("1 режим 1 доклад")
doc=2
Sleep 10000
SoundPlay, data\uwedom.wav
Sleep 100
addchatmessage("пора кидать доклад")
}
else if (mode=1 and doc=2) {
addchatmessage("1 режим 2 доклад")
mode := 0
doc := 0
}
else if (mode=2 and doc=1) {
	var2 := """Казино"""
	SendChat("!" ot " Выезжаем на рейд " var2 )
	addchatmessage("Следующий доклад ALT + P")
	doc=2
}
else if (mode=2 and doc=2) {
	var2 := """Казино"""
	SendChat("!" ot " Прибыли на место проведения рейда " var2 )
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 10 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 10 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 600000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	doc=3
}
else if (mode=2 and doc=3) {
	var2 := """Казино"""
	SendChat("!" ot " Рейд " var2 ". Код 1")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 10 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 10 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 600000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	doc=4
}
else if (mode=2 and doc=4) {
	var2 := """Казино"""
	SendChat("!" ot " Сворачиваем рейд " var2 ". Возвращаемся в департамент")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=5
}
else if (mode=2 and doc=5) {
	var2 := """Казино"""
	SendChat("!" ot " Рейд " var2 " окончен. Всем спасибо за участие")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}Рейд окончен")
	mode := 0
	doc := 0
}
else if (mode=3 and doc=1) {
	var1 := """Карьер"""
	SendChat("!" ot " Выезжаем на рейд " var1 )
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}Следующий доклад ALT + P")
	doc=2
}
else if (mode=3 and doc=2) {
	var1 := """Карьер"""
	SendChat("!" ot " Прибыли на место проведения рейда " var1)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 10 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 10 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 600000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	doc=3
}
else if (mode=3 and doc=3) {
	var1 := """Карьер"""
	SendChat("!" ot " Рейд " var1 ". Код 1")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 10 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 10 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 600000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFF00}Пора кидать доклад")
	doc=4
}
else if (mode=3 and doc=4) {
	var1 := """Карьер"""
	SendChat("!" ot " Сворачиваем рейд " var1 ". Возвращаемся в департамент")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=5
}
else if (mode=3 and doc=5) {
	var1 := """Карьер"""
	SendChat("!" ot " Рейд " var1 " окончен. Всем спасибо за участие")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}ейд окончен")
	mode := 0
	doc := 0
}
else if (mode=4 and doc=1) {
	var3 := """Автосалон СФ"""
	SendChat("!" ot " Выезжаем на рейд " var3 )
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}Следующий доклад ALT + P")
	doc=2
}
else if (mode=4 and doc=2) {
	var3 := """Автосалон СФ"""
	SendChat("!" ot " Прибыли на место проведения рейда " var3)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 10 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 10 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 600000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	doc=3
}
else if (mode=4 and doc=3) {
	var3 := """Автосалон СФ"""
	SendChat("!" ot " Рейд " var3 ". Код 1")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 10 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 10 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 600000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=4
}
else if (mode=4 and doc=4) {
	var3 := """Автосалон СФ"""
	SendChat("!" ot " Сворачиваем рейд " var3 ". Возвращаемся в департамент")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=5
}
else if (mode=4 and doc=5) {
	var3 := """Автосалон СФ"""
	SendChat("!" ot " Рейд " var3 " окончен. Всем спасибо за участие")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}Рейд окончен")
	mode := 0
	doc := 0
}
else if (mode=5 and doc=1) {
	var := """Мэрия ЛВ"""
	SendChat("!" ot " Выезжаем на первую точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}После прибытия на точку нажми ALT + P")
	doc=2
}
else if (mode=5 and doc=2) {
	var := """Мэрия ЛВ"""
	SendChat("!" ot " Прибыли на первую точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 5 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 5 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 300000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=3
}
else if (mode=5 and doc=3) {
	var := """Грузовики"""
	SendChat("!" ot " Выезжаем на вторую точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}После прибытия на точку нажми ALT + P")
	doc=4
}
else if (mode=5 and doc=4) {
	var := """Грузовики"""
	SendChat("!" ot " Прибыли на вторую точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 5 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 5 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 300000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=5
}
else if (mode=5 and doc=5) {
	var := """Рыбалка ЛВ"""
	SendChat("!" ot " Выезжаем на третью точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}После прибытия на точку нажми ALT + P")
	doc=6
}
else if (mode=5 and doc=6) {
	var := """Рыбалка ЛВ"""
	SendChat("!" ot " Прибыли на третью точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 5 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}осле того, как пройдет 5 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 300000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=7
}
else if (mode=5 and doc=7) {
	var := """Мотель"""
	SendChat("!" ot " Выезжаем на четвертую точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}После прибытия на точку нажми ALT + P")
	doc=8
}
else if (mode=5 and doc=8) {
	var := """Мотель"""
	SendChat("!" ot " Прибыли на четвертую точку " var)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	Addchatmessage("{FFFF00}Следующий доклад через 5 минут. На это время все доклады заблокированы")
	Addchatmessage("{FFFF00}После того, как пройдет 5 минут поступит звуковое уведомление")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	Sleep 300000
	SoundPlay, data\uwedom.wav
	Sleep 100
	addchatmessage("{FFFFFF}Пора кидать доклад")
	Addchatmessage("{FFFF00}Для следующего доклада нажми Alt + P")
	doc=9
}
else if (mode=5 and doc=9) {
	var := """По точкам"""
	SendChat("!" ot " Сворачиваем рейд " var ". Возвращаемся в департамент")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}После прибытия на точку нажми ALT + P")
	doc=10
}
else if (mode=5 and doc=10) {
	var := """По точкам"""
	SendChat("!" ot " Рейд " var " окончен. Всем спасибо за участие")
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
	addchatmessage("{FFFF00}Рейд окончен")
	mode := 0
	doc := 0
}
else if (mode=6 and doc=1) {
	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}Введи состав:{space}
	Input, sost, V, {enter}
	Sleep 200
	IniWrite, %sost%, %A_ScriptDir%\data\setting.ini, Fics, sostav
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " Выезжаем на место проведения общего КБ. Состав: " sostav)
	doc=2
}
else if (mode=6 and doc=2) {
	IniRead, sostav, data\setting.ini, Fics, sostav
	SendChat("!" ot " Прибыли на место проведения общего КБ. Состав: " sostav)
	doc=3
}
else if (mode=6 and doc=3) {
	SendChat("!" ot " Начали проводить общее КБ")
	doc=4
}
else if (mode=6 and doc=4) {
 	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}Победила команда:{space}
	Input, pob, V, {enter}
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " Закончили проводить общее КБ. Победила команда " pob)
	mode := 0
	doc := 0
}
return

	

alt & k::
if (kmode=0 and kdoc=0) {
addchatmessage("Режим неактивен!")
}
else if (kmode=1 and kdoc=1) {
addchatmessage("1 режим 1 доклад")
kdoc=2
}
else if (kmode=1 and kdoc=2) {
addchatmessage("1 режим 2 доклад")
kmode := 0
kdoc := 0
}
return
	
:?:/полигон::
mode := 1
doc := 1
addchatmessage("Режим полигон активен!!")
return

:?:/рейд::
:?:/htql::
:?:/htql::
:?:.рейд::
IniRead, ot, data/info.ini, USER, ot
var1 := """Карьер"""
var2 := """Казино"""
var3 := """Автосалон СФ"""
var4 := """По точкам"""
AddChatMessage( "{ADFF2F} Место проведения рейда")
AddChatMessage("{EE82EE} [1] Карьер")
AddChatMessage("{EE82EE} [2] Казино")
AddChatMessage("{EE82EE} [3] Автосалон")
AddChatMessage("{EE82EE} [4] По точкам")
AddChatMessage("{EE82EE} [0] Отмена")
Input, cmd, v, {1}{2}{3}{4}{0}
if (ErrorLevel="EndKey:1") {
	SendInput,{F6}{!}%ot% Построение в гараже для проведения рейда %var1%
	AddChatMessage("Для доклада о выезде нажми Alt + P")
	mode := 2
	doc := 1
	return
}
if (ErrorLevel="EndKey:2") {
	SendInput,{F6}{!}%ot% Построение в гараже для проведения рейда %var2%
	AddChatMessage("Для доклада о выезде нажми Alt + P")
	mode := 3
	doc := 1
	return
}
if (ErrorLevel="EndKey:3") {
	SendInput,{F6}{!}%ot% Построение в гараже для проведения рейда %var3%
	AddChatMessage("Для доклада о выезде нажми Alt + P")
	mode := 4
	doc := 1
	return
}
if (ErrorLevel="EndKey:4") {
	SendInput,{F6}{!}%ot% Построение в гараже для проведения рейда %var4%
	AddChatMessage("Для доклада о выезде нажми Alt + P")
	mode := 5
	doc := 1
}
If (ErrorLevel="EndKey:0")
    {
        AddChatMessage( dstap )
        return
    }
return

:?:/наказ::
:?:.наказ::
:?:/yfrfp::
:?:/yfrfp::
IniRead, ot, data/info.ini, USER, ot
IniRead, fid, data\setting.ini, Fics, fid
AddChatMessage( "{ADFF2F} Меню наказаний")
AddChatMessage("{EE82EE} [1] Беседа")
AddChatMessage("{EE82EE} [2] Наряд")
AddChatMessage("{EE82EE} [3] Выговор")
AddChatMessage("{EE82EE} [4] Понижение")
AddChatMessage("{EE82EE} [5] Увольнение")
AddChatMessage("{EE82EE} [0] Отмена")
Input, cmd, v, {1}{2}{3}{4}{5}{0}
if (ErrorLevel="EndKey:1") {
	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}За что назначить беседу:{space}
	Input, uk, V, {enter}
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " Офицеру @" fid " назначена беседа за нарушение " uk)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
}
if (ErrorLevel="EndKey:2") {
	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}За что выдать наряд:{space}
	Input, uk, V, {enter}
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " @" fid " получает наряд за нарушение " uk)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
}
if (ErrorLevel="EndKey:3") {
	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}За что выдать выговор:{space}
	Input, uk, V, {enter}
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " @" fid " получает выговор за нарушение " uk)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
}
if (ErrorLevel="EndKey:4") {
	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}За что выдать выговор:{space}
	Input, uk, V, {enter}
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " @" fid " понижен в звании за нарушение " uk)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
}
if (ErrorLevel="EndKey:5") {
	BlockChatInput()
	SendMessage, 0x50,, 0x4190419,, A
	Sleep, 100
	SendInput,{F6}За что выдать выговор:{space}
	Input, uk, V, {enter}
	Sleep 200
	UnBlockChatInput()
	SendChat("!" ot " @" fid " уволен из LVPD за нарушение " uk)
	Sleep 1000
	SendChat("/уволить " fid)
	Sleep 100
	SendMessage, 0x50,, 0x4190419,, A
	Sleep 250
	SendInput {F6}/pagesize 30{Enter}
	Sleep 200
	SendInput {F6}/time{Enter}
	Sleep 250
	SendInput {F8}
	Sleep 250
	SendInput {F6}/pagesize 10{Enter}
	Sleep 1000
}
If (ErrorLevel="EndKey:0")
    {
        AddChatMessage( dstap )
        return
    }
return

:?:/r,::
:?:/r,::
:?:.кб::
:?:/кб::
IniRead, ot, data/info.ini, USER, ot
SendInput,{F6}{!}%ot% Построение в гараже для проведения КБ между LSPD, SFPD
AddChatMessage("Для доклада о выезде нажми Alt + P")
mode := 6
doc := 1
return
