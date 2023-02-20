Config                 = {}
Config.DrawDistance    = 10.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6
Config.Locale          = 'en'

Config.Prices = {
	dmv         = 500,
	drive       = 2500,
	drive_bike  = 3000,
	drive_truck = 5000
}

Config.VehicleModels = {
	drive       = 'viper',
	drive_bike  = 'sanchez',
	drive_truck = 'mule3'
}

Config.SpeedLimits = {
	residence = 50,
	town      = 80,
	freeway   = 120
}

Config.Zones = {

	DMVSchool = {
		Pos   = {x = 239.471, y = -1380.960, z = 33.741},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 174, g = 3, b = 3},
		Type  = 36
	},

	VehicleSpawnPoint = {
		Pos   = {x = 249.409, y = -1407.230, z = 30.4094, h = 317.0},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 174, g = 3, b = 3},
		Type  = -1
	}

}

Config.CheckPoints = {

	{
		Pos = {x = 255.139, y = -1400.731, z = 30.537},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod, maximální rychlost je zde: 50 KM/H', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 271.874, y = -1370.574, z = 31.932},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 234.907, y = -1345.385, z = 30.542},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			CreateThread(function()
				lib.notify({title = 'Autoškola', description = 'Počkejte než přejdou občani přes přechod', type = 'inform', position = 'top'})
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Wait(4000)

				FreezeEntityPosition(vehicle, false)
				lib.notify({title = 'Autoškola', description = 'Můžeme pokračovat', type = 'inform', position = 'top'})
			end)
		end
	},

	{
		Pos = {x = 217.821, y = -1410.520, z = 29.292},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			setCurrentZoneType('town')

			CreateThread(function()
				lib.notify({title = 'Autoškola', description = 'Jeďte na další bod, maximální rychlost je zde: 80 KM/H', type = 'inform', position = 'top'})
				PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
				FreezeEntityPosition(vehicle, true)
				Wait(6000)

				FreezeEntityPosition(vehicle, false)
				DrawMissionText(_U('good_turn_right'), 5000)
			end)
		end
	},

	--nova trasa odtud

	{
		Pos = {x = 183.47, y = -1395.45, z = 29.26},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Sledujte dopravní značení', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 226.81, y = -1324.56, z = 29.27},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 324.31, y = -1322.07, z = 32.11},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Počkejte než přejdou občani přes přechod', type = 'inform', position = 'top'})
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = 432.69, y = -1420.31, z = 29.26},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 336.54, y = -1494.81, z = 29.27},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod', type = 'inform', position = 'top'})
		end
	},

	--Parkovani
	{
		Pos = {x = 245.55, y = -1538.76, z = 29.28},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Zde zaparkujeme na parkovací místo', type = 'inform', position = 'top'})
		end
	},

	--Parkovaci misto
	{
		Pos = {x = 230.53, y = -1536.29, z = 29.26},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Úspěšně jste zaparkoval, tento test vypadá nadějně, nyní vyjedeme z parkoviště', type = 'inform', position = 'top'})
		end
	},

	--Vyjezd z parkoviste
	{
		Pos = {x = 265.12, y = -1494.11, z = 29.22},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 253.72, y = -1451.09, z = 29.34},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Počkejte než přejdou občani přes přechod', type = 'inform', position = 'top'})
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			FreezeEntityPosition(vehicle, true)
			Wait(6000)
			FreezeEntityPosition(vehicle, false)
		end
	},

	{
		Pos = {x = 223.38, y = -1414.65, z = 29.3},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Jeďte na další bod', type = 'inform', position = 'top'})
		end
	},

	{
		Pos = {x = 240.13, y = -1403.96, z = 30.59},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			lib.notify({title = 'Autoškola', description = 'Zaparkujte na parkovišti', type = 'inform', position = 'top'})
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
		end
	},

	{
		Pos = {x = 240.41, y = -1413.95, z = 30.59},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}
