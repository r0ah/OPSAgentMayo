-- ==========================================================================
-- \file     const.lua
-- \brief    Override default values of various variables stored on the
-- \         savedata or eboot.
-- \ver      0.0.4
-- \author   Roah Nosh
-- \twitter  @DEADCHANNEL_
-- \reddit   koiL90
-- \
-- \note     Each are set on respective default values.
-- \         Change at your own risk.
-- ==========================================================================
--\
--\ WARNING!
--\
--\ Do not abuse this file. Don't blame me if you get a banhammer oky.
--\
--\ All variables are set to default values. The risk is yours if you want
--\ to change the value. Also not everything has been tested. Some may not
--\ work as intended.
--\
--\ Do not abuse this file. Don't blame me if you get a banhammer oky.
--\
--\ If you understand the risk then proceed.
--\
-- ==========================================================================

local L1_1
L0_0 = {}

--[[ Camera ]]
	L0_0.camera_fov_y							= 36.5
	L0_0.camera_roam_fov_y						= 32.5
	L0_0.camera_fov_y_run						= 47
	L0_0.camera_fov_y_jump						= 36.5
	L0_0.camera_speed							= 960
	L0_0.camera_zoom_speed						= 108
	L0_0.camera_pitch_upper						= 9900
	L0_0.camera_pitch_lower						= 9100
	L0_0.camera_distance_roam					= 4.8
	L0_0.camera_zoom_distance_roam				= 2
	L0_0.camera_offset_y_roam					= 0
	L0_0.camera_interp_rate_roam				= 1
	L0_0.camera_interp_diff_roam				= 0.1
	L0_0.camera_distance_melee					= 5
	L0_0.camera_offset_y_melee					= 5460
	L0_0.camera_interp_rate_melee				= 1
	L0_0.camera_interp_diff_melee				= 0.1
	L0_0.camera_distance_range					= 5
	L0_0.camera_offset_y_range					= 5460
	L0_0.camera_interp_rate_range				= 1
	L0_0.camera_interp_diff_range				= 0.1
	L0_0.camera_distance_melee_run				= 5.5
	L0_0.camera_distance_range_run				= 5.5
	L0_0.camera_distance_cling					= 6.5
	L0_0.camera_interp_rate_cling				= 0.3
	L0_0.camera_distance_crouch					= 5
	L0_0.camera_distance_transport				= 4.5
	L0_0.camera_distance_cutoff					= 12
	L0_0.camera_interp_rate_cutoff_interest		= 0.3
	L0_0.camera_interp_rate_cutoff_position		= 0.1
	L0_0.camera_aim_assist_correct				= 0.65
	L0_0.camera_reset_time						= 0.3
	L0_0.lock_change_lerp						= 0.2
	L0_0.cull_distance							= 1
	L0_0.cull_distance_cling					= 2.5
	L0_0.cull_distance_roam						= 0.85
	L0_0.cull_distance_event					= 0.5

--[[ Health ]]
	L0_0.health_human							= 50	--Health sinner (50)
	L0_0.health_android							= 50	--Health accessory (50)
	L0_0.health_android_buddy					= 75	--Health accessory (75)
	L0_0.health_recover_human					= 1.0	--Health regeneration sinner (0.2)
	L0_0.health_recover_android					= 1.0	--Health regeneration accessory (0.4)
	L0_0.health_recover_crouch_human			= 2.7	--Health recovery time when sinner is behind cover (1.7)
	L0_0.health_recover_crouch_android			= 2.7	--Health recovery time when accessory is behind cover (1.7)

--[[ Resuscitable ]]
	L0_0.resuscitable_times_human				= 6		--Time on which the sinner is automatically resurrected on normal op (6)
	L0_0.resuscitable_times_human_vs			= 6		--Time on which the sinner is automatically resurrected on pvp (6)
	L0_0.resuscitable_times_android				= 9999	--Time on which the accessory is automatically resurrected on normal op (9999)
	L0_0.resuscitable_times_android_vs			= 80	--Time on which the accessory is automatically resurrected on pvp (80)
	L0_0.resuscitable_time_add					= 6		--(6)
	L0_0.resuscitable_time_max					= 180	--(180)

