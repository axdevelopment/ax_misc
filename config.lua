AX = AX or {}
-- NOTIFICATION ------------------------------------------------
AX.okokNotify       					= false                    		-- FALSE = ESX.SHOWNOTIFICATION    
-- STAMINA -----------------------------------------------------
AX.InfStamina      				    	= false                    		-- FALSE = STAMINA / TRUE = INFINITE STAMINA   
-- REPLACE HUD COLOR -------------------------------------------
AX.ReplaceHudColour      		    		= true                    		-- FALSE = DEFAULT GTA HUD COLOR
AX.HudColour                        			= 222                                   -- https://docs.fivem.net/docs/game-references/hud-colors/
-- DISABLE DEFAULT GTA HUD -------------------------------------
AX.HideGTAHud                       			= true
-- AMMO CLIP ---------------------------------------------------
AX.ClipSize 						= 40					-- MAGAZINE SIZE
AX.ClipTime 						= 1800					-- USAGE DURATION
AX.ClipPBLabel 						= ''                      		-- TEXT INSIDE PROGRESSBAR / LEAVE '' IF YOU DON'T WANT A TEXT
AX.ClipCanCancel 					= false					-- TRUE = CAN CANCEL / FALSE = CAN'T CANCEL USAGE
AX.ClipDisableMovement 					= false					-- FREEZE PLAYER WHILE USING ITEM
AX.ClipAnimDict						= "weapons@pistol_1h@pistol_1h_str"	-- ANIMATION WHILE USING - ANIMATION DICTIONARY
AX.ClipAnim 						= "reload_aim"                          -- ANIMATION WHILE USING
AX.ClipProp  						= "w_pi_vintage_pistol_mag1"	  	-- PROP WHILE USING / nil IF YOU DON'T WANT A PROP
AX.ClipNotifyText                   			= "You filled up your magazine!"        -- NOTIFY TEXT AFTER USING ITEM
AX.ClipErrorText                    			= "You don't have any weapon equipped!" -- NOTIFY TEXT IF PLAYER DOES NOT HOLD ANY WEAPON IN THEIR HANDS
-- AMMO BOX ----------------------------------------------------                         
AX.BoxClipSize 						= 120					  			
AX.BoxClipTime 						= 8000					  			
AX.BoxClipPBLabel 					= ''                      			
AX.BoxClipCanCancel 					= true					  			
AX.BoxClipDisableMovement 				= false					  			
AX.BoxClipAnimDict					= "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
AX.BoxClipAnim 						= "machinic_loop_mechandplayer"
AX.BoxClipProp  					= "prop_ld_ammo_pack_03"	  	    
AX.BoxClipNotifyText                			= "You filled up your magazine with an ammo box!"
AX.BoxClipErrorText                 			= "You don't have any weapon equipped!"
-- BULLETPROOF VEST --------------------------------------------
AX.BulletproofArmor 					= 100					-- AMOUNT ARMOR TO ADD TO THE PLAYER (0-100)
AX.BulletproofTime 					= 7500					  			
AX.BulletproofPBLabel 					= ''                      			
AX.BulletproofCanCancel 				= true					  			
AX.BulletproofDisableMovement 				= false					  			
AX.BulletproofAnimDict					= "missmic4"			  			
AX.BulletproofAnim 					= "michael_tux_fidget"				
AX.BulletproofProp  					= "prop_armour_pickup"	  			
AX.BulletproofNotifyText           			= "You used 1x bulletproof vest"
-- MEDIKIT -----------------------------------------------------            			-- GIVES 100 HP TO THE PLAYER
AX.MedikitTime 						= 7500                              
AX.MedikitPBLabel 					= ''
AX.MedikitCanCancel 					= true
AX.MedikitDisableMovement 				= false
AX.MedikitAnimDict					= "missmic4"
AX.MedikitAnim 						= "michael_tux_fidget"
AX.MedikitProp  					= "prop_ld_health_pack"
AX.MedikitNotifyText               			= "You used 1x medikit"
-- BANDAGE 'BANDAGE' -------------------------------------------
AX.BandageHealth 					= 30                                    -- AMOUNT HP TO ADD TO THE PLAYER (0-100) 
AX.BandageTime 						= 4000
AX.BandagePBLabel 					= ''
AX.BandageCanCancel 					= true
AX.BandageDisableMovement				= false
AX.BandageAnimDict					= "missmic4"
AX.BandageAnim 						= "michael_tux_fidget"
AX.BandageProp  					= "prop_ducktape_01"
AX.BandageNotifyText                			= "You used 1x bandage"
-- WEAPONDAMAGE ------------------------------------------------            			-- CHANGE THE DAMAGE MULTIPLIER (1.0 = 100% GTA DEFAULT DAMAGE)
AX.Weapondamage                     			= false
AX.Unarmed    	                    			= 0.8
AX.Bottle                           			= 0.5
AX.Bat                              			= 0.5
AX.Golfclub                         			= 0.5
AX.Hammer                           			= 0.5
AX.Wrench                           			= 0.5
AX.Poolcue                          			= 0.5
AX.Crowbar                          			= 0.5
AX.Flashlight                       			= 0.5
AX.Smokegrenade                     			= 0.0
AX.BZGas                            			= 0.1
AX.Nightstick                       			= 0.8
AX.Pistol                           			= 0.8
AX.PistolMK2                        			= 0.8
AX.Pistol50    	                    			= 0.8
AX.APPistol                         			= 0.6
AX.DoubleAction                     			= 0.4
AX.Revolver                         			= 0.8
AX.Pumpshotgun                      			= 0.5
AX.PumpshotgunMK2                   			= 0.8
AX.DBShotgun                        			= 0.4
AX.Combatshotgun                    			= 0.8
AX.MicroSMG                         			= 0.8
AX.SMG                              			= 0.8
AX.CombatPDW                        			= 0.8
AX.Compactrifle                     			= 0.8
AX.Gusenberg                        			= 0.7
AX.Bullpuprifle                     			= 0.8
AX.Advancedrifle                    			= 0.8
AX.Assaultrifle                     			= 0.8
AX.Carbinerifle                     			= 0.8
AX.CarbinerifleMK2                  			= 0.8
AX.Specialcarbine                   			= 0.8
AX.SpecialcarbineMK2                			= 0.75
AX.Militaryrifle                    			= 0.8
AX.Marksmanrifle                    			= 0.7
AX.Sniperrifle                      			= 0.7
AX.Heavysniper                      			= 0.8
AX.Tacticalrifle                    			= 0.7
AX.Precisionrifle                   			= 0.8      
	  
	  
      
      
