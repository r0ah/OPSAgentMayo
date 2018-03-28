# README #

![2017-07-15-121102.png](https://bitbucket.org/repo/64zqk5A/images/1542419834-2017-07-15-121102.png "Custom Title Screen")

A simple Freedom Wars mod. Adds a new NPC character that can do many things. Requires **1 piece of Non-Existent Non-Resource** which can be found on the lower levels of the Citizen Promenade and Cell Garden.

The Play Music is not persistent. If you exit hub the BGM will stop. However, this feature is very useful online specially while waiting for co-op partners.

Mod tested with the US and JP versions.

***

## 0.0.4 - 2017-07-07 ##

* Fixed the looping #10 SE that persist in any map, a huge annoyance
* Minor revision to reputation, entitlement and  percy propa lottery
* Added new icons and some minor revision to 'MayoCheckRequirement' function description
* Fixed all weapon names so each can be sorted or arranged as intended. Also, added the missing NPC weapon names.
* Arranged weapon description. Used the box's full potential so no more scrolling but the text will appear smaller. No problem, who reads it anyway?
* Rearranged weapon descriptions. The text are just too small for some entries.
* Added const.lua

## 0.0.4 R1 ##

* Removed text/format because it disables the JP's font DF-Renga-W9.ttc which is very distinctive
* Fixed text/lang/EN.lua special characters for the NPC weapon names
* Julien's Notes can only be claimed after you finish your sentence (note: with propa confirmation). Sorry, just tested JP and can't find resource. Maybe bad RNG but... weird because when I used { Scenario.RemoveItem, "KEY_2023", 1 } the resource actually appeared on 1-E020! I guess the flag is only raised when you pick it up. I could add the flag but too troublesome so this change is implemented instead.
* Fixed a UPD_MNT.lmsg dialogue. Instead of printing the word "Sinner" JP displays it as the player's name.
* ...Refer to the changelog for more details

## Installation ##

This mod requires the latest patch per version. The US requires **Patch 1.22** while the JP version requires **Patch 1.23** and the **ENPatch** _(refer to the downloads section)_.

### US ###

To install simply extract archive using WinRAR or 7Zip and copy the extracted files to _ux0:app/PCSA00147/**patch_v0121**_.

### JP ###

* First you have to download the ENPatch. Check the download section for the link.
* Extract ENPatch using WinRAR or 7Zip
* Copy the extracted files to _ux0:app/PCSC00054/**patch_v0120**_
* Once copying is finished, delete the following files:
    * patch_v0120_cmn.eaf
    * patch_v0120_jpn.eaf
    * patch_v0120_rgn_japan.eaf
* Next is to install the OPSAgentMayo mod, extract and copy the mod files to the same location _ux0:app/PCSC00054/**patch_v0120**_. It is very important that you overwrite the existing files.

_Installation for the JP version is a bit complicated compared to the US version. To install the mod you first have to download the ENPatch or it wouldn't work simply because the game will always prioritize the EAF (archived file) over the loose files which this mod is composed of. The latest patch for JP is 1.23 and the folder **patch_v0120** contained a file called **cmn.eaf**. A CMN is like a master file so pasting the mod file into that folder won't work. Like I said, the game will always load the EAF file (if the file exist in the archive) over the loose file._

_Also, for those wondering why the need to delete the 3 EAF file. The answer is, all the files contained within the 3 EAFs have been extracted and compiled as one big loose files. Sorry if this is not coherent, english is not my first language._

### EU ###

I don't know about EU. I don't have that version so I can't test it. The game will always prioritize the EAF files over the loose files so unless I can check the EU file structure I can't say for certain that this mod will work.

## NPC Location ##

The OPS Agent NPC can be found in the Warren Hub (front of the billboard). NPC is also available online co-op where Jiro is located and pvp, right next to the Percy Propa statue.

![2017-06-19-012123.jpg](https://bitbucket.org/repo/64zqk5A/images/121718426-2017-06-19-012123.jpg "Warren Hub")

![2017-06-19-012229.jpg](https://bitbucket.org/repo/64zqk5A/images/3620195115-2017-06-19-012229.jpg "Ad-Hoc Hub")

## Config ##

Mod can be configured to some extent.

If you want to change how Sinner's idle animation in the title screen for example.

~~~~
MAYO_INI_TITLE_IDLE = "Idle4"
MAYO_INI_TITLE_IDLE_ROUSE = "Hello" --When you start the game
~~~~

See _[config.lua](https://bitbucket.org/roahN/opsagentmayo/src/3954e6a949794982a0c2567bcae26859de92bdf8/config.lua?at=default)_ for details.

### Idles ###

* Idle - Default standing position
* Idle1 - ???
* Idle2 - Hands on the back (kinda shy) Female, ??? (male)
* Idle3 - Shy (female), Proud (male)
* Idle4 - OPS Agent standing, one hand on the hip (female), crossed arms (male)
* Idle5 - Praying (female), ??? (male)
* PTplus - Annoyed (Ann style)
* Shrug - Ditto
* Funny - Ditto
* Joy - Ditto
* Anger - Ditto
* Sorry - Ditto
* Hello - Ditto
* LowTalkStart - Talking (low), with lips animation
* LowTalkEnd - Talking (low), with lips animation (short ver)
* TalkStart - Talking, with lips animation
* TalkStartEnd - Talking, with lips animation (short ver)
* Monitor_A - In deep thought
* BewareStart - In full alert

## Features ##

### Translation ###

* Translation fix mostly Carryable Ammo and Clip Size
* Shortened materials description when modifying weapons, now with highlights and icons

![2017-06-19-045852.jpg](https://bitbucket.org/repo/64zqk5A/images/1077678159-2017-06-19-045852.jpg "Material Description")

* Added NPC weapon names and also arranged some weapon names so that each can be sorted properly
* Arranged weapon description. Smaller fonts but less scrolling now.

![2017-07-15-122820.png](https://bitbucket.org/repo/64zqk5A/images/1787919080-2017-07-15-122820.png)

### Mod Functions ###

* Custom title screen
* Percy Propa Weekly
* Simeon's Rank 1 Weapons
* NPC Weapons (Melee Types and Pistol Types)
* Combat Items Munitions and Medical Supplies
* Augmentations
* Resources
* Key Items
* Citizens
* Play Music (Not persistent but useful online)
* Percy Propa Lottery
* Entitlement Points
* Reputation Checker
* Shackle (Useless)

You can choose how many items, personnels, retributions or entitlement points you want to claim.

### Const.lua Configuration ###

The lua file can now be configured. By using the lua file you can override the default values defined either on the savedata/eboot.

Let's be clear here. The mod is clean and the const.lua is set to its default value so **both are safe to use offline and online**. What can get you banned is if you start messing with the const.lua. Like if you change variables for the PVP's GDPP scoring and you set it so that you can receive 9,999,999 for one match only? Great scott! Pray that the match log is not recorded on the PSN server.

***

#### WARNING! ####

**Do not abuse this (const.lua) file. Don't blame me if you get a banhammer oky.**

All variables are set to default values. The risk is yours if you want to change the value. Also not everything has been tested. Some may not work as intended.

***

You have been warned.

See _const/script/[const.lua](https://bitbucket.org/roahN/opsagentmayo/src/3954e6a949794982a0c2567bcae26859de92bdf8/const/script/const.lua?at=default)_ for details.

#### Note ####

_I never planned on releasing the decrypted const.lua because it's just too [OP when you want it to](https://gbatemp.net/threads/this-is-how-to-cheat-freedom-wars-savegame.442672/page-2#post-7372132). But the ENPatch for the JP version forced my hand, mostly because of the huge difference in file structure between the EN and JP patch. Since ENPatch also have const.lua script included (because the developer included the PVP update with 1.20) then people would just decrypt it later on so why not just release it. I never use it myself except when I'm testing to verify if script can affect the NPCs or players on online co-op (host or not host), etc.._

_The consequence now is that you might notice some differences when playing online. You might encounter a player who can sever an abductor limb like wielding butter knife under a second or you might encounter teleporting pvp player, not the pvp teleporting glitch when the pvp update was first released but real teleporting players because they boosted their run speed. The DLC Cheat is nothing compared to this script. Nothing I can do about it but I suggest kicking those players from the room and listing their PSN usernames so that you can avoid playing with them in the future._

## Downloads ##

* OPS Agent Mayo Mod - [BitBucket](https://bitbucket.org/roahN/opsagentmayo/downloads/)
* DLC Cheat Method - [Google Drive](https://drive.google.com/open?id=0B84DNDNwyCDERWpFQUptX1VoN2c)
* ENPatch for the JP version - [Google Drive](https://drive.google.com/open?id=0B84DNDNwyCDESXNzUGp6NFNXTXc)

## Bugs ##

Please report any bugs or grammar, spelling errors. English is not my first language. Thanks.

## Credits ##

@rouji4256 for the JP dump. Thanks to the dump I finally managed to test the mod with the JP version.

## Contact ##

* Twitter: [@DEADCHANNEL_](https://twitter.com/DEADCHANNEL_)
* Reddit: [koiL90](https://www.reddit.com/user/koiL90/)