--[[ Walk and jump speed ]]
	L0_0.walk_speed								= 5.8	--Walk speed for both sinner and accessory (5.2)
	L0_0.walk_to_run_speed_mag					= 2.0	--Run speed for both sinner and accessory (this + everything elses listed on this category = total run speed) (2.0)
	L0_0.air_speed								= 6		--Ibara cling jump range (6)
	L0_0.thorn_hold_walk_speed					= 2.5	--Walk speed while thorn is attached (2.5)
	L0_0.walk_speed_roam						= 1.5	--Walk speed when not on op (1.5)
	L0_0.run_speed_roam							= 3.8	--Run speed when not on op (3.8)
	L0_0.walk_speed_roam_android				= 1.5	--Accessory walk speed when not on op (1.5)
	L0_0.run_speed_roam_android					= 2.8	--Accessory run speed when not on op (2.8)
	L0_0.jump_speed								= 9		--Jump speed (9)
	L0_0.jump_speed_cling						= 13.3	--Ibara cling jump vertical speed (13.3)
	L0_0.transport_walk_speed					= 3.3	--Walk speed while carrying a citizen (3.3)
	L0_0.transport_run_speed					= 5.8	--Run speed while carrying a citizen (5.5)

--[[ Parts severe (the stronger the weapon the better the severe result) ]]
	L0_0.cutoff_add_input						= 15	--Damage done to the part being cut off (11)
	L0_0.cutoff_add_max							= 60	--Maximum damage done to the part being cut off (55)
	L0_0.cutoff_bodydmg_rate					= 0.8	--Damage done to the abductor integrity while cutting parts (0.7)

--[[ Weapons ]]
	L0_0.greatsword_charge_time_lv2				= 1.5	--Level 2 charge time for greatsword weapons (1.5)
	L0_0.greatsword_charge_time_lv3				= 1.9	--Level 3 charge time for greatsword weapons (1.9)
	L0_0.sword_aim_charge_time_lv2				= 2		--Level 2 charge time for melee weapons (2)
	L0_0.sword_aim_charge_time_lv3				= 2.5	--Level 3 charge time for melee weapons (2.5)
	L0_0.lance_aim_charge_time_lv2				= 2		--Level 2 charge time for lance weapons (2)
	L0_0.lance_aim_charge_time_lv3				= 2.5	--Level 3 charge time for lance weapons (2.5)

--[[ Ibara ]]
	L0_0.soul_natural_recover					= 1000	--Ibara bar recovery speed (40)
	L0_0.soul_field_recover						= 2000	--Ibara bar recovery when attached to will'o facilities (2000)
	L0_0.crouching_damage_rate					= 2.0	--(0.7)
	L0_0.thorn_hold_len_coef					= 1.5	--(1.5)
	L0_0.soul_thorn_fire						= 0		--Ibara cost when flinging "it" on normal op (55) 
	L0_0.soul_thorn_fire_vs						= 0		--Ibara cost when flinging "it" on pvp (120)
	L0_0.soul_thorn_charge_idle					= 0		--(0)
	L0_0.soul_thorn_charge_fire					= 0		--(0)
	L0_0.soul_recover_cool_time					= 0		--Ibara recovery time on normal op (2)
	L0_0.soul_recover_cool_time_vs				= 0		--Ibara recovery time on pvp (2)
	L0_0.soul_hold_machine						= 0		--Ibara cost when attached to abductors (50)
	L0_0.soul_hold_human						= 0		--Ibara cost when attached to sinners (50)
	L0_0.soul_hold_object						= 0		--Ibara cost when attached to objects (45)
	L0_0.soul_dive_attack						= 0		--Ibara cost when doing ibara dive attack on normal op (90)
	L0_0.soul_dive_attack_vs					= 0		--Ibarra cost when doing ibara dive attack on pvp (230)
	L0_0.soul_thorn_resuscitate					= 0		--Ibara cost when resurrecting allies (50)
	L0_0.soul_resurrect							= 0		--Ibara cost when resurrecting allies (50)

