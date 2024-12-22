local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3

return {
	description = {
		identifier = "tapir"
	},
	components = {
		hs_object = {
			model = "tapir",

			-- 1:1 copy of Alpaca data
			props = {
				projectileAimHeightOffsetMeters = 1.5,
				hasPhysics = false,
				ignoreBuildRay = true,
				markerPositions = {
					{ 
						worldOffset = vec3(0.0, mj:mToP(1.8), 0.0)
					}
				},
			}
		},
		hs_mob = {
			dead_object = "deadAlpaca", -- TODO
			animation_group = "tapir",
			object_set = "tapir",

			-- emulate_client_ai = true,
			-- emulate_server_ai = true,

			props = {
				initialHealth = 3.9,
				spawnFrequency = 1.0,
				spawnDistance = mj:mToP(400.0),
		
				reactDistance = mj:mToP(50.0),
				agroDistance = mj:mToP(5.0),
				runDistance = mj:mToP(30.0),
				minSapienProximityDistanceForSpawning = mj:mToP(50.0),

				agroTimerDuration = 5.0,
				aggresionLevel = nil,
		
				pathFindingRayRadius = mj:mToP(0.6),
				pathFindingRayYOffset = mj:mToP(1.0),


				walkSpeed = mj:mToP(0.5),
				
				runSpeedMultiplier = 4.0,
				rotationSpeedMultiplier = 1.5,
				
				infrequentUpdatePeriod = 4.0, --default of 5.0, but mobs that move quickly need to be updated more frequently. Must be called every 4.5 meters of movement to avoid pauses.

				embedBoxHalfSize = vec3(0.3,0.2,0.5),
				
				maxSoundDistance2 = mj:mToP(200.0) * mj:mToP(200.0),
				soundVolume = 0.2,
				soundRandomBaseName = "alpaca",
				soundRandomBaseCount = 2,
				soundAngryBaseName = "alpacaAngry",
				soundAngryBaseCount = 1,
				deathSound = "alpacaAngry1",
				
				pooFrequencyDays = 4,
				pooQuantity = 1,
		
				maxHunterAssignCount = 5,
				isSimpleSmallRockHuntType = false,
				
				idleAnimations = {
					"stand1",
					"stand2",
					"stand3",
					"stand4",
					"sit1",
					"sit2",
				},
		
				sleepAnimations = {
					"sit1",
					"sit2",
				},
				
				runAnimation = "trot",
				deathAnimation = "die",
			}
		}
	}
}