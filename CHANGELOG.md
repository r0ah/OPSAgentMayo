# Changelog #

All notable changes to this project will be documented in this file.

***

## 0.0.1 - 2017-06-19 ##

	- Initial, Solja test dialogs on location mob_C_01
	- Moved NPC to position mob_A_00 for easy access because the position mob_C_01 lags a lot
	- Added dialog branches
	- Added play music, combat item and resources
	- Added citizens, keys and others
	- Changed name to OPS Agent Mayo
	- Refined the NPC styling
	- Implemented changeactions
	- NPC now moves from mob_A_00 to mob_A_09 and back again
	- Removed animation TurnR90 and TurnL90 because Restore doesn't support it
	- Moved some text to the lmsg database
	- Text to lmsg aborted, too troublesome
	- Added goodbye randomtalk
	- Added the Mayo category. Also Weekly Percy Propa info
	- Added title, no with close up of the sinner in idle4
	- Added Simeon' rank 1 weapons
	- Added an Accessory reputation check
	- Now with infolog (tiangle button, all category) reclaiming items, also the game auto-saves
	- Implemented Non-Existent Non-Resource x1 as a payment check for the NPC services
	- Added the Mayo token of gratitude
	- Fixed translation error, carryable ammo and clip size fixed
	- Revamped the General Field resources description. Now shorter with icons and highlights for easy weapon modification.
	- Added a choice on how much to claim (100, 200, 500 and 999)
	- NPC weapons, melee and pistol types (not late bloomer because don't know how)
	- Added entitlement points and some minor fixes
	- Added fonts
	- Added server's pt_list.txt, pm_monitor.png and ptnm_common.png just in case someone wants to customize the liberty window
	- Move text to a lua file
	- Refined dialogues
	- Removed pt_list.txt and ptnm_common.png
	- Added config camera fovy for tall (height 10) characters

## 0.0.2 - 2017-06-22 ##

	- Very minor revisions, added quicklink to Percy Propa Vol.5 entry
	- Cleaned comments
	- Removed dialogue about Abel
	- Reduced redundancy of EN.lua
	- Added table for icons
	- Removed <#player> tag in the infolog
	- Replaced all { UI.UserTalk } with { UI.OpenMenuDialog } for the Percy Propa Weekly dialogues
	- Added Percy Propa Weekly Vol 6

## 0.0.3 - 2017-06-26 ##

	- Toned down Mayo's narcissistic tendencies
	- Services item requirement can now be disabled
	- The animation "give/take" can now be disabled
	- Added some repeating codes to script to reduce redundancy
	- Cleaned up config.lua
	- Idle list added to readme
	- Fixed reputation infolog
	- Title screen can now be set to custom screen or the default lame sit position
	- Liberty window's content and player position added to config.lua
	- Fixed pistol dialogue
	- Added Augmentations and Proof of Non-Failures
	- Added a menu that activates camera function showing the location of the Gasoline Station
	- Fixed camera activation for gasoline
	- Minor revision

## 0.0.4 - 2017-07-07 ##

	- Fixed the looping #10 SE that persist in any map, a huge annoyance
	- Minor revision to reputation, entitlement and  percy propa lottery
	- Added new icons and some minor revision to 'MayoCheckRequirement' function description
	- Fixed all weapon names so each can be sorted or arranged as intended. Also, added the missing NPC weapon names.
	- Arranged weapon description. Used the box's full potential so no more scrolling but the text will appear smaller. No problem, who reads it anyway?
	- Rearranged weapon descriptions. The text are just too small for some entries.
	- Added const.lua

## 0.0.4 R1 ##

	- Removed text/format because it disables the JP's font DF-Renga-W9.ttc which is very distinctive
	- Fixed text/lang/EN.lua special characters for the NPC weapon names
	- Julien's Notes can only be claimed after you finish your sentence (note: with propa confirmation). Sorry, just tested JP and can't find resource. Maybe bad RNG but... weird because when I used { Scenario.RemoveItem, "KEY_2023", 1 } the resource actually appeared on 1-E020! I guess the flag is only raised when you pick it up. I could add the flag but too troublesome so this change is implemented instead.
	- Fixed a UPD_MNT.lmsg dialogue. Instead of printing the word "Sinner" JP displays it as the player's name.