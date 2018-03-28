-- ==========================================================================
-- \file     @DEADCHANNEL_SCRIPT.lua
-- \brief    Script for calling global variables, mostly to avoid redundancy
-- \ver      0.0.4
-- \author   Roah Nosh
-- \twitter  @DEADCHANNEL_
-- \reddit   koiL90
-- ==========================================================================

Core.RequireScript( "script/sequence.lua" )

--[[ Check the config.lua ]]
function mayo_config( var )
	local r = {
		"Non-Existent Non-Resource",
		MAYO_INI_REQ_ID,
		MAYO_INI_REQ_COUNT,
		"ID_MOB_NAM_J2A_CRAZ",
		9999999, --Sentence, not persistent, data is not saved
		"RES_20160", --Token
		1,
		MAYO_INI_MENU_ENTER,
		MAYO_INI_MENU_CANCEL,
		"#¹¹·Mana “Indispensable” ¬²·¹·³·]",
		"9,999,999",
		"5912:26",
		"31,985",
		"587,467",
		1,
		336,
		"108,841",
		"goo.gl/BPcLzg", --Rapsheet
		MAYO_INI_LOG_TYPE,
		MAYO_INI_LANG,
		MAYO_INI_MENU_CONFIRM,
		MAYO_INI_TITLE_IDLE,
		MAYO_INI_TITLE_IDLE_ROUSE,
		MAYO_INI_TITLE_FOVY,
		"@DEADCHANNEL_",
		"https://bitbucket.org/roahN/opsagentmayo",
		MAYO_INI_REQ,
		MAYO_INI_ANIM_HANDOVER,
		MAYO_INI_TITLE,
		MAYO_INI_TITLE_MONITOR,
		"Title001", --Player position, title screen
		"goo.gl/ciGorn", --Channel
		"goo.gl/wB4Q7F", --Video
		"goo.gl/rpuCpT", --Role Model Sinner
	}
	return r[var]
end

--[[ Icon tables ]]
function mayo_icons( var )
	local r = {
		"<#MAP_ABDUCTOR_E>", --Large abductor
		"<#MAP_ABDUCT_CAUTION>", --Abductor caution
		"<#MAP_ABDUCT_DANGER>", --Abductor danger
		"<#MAP_ENEMY>", --Sinners
		"<#MAP_ENEMY_TINY>", --Tiny abductors
		"<#MAP_CIVILIAN>", --Civilian
		"<#MAP_POD_A>", --Civilian pod blue
		"<#MAP_POD_E>", --Civilian pod red
		"<#MAP_GOAL>", --Exit
		"<#MAP_FLAG>", --Flag white
		"<#MAP_FLAG_A>", --Flag blue
		"<#MAP_FLAG_E>", --Flag red
		"<#MAP_BEACON_ON>", --Beacon green
		"<#MAP_BEACON_OFF>", --Beacon grey
		"<#MAP_AMMO>", --Bullet
		"<#LOCKON_RED>", --dup
		"<#LOCKON_BLUE>", --dup
		"<#LOCKON_YELLOW>", --dup
		"<#ELEMENT_FIRE>",
		"<#ELEMENT_ICE>",
		"<#ELEMENT_THUNDER>",
		"<#ELEMENT_WILL-O>",
		"<#WILLO_CHARGE_GAUGE>", --Ibara gauge full-charged
		"<#WILLO_NOT_CHARGED>", --Ibara gauge no-charge
		"<#MENU_LINEWARNING>", --Low quality internet
		"<#MENU_CHAT>", --Chat bubble
		"<#MENU_TXTCHAT>", --Chat icon
		"<#MENU_EMOCHAT>", --Emoticon
		"<#ADV_MAIN_N>", --Warning circular yellow
		"<#MENU_VSWAIT>", --PVP wait challenge
		"<#MENU_REVENGE>", --PVP revenge
		"<#MENU_TRAP>", --Warning blue
		"<#MENU_SERVICEMARK>", --SM (Ragequit mark)
		"<#MENU_DISCONNECT>", --Warning inverted triangle yellow
		"<#BLOW>", --Melee weapon
		"<#SHOOT>", --Gun weapon
		"<#WEAPON_RIFLE>", --Rifle
		"<#MENU_REGISTERED_SF>", --Registered trademark icon (®)
		"<#MENU_STAR_orange>", --Yellow star
		"<#BHUD_RESOURCE_F>", --Resources
		"<#MENU_MIDDLE_DOT>", --List
		"<#LOCKON_RED>", --Severable component
		"<#LOCKON_BLUE>", --Pod
		"<#LOCKON_YELLOW>", --Component vulnerable to dragdown
		"<#BHUD_TICKET_A>", --Sustainability
		"<#KEY_DECIDE>",
		"<#CLASS_HOLD>",
		"<#CLASS_RECOVER>",
		"<#CLASS_GURD>",
	}
	return r[var]
end

--[[ Initialize character ]]
function mayo_init( var )
	if var == "civ01" then
		mayo_id = "CIV99"
		mayo_loc = "JNK01_CIV01_0201"
	elseif var == "title" then
		if mayo_config( 29 ) == true then
			Core.RequireScript( "situ/story/@DEADCHANNEL_/@DEADCHANNEL_TITLE.lua" )
		elseif mayo_config( 29 ) == false then
			Core.RequireScript( "situ/story/CMN/title2.lua" )
		end
	else
		mayo_id = "J2A_CRAZ"
		mayo_loc = "JNK00_J2A_CRAZ_01"
	end
end

--[[
	Menu sound effects

	@type
		@Enter
		@Cancel
		@Confirm
]]
function MayoSoundSE( type )
	if type == "Enter" then
		Sound.PlaySystemSE( mayo_config( 8 ) )
		Sound.WaitSE()
	elseif type == "Cancel" then
		Sound.PlaySystemSE( mayo_config( 9 ) )
		Sound.WaitSE()
	elseif type == "Confirm" then
		Sound.PlaySystemSE( mayo_config( 21 ) )
		Sound.WaitSE()
	end
end

--[[
	Animations

	@MAYO_INI_ANIM_HANDOVER
		@type
			@MayoToPlayer - Give/take animation
			@PlayerToMayo - Give/take animation
]]
function MayoAnim( type )
	if mayo_config( 28 ) == true then
		if type == "MayoToPlayer" then
			Chara.ChangeAction( mayo_id, "Give" )
			Chara.ChangeAction( "Player", "Take" )
		elseif type == "PlayerToMayo" then
			Chara.ChangeAction( "Player", "Give" )
			Chara.ChangeAction( mayo_id, "Take" )
		end
	end
end

--[[
	Check for item requirement then proceed to page based on result

	@MAYO_INI_REQ
		@true - When item check is successful then redirect to the page based on @type
			@yes - Check NENR successful so redirect to the appropriate page
			@no - Check NENR failed so redirect to the appropriate page
		@false - Skip item check
			@redirect - Overrides the 'yes/no' redirection
]]
function MayoCheckRequirement( yes, no, redirect )
	if mayo_config( 27 ) == true then
		BranchItems( mayo_config( 2 ), mayo_config( 3 ), yes, no )
	elseif mayo_config( 27 ) == false then
		BranchItems( mayo_config( 2 ), mayo_config( 3 ), redirect, redirect )
	end
end

--[[ Load config file ]]
Core.RequireScript( "config.lua" )

--[[ Load the language file ]]
Core.RequireScript( "text/lang/"..mayo_config( 20 )..".lua" )