--[[ Resurrection ]]
	L0_0.resurrect_rate_action					= 500	--(500)
	L0_0.resurrect_rate_thorn					= 300	--(300)
	L0_0.resurrect_rate_down					= 50	--(50)
	L0_0.resurrect_wait_rate					= 0		--(0)

--[[ Weapon severe ]]
	L0_0.soul_melee_cut_off						= 45	--Ibara cost when cutting parts using a melee weapon (?) (45)
	L0_0.soul_knife_cut_off						= 45	--Ibara cost when cutting parts using the combat item knife (?) (45)

--[[ Frame ]]
	L0_0.drag_valid_frame						= 20	--(20)
	L0_0.cutoff_valid_frame						= 12	--(12)

--[[ Range ]]
	L0_0.carriable_range						= 3.5	--(3.5)
	L0_0.resuscitable_range						= 4.5	--(4.5)

--[[ Subweapon ]]
	L0_0.virgil_sub_weapon_damage_rate			= 0.4	--Sub-weapon damage rate (0.2)

--[[ Controller ]]
	L0_0.controller_func_param_rate				= 1.2	--(1.2)
	L0_0.controller_func_param_a				= -0.4	--(-0.4)
	L0_0.controller_func_param_b				= 1.4	--(1.4)
	L0_0.controller_speed_y_ratio				= 0.9	--(0.9)
	L0_0.controller_correction_input			= 0		--(0)

--[[ Thorn ]]
	L0_0.thorn1_move_rate						= 0.95	--(0.95)
	L0_0.thorn2_move_rate						= 0.9	--(0.9)
	L0_0.thorn3_move_rate						= 0.85	--(0.85)
	L0_0.thorn4_move_rate						= 0.8	--(0.8)
	L0_0.thorndmg_base							= 26	--(26) 
	L0_0.thorndmg_recover						= 3		--(3) 
	L0_0.thorndmg_levelRate						= 1		--(1)
	L0_0.thorndmg_num2Rate						= 2.3	--(2.3)
	L0_0.thorndmg_num3Rate						= 3.6	--(3.6)
	L0_0.thorndmg_num4Rate						= 5		--(5)
	L0_0.thorndmg_angryRate						= 0.8	--(0.8)
	L0_0.thorndmg_runawayRate					= 0.8	--(0.8)
	L0_0.thorndmg_inputRate						= 1.33	--(1.33)

--[[ Abduct time (part 1) ]]
	L0_0.citizen_abduct_time					= 20	--(20)
	L0_0.citizen_abduct_length					= 10	--(10)
	L0_0.android_abduct_time					= 15	--(15)
	L0_0.android_abduct_length					= 30	--(30)
	L0_0.android_abduct_length_mz05				= 50	--(50)

--[[ Abductors ]]
	L0_0.redrage_bodydmg_rate					= 0.5	--(0.5)
	L0_0.redrage_armCrush_bodydmg_rate			= 2		--(2)
	L0_0.redrage_headCrush_bodydmg_rate			= 2		--(2)
	L0_0.regenerate_core_liferate				= 0.65	--(0.65)
	L0_0.mb5_suction_power						= 0.3	--(0.3)

--[[ Bits ]]
	L0_0.bit_speed								= 20	--(20)
	L0_0.bit_return_speed						= 30	--(30)
	L0_0.bit_attack_time						= 3		--(3)
	L0_0.bit_life_time							= 15	--(15)

--[[ Tickets ]]
	L0_0.coop_ticket_2player					= 8		--(8)
	L0_0.coop_ticket_3player					= 11	--(11)
	L0_0.coop_ticket_4player					= 15	--(15)

--[[ Transitions ]]
	L0_0.transition_time_normal					= 10	--(10)
	L0_0.transition_time_machine				= 25	--(25)

--[[ Abduct time (part 2) ]]
	L0_0.abduct_time_citizen					= 360	--(360)
	L0_0.abduct_time_android					= 180	--(180)

--[[ Occupied ]]
	L0_0.occupied_pow							= 5		--(5)
	L0_0.occupied_max							= 1000	--(1000)
	L0_0.occupied_decline						= 3		--(3)

