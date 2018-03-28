-- ==========================================================================
-- \file     config.lua
-- \brief    Configuration file
-- \ver      0.0.3
-- \author   Roah Nosh
-- \twitter  @DEADCHANNEL_
-- \reddit   koiL90
-- ==========================================================================

--[[ Animation ]]
MAYO_INI_ANIM_HANDOVER = true -- The "give/take" animation (values: true/false)

--[[ Service requirement ]]
MAYO_INI_REQ = true -- Enable or disable service NENR requirement (values: true/false)
MAYO_INI_REQ_ID = "RES_20143" -- The resource ID. Current value is NENR or Non-Existent Non-Resource.
MAYO_INI_REQ_COUNT = 1 -- The number of resources you want to give. No need to change this value.

--[[ The menu SE ]]
MAYO_INI_MENU_ENTER = 4
MAYO_INI_MENU_CANCEL = 6
MAYO_INI_MENU_CONFIRM = 13

--[[ log obviously ]]
MAYO_INI_LOG_TYPE = "Unlock" -- Change how the log is stored. Note that MainStory and SubStory are permanent (values: MainStory/SubStory/Unlock)

--[[ The default language ]]
MAYO_INI_LANG = "EN" -- See 'text/lang/EN.lua'

--[[ Title screen ]]
MAYO_INI_TITLE = true -- Enable custom title screen (values: true/false)
MAYO_INI_TITLE_IDLE = "Idle4" -- Inactive, refer to the readme file for the idle list
MAYO_INI_TITLE_IDLE_ROUSE = "Hello" -- Idle becomes active when you press the start button
MAYO_INI_TITLE_FOVY = 15 -- Camera distance. The higher the value the longer the camera distance from the liberty window.
MAYO_INI_TITLE_MONITOR = 3 -- Change what's on the monitor (values: 1 = Panopticon, 2 = PropaBottom, 3 = PropaMiddle, 4 = PropaAngry, etc)