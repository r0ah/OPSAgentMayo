-- ==========================================================================
-- \file     @DEADCHANNEL_TITLE.lua
-- \brief    Title screen
-- \ver      0.0.4
-- \author   Roah Nosh
-- \twitter  @DEADCHANNEL_
-- \reddit   koiL90
-- ==========================================================================

sequence_table = {
	{
		Name = "NewGameEvent",
		Idle = {},
		Active = {
			{ Scenario.FadeOut, "Black", 1 },
			{ StartImmediate },
			{ Camera.SetRawPosition, 0.0281, 1.53912, -1.89335 },
			{ Camera.SetRawInterest, 0.0281, 1.47912, 6.10665 },
			{ Camera.SetFovY, 45 },
			{ Camera.Activate },
			{ EndImmediate },
			{ Scenario.FadeIn, "Black", 15 },
			{ Scenario.WaitFade },
			{ Wait, 0.5 },
			{ ContinueEvent, "TutorialDialogEvent" },
		},
	},
	{
		Name = "ContinueGameEvent",
		Idle = {},
		Active = {
			{ Scenario.FadeOut, "Black", 1 },
			{ StartImmediate },
			{ UI.SetMonitorMenu, mayo_config( 30 ) },
			{ Camera.SetRawPosition, 0.0281, 1.53912, -1.89335 },
			{ Camera.SetRawInterest, 0.0281, 1.47912, 6.10665 },
			{ Camera.SetFovY, mayo_config( 24 ) },
			{ Camera.Activate },
			{ Chara.SetRotateY, "Player", 170 },
 			{ Chara.SetPosition, "Player", mayo_config( 31 ) },
			{ Chara.ChangeAction, "Player", mayo_config( 22 ) },
			{ EndImmediate },
			{ Scenario.FadeIn, "Black", 15 },
			{ Scenario.WaitFade },
			--{ Wait, 0.5 },
			{ ContinueEvent, "TutorialDialogEvent" },
		},
	},
	{
		Name = "TutorialDialogEvent",
		Idle = { { ChangeTable, "Active" }, },
		Active = {
			{ UI.OpenTutorialDialog, 1000 },
			{ UI.WaitTutorialDialog },
			{ UI.OpenTutorialDialog, 1001 },
			{ UI.WaitTutorialDialog },
			{ UI.OpenTutorialDialog, 1005 },
			{ UI.WaitTutorialDialog },
			{ BranchCompleteTerm, "TitleEvent", "CompTermEvent" },
		},
	},
	{
		Name = "CompTermEvent",
		Idle = { { ChangeTable, "Active" }, },
		Active = {
			{ UI.OpenTutorialDialog, 1009 },
			{ UI.WaitTutorialDialog },
			{ ContinueEvent, "TitleEvent" },
		},
	},
	{
		Name = "TitleEvent",
		Idle = { { ChangeTable, "Active" }, },
		Active = {
			{ UI.OpenTutorialDialog, 1102 },
			{ UI.WaitTutorialDialog },
			{ UI.StartTitle },
			{ UI.WaitTitle },
			{ ChangeEvent, "EndEvent" },
		},
	},
	{
		Name = "StandUpEvent",
		Idle = { { ChangeTable, "Active" }, },
		Active = {
			{ Chara.SetRotateY, "Player", 180 },
			{ Chara.ChangeAction, "Player", mayo_config( 23 ) },
			{ Chara.WaitAction, "Player" },
			{ Scenario.FadeOut, "Black", 15 },
			{ Scenario.WaitFade },
			{ Camera.ResetFovY },
			{ UI.SetMonitorMenu, 1 },
			{ Camera.Deactivate },
			{ Chara.SetIK, "Accessory", "Player", "b_C_Head" },
			{ Chara.UnsetIK, "Player" },
			{ Chara.SetPosition, "Player", "IN_pos" },
			{ Chara.ChangeRigidBody, "Player", 0 },
			{ Scenario.FadeIn, "Black", 15 },
			{ Scenario.WaitFade },
			{ ChangeEvent, "EndEvent" },
		},
	},
	{
		Name = "PreEndEvent",
		Idle = { { ChangeTable, "Active" }, },
		Active = {
			{ Scenario.FadeOut, "Black", 15 },
			{ Scenario.WaitFade },
			{ Chara.ChangeAction, "Player", "Idle" },
			{ Chara.ChangeRigidBody, "Player", 0 },
			{ Camera.ResetFovY },
			{ Camera.Deactivate },
			{ Chara.UnsetIK, "Player" },
			{ Chara.SetIK, "Accessory", "Player", "b_C_Head" },
 			{ StartImmediate },
			{ Scenario.LaunchAutoEvent },
			{ ContinueEvent, "EndEvent" },
		},
	},
	{
		Name = "EndEvent",
		Idle = { { EndImmediate }, },
		Active = {},
	},
}

set_seq_table( sequence_table )