--[[ Area ]]
	L0_0.conquest_area_height					= 5		--(5)
	L0_0.conquest_area_radius					= 5		--(5)

--[[ Field combat item ]]
	L0_0.reappear_bullet_s						= 10	--Time for bullets (small) to reappear again after taking one (180)
	L0_0.reappear_bullet_s_fast					= 2		--(2)
	L0_0.reappear_bullet_l						= 10	--Time for bullets (large) to reappear again after taking one (360)
	L0_0.reappear_bullet_l_fast					= 2		--(2)
	L0_0.reappear_sub_weapon					= 10	--Time for combat items to reappear again after taking one (300)
	L0_0.reappear_sub_weapon_fast				= 2		--(2)

--[[ Field material ]]
	L0_0.field_material_radius_battle			= 1.7	--(1.7)
	L0_0.field_material_radius_roam				= 1		--(1)

--[[ Radar ]]
	L0_0.radar_length							= 45	--(45)
	L0_0.radar_length_alpha						= 43	--(43)

--[[ Time ]]
	L0_0.bonus_kill_target_enable_time			= 10	--(10)

--[[ Accessory reputation ]]
--[[
  They could have implemented a visual novel aspect
  to the game where if you reach a certain amount of
  accessory reputation then you raise a flag or
  something. If the reverse is true then the game
  will go yandere mode where your accessory will
  knife you or maybe imprison you.

  fufufu you'll be a double prisoner yeah.
]]
	L0_0.acc_reputation_lv1						= 0		--(0)
	L0_0.acc_reputation_lv2						= 1000	--(1000)
	L0_0.acc_reputation_lv3						= 2000	--(2000)
	L0_0.acc_reputation_lv4						= 3000	--(3000)
	L0_0.acc_reputation_max						= 4000	--(4000)
	L0_0.acc_reputation_large_low				= 70	--(70)
	L0_0.acc_reputation_large_high				= 70	--(70)
	L0_0.acc_reputation_medium_low				= 50	--(50)
	L0_0.acc_reputation_medium_high				= 50	--(50)
	L0_0.acc_reputation_small_low				= 15	--(15)
	L0_0.acc_reputation_small_high				= 15	--(15)
	L0_0.secret_reward_acc						= 30	--(30)

--[[ AI ]]
	L0_0.ai_equipped_melee_falter_time			= 1		--(1)
	L0_0.ai_equipped_range_falter_time			= 1		--(1)
	L0_0.disable_resuscitable_dodge_range		= 5.8	--(5.8)

--[[ PVP ]]
--[[
  Warning: Do not abuse this feature. Don't blame
  me if you get a banhammer oky.

  The risk is yours.
]]
	L0_0.vs_score_battle_win					= 600	--(600)
	L0_0.vs_score_human_kill					= 60	--(60)
	L0_0.vs_score_carry_complete				= 300	--(300)
	L0_0.vs_score_android_kill					= 20	--(20)
	L0_0.vs_score_human_rescue					= 30	--(30)
	L0_0.vs_score_no_death_human_kill2			= 20	--(20)
	L0_0.vs_score_no_death_human_kill3			= 30	--(30)
	L1_1 = "vs_score_no_death_human_kill4"
	L0_0[L1_1]									= 60	--(60)
	L1_1 = "vs_score_capture_thorn"
	L0_0[L1_1]									= 10	--(10)
	L1_1 = "vs_score_recover_thorn"
	L0_0[L1_1]									= 10	--(10)
	L1_1 = "vs_score_defence_thorn"
	L0_0[L1_1]									= 10	--(10)
	L1_1 = "vs_score_human_kill_android"
	L0_0[L1_1]									= 40	--(40)
	L1_1 = "vs_score_bonus_target_kill"
	L0_0[L1_1]									= 50	--(50)
	L1_1 = "vs_score_human_kill_assist"
	L0_0[L1_1]									= 30	--(30)
	L1_1 = "vs_score_win_team_player_diff"
	L0_0[L1_1]									= 150	--(150)
system = L0_0
