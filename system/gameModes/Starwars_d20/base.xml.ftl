<#ftl encoding="UTF-8" strip_whitespace=true >
<?xml version="1.0" encoding="UTF-8"?>
<!--
-->
<character>
	<export>
		<date>${pcstring('EXPORT.DATE')}</date>
		<time>${pcstring('EXPORT.TIME')}</time>
		<version>${pcstring('EXPORT.VERSION')}</version>
		<paperinfo>
			<name>${pcstring('PAPERINFO.NAME')}</name>
			<height>${pcstring('PAPERINFO.HEIGHT')}</height>
			<width>${pcstring('PAPERINFO.WIDTH')}</width>
			<margins>
				<top>${pcstring('PAPERINFO.MARGINTOP')}</top>
				<bottom>${pcstring('PAPERINFO.MARGINBOTTOM')}</bottom>
				<left>${pcstring('PAPERINFO.MARGINLEFT')}</left>
				<right>${pcstring('PAPERINFO.MARGINRIGHT')}</right>
			</margins>
		</paperinfo>
		<directories>
			<pcgen>${pcstring('DIR.PCGEN')}</pcgen>
			<templates>${pcstring('DIR.TEMPLATES')}</templates>
			<pcg>${pcstring('DIR.PCG')}</pcg>
			<html>${pcstring('DIR.HTML')}</html>
			<temp>${pcstring('DIR.TEMP')}</temp>
		</directories>
		<invalidtext>
			<tohit>${pcstring('INVALIDTEXT.TOHIT')}</tohit>
			<damage>${pcstring('INVALIDTEXT.DAMAGE')}</damage>
		</invalidtext>
	</export>
	<unit_set>
		<name>${pcstring('UNITSET')}</name>
		<height_unit>${pcstring('UNITSET.HEIGHTUNIT')}</height_unit>
		<distance_unit>${pcstring('UNITSET.DISTANCEUNIT')}</distance_unit>
		<weight_unit>${pcstring('UNITSET.WEIGHTUNIT')}</weight_unit>
	</unit_set>
	<!--
	  ====================================
	  ====================================
			BIO
	  ====================================
	  ====================================-->
	<basics>
		<rules>
		</rules>
		<bonuses>${pcstring('BONUSLIST.STAT.STR')}</bonuses>
		<bonuses>${pcstring('BONUSLIST.STAT.STR.TOTAL')}</bonuses>
		<bonuses>${pcstring('BONUSLIST.CHECK.BASE')}</bonuses>
		<bonuses>${pcstring('BONUSLIST.CHECK.BASE.TOTAL')}</bonuses>
		<name>${pcstring('NAME')}</name>
		<followerof>${pcstring('FOLLOWEROF')}</followerof>
		<playername>${pcstring('PLAYERNAME')}</playername>
		<charactertype>${pcstring('CHARACTERTYPE')}</charactertype>
		<hero_points>${pcstring('VAR.HEROPOINTS.INTVAL')}</hero_points>
		<remaining_action_points>${pcstring('VAR.Action.INTVAL')}</remaining_action_points>
		<age>${pcstring('AGE')}</age>
		<alignment>
			<long>${pcstring('ALIGNMENT')}</long>
			<short>${pcstring('ALIGNMENT.SHORT')}</short>
		</alignment>
		<bab>${pcstring('ATTACK.MELEE.BASE')}</bab>
		<bio>${pcstring('BIO')}</bio>
		<birthday>${pcstring('BIRTHDAY')}</birthday>
		<birthplace>${pcstring('BIRTHPLACE')}</birthplace>
		<catchphrase>${pcstring('CATCHPHRASE')}</catchphrase>
		<classes>
			<@loop from=0 to=pcvar('COUNT[CLASSES]-1') ; class , class_has_next>
			<#if (pcvar(pcstring('CLASS.${class}.LEVEL')) > 0) >
			<class>
				<name>${pcstring('CLASS.${class}')}</name>
				<abbreviation>${pcstring('CLASSABB.${class}')}</abbreviation>
				<level>${pcstring('CLASS.${class}.LEVEL')}</level>
				<bonuslist>${pcstring('CLASS.${class}.BONUSLIST')}</bonuslist>
				<sequence>${class}</sequence>
				<sequence_shortform><@pcstring tag="CLASSABB.${class}"/><@pcstring tag="CLASS.${class}.LEVEL"/></sequence_shortform>
			</class>
			</#if>
			</@loop><#-- Classes -->
			<levels_total>${pcstring('TOTALLEVELS')}</levels_total>
			<levels_ecl>${pcstring('ECL')}</levels_ecl>
			<!-- shortform below should be removed - it can be derived from class info above -->
			<shortform><@loop from=0 to=pcvar('countdistinct("CLASSES")')-1 ; class , class_has_next ><#rt>
				<#t><@pcstring tag="CLASSABB.${class}"/><@pcstring tag="CLASS.${class}.LEVEL"/><#if class_has_next> </#if>
			<#t></@loop></shortform>
			<!-- CLASSLIST is not extracted because we can derive it from the information above -->
		</classes>
		<description>${pcstring('DESC')}</description>
		<experience>
			<current>${pcstring('EXP.CURRENT')}</current>
			<next_level>${pcstring('EXP.NEXT')}</next_level>
			<factor>${pcstring('EXP.FACTOR')}</factor>
			<penalty>${pcstring('EXP.PENALTY')}</penalty>
		</experience>
		<eyes>
			<color>${pcstring('COLOR.EYE')}</color>
		</eyes>
		<hair>
			<color>${pcstring('COLOR.HAIR')}</color>
			<length>${pcstring('LENGTH.HAIR')}</length>
		</hair>
		<skin>
			<color>${pcstring('COLOR.SKIN')}</color>
		</skin>
		<cr>${pcstring('CR')}</cr>
		<face>
			<face>${pcstring('FACE')}</face>
			<short>${pcstring('FACE.SHORT')}</short>
			<squares>${pcstring('FACE.SQUARES')}</squares>
		</face>
		<favoredlist>${pcstring('FAVOREDLIST')}</favoredlist>
		<followerlist>${pcstring('FOLLOWERLIST')}</followerlist>
		<gender>
			<long>${pcstring('GENDER.LONG')}</long>
			<short>${pcstring('GENDER.SHORT')}</short>
		</gender>
		<handed>${pcstring('HANDED')}</handed>
		<height>
			<total>${pcstring('HEIGHT')}</total>
			<feet>${pcstring('HEIGHT.FOOTPART')}</feet>
			<inches>${pcstring('HEIGHT.INCHPART')}</inches>
		</height>
		<hitdice>${pcstring('HITDICE')}</hitdice>
		<image>file:${pcstring('DIR.PCG')}/${pcstring('NAME')}.jpg</image>
		<interests>${pcstring('INTERESTS')}</interests>
		<languages>
		<@loop from=0 to=pcvar('COUNT[LANGUAGES]-1') ; lang , lang_has_next>
			<language>${pcstring('LANGUAGES.${lang}')}</language>
		</@loop>
			<language>${pcstring('ABILITYALL.ANY.0.ASPECT=Language.ASPECT.Language')}</language>
			<all>${pcstring('LANGUAGES')}</all>
		</languages>
		<location>${pcstring('LOCATION')}</location>
		<move>
		<@loop from=0 to=pcvar('COUNT[MOVE]-1') ; move , move_has_next>
			<move>
				<name>${pcstring('MOVE.${move}.NAME')}</name>
				<rate>${pcstring('MOVE.${move}.RATE')}</rate>
				<squares>${pcstring('MOVE.${move}.SQUARES')}</squares>
		<#if (pcstring("MOVE.${move}.NAME") = "Fly")>
				<maneuverability>(${pcstring('ABILITYALL.Special Ability.HIDDEN.0.TYPE=Maneuverability.ASPECT.Maneuverability')})</maneuverability>
		</#if>
			</move>
		</@loop>
			<all>${pcstring('MOVEMENT')}</all>
		</move>
		<personality>
			<trait>${pcstring('PERSONALITY1')}</trait>
			<trait>${pcstring('PERSONALITY2')}</trait>
		</personality>
		<portrait>
			<portrait>${pcstring('PORTRAIT')?url_path('utf-8')}</portrait>
			<portrait_thumb>${pcstring('PORTRAIT.THUMB')?url_path('utf-8')}</portrait_thumb>
		</portrait>
		<phobias>${pcstring('PHOBIAS')}</phobias>
		<#if (pcstring("ABILITYALL.ANY.0.TYPE=RaceName.HASASPECT.RaceName") = "Y")>
			<race>${pcstring('ABILITYALL.ANY.0.ASPECT=RaceName.ASPECT.RaceName')}</race>
		<#else>
			<race>${pcstring('RACE')}</race>
		</#if>
		<race>
		<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Internal","ASPECT=RaceExtra")-1') ; ability , ability_has_next>
			<raceextra>${pcstring('ABILITYALL.Internal.HIDDEN.${ability}.ASPECT.RaceExtra')}</raceextra>
		</@loop>
			<racetype>${pcstring('RACETYPE')}</racetype>
		<@loop from=0 to=pcvar('COUNT[RACESUBTYPE]-1') ; racesubtype , racesubtype_has_next>
			<racesubtype>${pcstring('RACESUBTYPE.${racesubtype}')}</racesubtype>
		</@loop>
		</race>
		<reach>
			<reach>${pcstring('REACH')}</reach>
			<squares>${pcstring('REACH.SQUARES')}</squares>
		</reach>
		<region>${pcstring('REGION')}</region>
		<reputation>${pcstring('VAR.REPUTATION.INTVAL')}</reputation>
		<residence>${pcstring('RESIDENCE')}</residence>
		<size>
			<long>${pcstring('SIZELONG')}</long>
			<short>${pcstring('SIZE')}</short>
		</size>
		<speechtendency>${pcstring('SPEECHTENDENCY')}</speechtendency>
		<type>${pcstring('TYPE')}</type>
		<vision>
		<@loop from=0 to=pcvar('COUNT[VISION]-1') ; vision , vision_has_next>
			<vision>${pcstring('VISION.${vision}')}</vision>
		</@loop>
			<all>${pcstring('VISION')}</all>
		</vision>
		<wealth>${pcstring('VAR.WEALTH.INTVAL')}</wealth>
		<gold>${pcstring('GOLD')}</gold>
		<weight>
			<weight_unit>${pcstring('WEIGHT')}</weight_unit>
			<weight_nounit>${pcstring('WEIGHT.NOUNIT')}</weight_nounit>
		</weight>
		<poolpoints>
			<cost>${pcstring('POOL.COST')}</cost>
			<current>${pcstring('POOL.CURRENT')}</current>
		</poolpoints>
		<notes>
		<@loop from=0 to=pcvar('COUNT[NOTES]-1') ; note , note_has_next>
		<#if (pcstring("NOTE.${note}.NAME") = "DM Notes")>
		<#else>
			<note>
				<name>${pcstring('NOTE.${note}.NAME')}</name>
				<value>${pcstring('NOTE.${note}.VALUE.')}</value>
			</note>

		</#if>
		</@loop>
		<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","ASPECT=NotesSection")-1') ; ability , ability_has_next>
			<note>
				<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT.NotesSection')}</name>
				<value>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT.Notes')}</value>
			</note>
		</@loop>
		</notes>
		<campaign_histories>
			<@loop from=0 to=pcvar('count("CAMPAIGNHISTORY")-1') ; campaignhistory , campaignhistory_has_next>	
			<campaign_history>
				<campaign>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.CAMPAIGN')}</campaign>
				<adventure>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.ADVENTURE')}</adventure>
				<party>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.PARTY')}</party>
				<date>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.DATE')}</date>
				<xp>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.XP')}</xp>
				<gm>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.GM')}</gm>
				<text>${pcstring('CAMPAIGNHISTORY.VISIBLE.${campaignhistory}.TEXT')}</text>
			</campaign_history>
			</@loop>	
		</campaign_histories>
	</basics>

	<!-- Use ASPECT.NotesSection.x and ASPECT.Notes.y	-->
	<!--
	  ====================================
	  ====================================
			ABILITIES
	  ====================================
	  ====================================-->
	<abilities>
	<@loop from=0 to=pcvar('COUNT[STATS]-1') ; stat , stat_has_next>
		<ability>
			<name>
				<long>${pcstring('STAT.${stat}.LONGNAME')}</long>
				<short>${pcstring('STAT.${stat}.NAME')}</short>
			</name>
			<score>${pcstring('STAT.${stat}')}</score>
			<modifier>${pcstring('STAT.${stat}.MOD')}</modifier>
		<!--
		Old BASE tag does not give stats with racial, and other permentant adjustments.
		Use NOTEMP.NOEQUIP instead of BASE gives the correct results.

			<base>${pcstring('STAT.${stat}.BASE')}</base>
			<basemod>${pcstring('STAT.${stat}.BASEMOD')}</basemod>
		-->
			<base>${pcstring('STAT.${stat}.NOTEMP.NOEQUIP')}</base>
			<basemod>${pcstring('STAT.${stat}.MOD.NOTEMP.NOEQUIP')}</basemod>

			<noequip>${pcstring('STAT.${stat}.NOEQUIP')}</noequip>
			<noequip_mod>${pcstring('STAT.${stat}.MOD.NOEQUIP')}</noequip_mod>
			<no_temp_score>${pcstring('STAT.${stat}.NOTEMP')}</no_temp_score>
			<no_temp_modifier>${pcstring('STAT.${stat}.MOD.NOTEMP')}</no_temp_modifier>
		</ability>
	</@loop>
	</abilities>
	<!--
	  ====================================
	  ====================================
			HIT POINTS
	  ====================================
	  ====================================-->
	<hit_points>
		<usealternatedamage>${pcstring('VAR.UseAlternateDamage.INTVAL')}</usealternatedamage>
		<points>${pcstring('HP')}</points>
		<alternate>${pcstring('ALTHP')}</alternate>
		<die>${pcstring('HITDICE')}</die>
		<die_short>${pcstring('HITDICE.SHORT')}</die_short>
		<current/>
		<subdual/>
		<damage_reduction>${pcstring('DR')}</damage_reduction>
		<damage_threshold>${pcstring('VAR.DAMAGETHRESHOLD.INTVAL')}</damage_threshold>
		<history>
		<@loop from=1 to=pcvar('ECL') ; level , level_has_next>
			<roll>
				<level>${level}</level>
				<roll>${pcstring('HPROLL.${level}')}</roll>
				<stat>${pcstring('HPROLL.${level}.STAT')}</stat>
				<total>${pcstring('HPROLL.${level}.TOTAL')}</total>
			</roll>
		</@loop>
		</history>
	</hit_points>
	<!--
	  ====================================
	  ====================================
			ARMOR CLASS
	  ====================================
	  ====================================-->
	<armor_class>
		<total>${pcstring('AC.Total')}</total>
		<listing>${pcstring('BONUS.COMBAT.AC.LISTING')}</listing>
		<flat>${pcstring('AC.Flatfooted')}</flat>
		<touch>${pcstring('AC.Touch')}</touch>
		<base>${pcstring('AC.Base')}</base>
		<stat_mod>${pcstring('AC.Ability')}</stat_mod>
		<size_mod>${pcstring('AC.Size')}</size_mod>
		<natural>${pcstring('AC.NaturalArmor')}</natural>
		<dodge>${pcstring('AC.Dodge')}</dodge>
		<dodge_bonus>${pcstring('AC.Dodge')}</dodge_bonus>
		<class_bonus>${pcstring('AC.ClassDefense')}</class_bonus>
		<misc>${pcstring('AC.Misc')}</misc>
		<miss_chance/>
		<max_dex>${pcstring('MAXDEX')}</max_dex>
		<spell_failure>${pcstring('SPELLFAILURE')}</spell_failure>
		<check_penalty>${pcstring('ACCHECK')}</check_penalty>
		<spell_resistance>${pcstring('SR')}</spell_resistance>
		<resistance>
			<psionic/>
			<spell/>
		</resistance>
	</armor_class>
	<!--
	  ====================================
	  ====================================
			INITIATIVE
	  ====================================
	  ====================================-->
	<initiative>
		<total>${pcstring('INITIATIVEMOD')}</total>
		<dex_mod>${pcstring('STAT.1.MOD')}</dex_mod>
		<misc_mod>${pcstring('INITIATIVEMISC')}</misc_mod>
		<spell_failure>${pcstring('SPELLFAILURE')}</spell_failure>
		<check_penalty>${pcstring('ACCHECK')}</check_penalty>
		<spell_resistance>${pcstring('SR')}</spell_resistance>
		<hero_points>${pcstring('VAR.HEROPOINTS.INTVAL')}</hero_points>
		<resistances>
			<acid>${pcstring('VAR.AcidResistanceBonus.INTVAL')}</acid>
			<cold>${pcstring('VAR.ColdResistanceBonus.INTVAL')}</cold>
			<electricity>${pcstring('VAR.ElectricityResistanceBonus.INTVAL')}</electricity>
			<fire>${pcstring('VAR.FireResistanceBonus.INTVAL')}</fire>
			<force/>
			<sonic/>
		</resistances>
	</initiative>
	<!--
	  ====================================
	  ====================================
			SKILLS
	  ====================================
	  ====================================-->
	<skillinfo>
		<conditional_modifiers>
		<@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=SkillBonus")-1') ; ability , ability_has_next>
			<skillbonus>
				<description>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=SkillBonus.ASPECT.SkillBonus')}</description>
			</skillbonus>
		</@loop>
		</conditional_modifiers>
	</skillinfo>
	<skills>
		<conditional_modifiers>
		<@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=SkillBonus")-1') ; ability , ability_has_next>
			<skillbonus>
				<description>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=SkillBonus.ASPECT.SkillBonus')}</description>
			</skillbonus>
		</@loop>
		</conditional_modifiers>
		<skillpoints>
			<total>${pcstring('SKILLPOINTS.TOTAL')}</total>
			<used>${pcstring('SKILLPOINTS.USED')}</used>
			<unused>${pcstring('SKILLPOINTS.UNUSED')}</unused>
			<eclipse_total>${pcstring('VAR.CharacterSkillPts.INTVAL')}</eclipse_total>
		</skillpoints>
		<list_mods>${pcstring('SKILLLISTMODS')}</list_mods>
		<#if (pcvar("VAR.Max_Rank_Display") > 0)>
			<max_class_skill_level>${pcstring('VAR.Max_Rank_Display')}</max_class_skill_level>
		<#else>
			<max_class_skill_level>${pcstring('MAXSKILLLEVEL')}</max_class_skill_level>
		</#if>
		<max_cross_class_skill_level>${pcstring('MAXCCSKILLLEVEL')}</max_cross_class_skill_level>
	<@loop from=0 to=pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")')-1 ; skill ,skill_has_next>
		<skill>
			<name>${pcstring('SKILLSIT.${skill}')}</name>
			<ranks>${pcstring('SKILLSIT.${skill}.RANK')}</ranks>
			<mod>${pcstring('SKILLSIT.${skill}.MOD')}<!-- Mods from abilities, equipment, etc -->
			</mod>
			<skill_mod>${pcstring('SKILLSIT.${skill}.TOTAL')}</skill_mod>
			<ability_mod>${pcstring('SKILLSIT.${skill}.ABMOD')}<!-- Mod from the key ability -->
			</ability_mod>
			<misc_mod>${pcstring('SKILLSIT.${skill}.MISC')}<!-- This is a calc value of TOTAL-RANK-ABMOD -->
			</misc_mod>
			<ability>${pcstring('SKILLSIT.${skill}.ABILITY')}</ability>
			<synergy>${pcstring('SKILLSIT.${skill}.SYNERGY')}</synergy>
			<untrained>${pcstring('SKILLSIT.${skill}.UNTRAINED')}</untrained>
			<exclusive>${pcstring('SKILLSIT.${skill}.EXCLUSIVE')}</exclusive>
			<trained_total>${pcstring('SKILLSIT.${skill}.TRAINED_TOTAL')}</trained_total>
			<exclusive_total>${pcstring('SKILLSIT.${skill}.EXCLUSIVE_TOTAL')}</exclusive_total>
			<classes>${pcstring('SKILLSIT.${skill}.CLASSES')}</classes>
			<type>${pcstring('SKILLSIT.${skill}.TYPE')}</type>
		</skill>
	</@loop>

	<!-- Skills -->
	</skills>
	<!--
	====================================
	====================================
			SAVING THROWS
	====================================
	====================================-->
	<saving_throws>
		<conditional_modifiers>
			<@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=SaveBonus")-1') ; ability , ability_has_next>
				<savebonus>
					<description>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=SaveBonus.ASPECT.SaveBonus')}</description>
				</savebonus>
			</@loop>
		</conditional_modifiers>
		<#assign checknum = 0 />
		<#list pc.checks as check>
		<#assign checkName = pcstring('CHECK.${checknum}.NAME')?lower_case />
		<#assign checkShortName = checkName />
		<#if (checkName = 'reflex')>
			<#assign checkShortName = checkName?substring(0,3) />
		<#elseif (checkName?length >= 4) >
			<#assign checkShortName = checkName?substring(0,4) />
		</#if>
		<saving_throw>
			<name>
				<long>${checkName}</long>
				<short>${checkShortName}</short>
			</name>
			<#if (checkName = 'fortitude')>
				<ability>constitution</ability>
			<#elseif (checkName = 'reflex')>
				<ability>dexterity</ability>
			<#elseif (checkName = 'will')>
				<ability>wisdom</ability>
			<#else>
				<ability></ability>
			</#if>
			<total>${pcstring('CHECK.${checknum}.TOTAL')}</total>
			<base>${pcstring('CHECK.${checknum}.BASE')}</base>
			<abil_mod>${pcstring('CHECK.${checknum}.STATMOD')}</abil_mod>
			<feats>${pcstring('CHECK.${checknum}.FEAT')}</feats>
			<magic_mod>${pcstring('CHECK.${checknum}.MAGIC')}</magic_mod>
			<misc_mod>${pcstring('CHECK.${checknum}.MISC.NOMAGIC.NOSTAT')}</misc_mod>
			<misc_w_magic_mod>${pcstring('CHECK.${checknum}.MISC.NOSTAT')}</misc_w_magic_mod>
			<race>${pcstring('CHECK.${checknum}.RACE')}</race>
			<epic_mod>${pcstring('CHECK.${checknum}.EPIC')}</epic_mod>
			<temp_mod/>
		</saving_throw>
		<#assign checknum = checknum + 1 />
		</#list>
	</saving_throws>
	<!--
	  ====================================
	  ====================================
			ATTACK
	  ====================================
	  ====================================-->
	<attack>
			<conditional_modifiers>
				<@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=CombatBonus")-1') ; ability , ability_has_next>
				<combatbonus>
					<name>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=CombatBonus')}</name>
					<type>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=CombatBonus.TYPE')}</type>
					<description>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=CombatBonus.ASPECT.CombatBonus')}</description>
				</combatbonus>
				</@loop>
				<@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=SaveBonus")-1') ; ability , ability_has_next>
				<savebonus>
					<name>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=SaveBonus')}</name>
					<type>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=SaveBonus.TYPE')}</type>
					<description>${pcstring('ABILITYALL.ANY.${ability}.ASPECT=SaveBonus.ASPECT.SaveBonus')}</description>
				</savebonus>
				</@loop>
			</conditional_modifiers>

		<melee>
			<total>${pcstring('ATTACK.MELEE.TOTAL')}</total>
			<total_short>${pcstring('ATTACK.MELEE.TOTAL.SHORT')}</total_short>
			<bab>${pcstring('ATTACK.MELEE.BASE')}</bab>
			<!-- ${pcstring('ATTACK.MELEE.BASE')} -->
			<base_attack_bonus>${pcstring('ATTACK.MELEE')}</base_attack_bonus>
			<stat_mod>${pcstring('ATTACK.MELEE.STAT')}</stat_mod>
			<size_mod>${pcstring('ATTACK.MELEE.SIZE')}</size_mod>
			<misc_mod>${pcstring('ATTACK.MELEE.MISC')}</misc_mod>
			<epic_mod>${pcstring('VAR.charbonusto("COMBAT","EPICAB").INTVAL')}</epic_mod>
			<!-- ${pcstring('ATTACK.MELEE.EPIC')} -->
			<temp_mod/>
		</melee>
		<ranged>
			<total>${pcstring('ATTACK.RANGED.TOTAL')}</total>
			<bab>${pcstring('ATTACK.RANGED.BASE')}</bab>
			<!-- ${pcstring('ATTACK.RANGED.BASE')} -->
			<base_attack_bonus>${pcstring('ATTACK.RANGED')}</base_attack_bonus>
			<stat_mod>${pcstring('ATTACK.RANGED.STAT')}</stat_mod>
			<size_mod>${pcstring('ATTACK.RANGED.SIZE')}</size_mod>
			<misc_mod>${pcstring('ATTACK.RANGED.MISC')}</misc_mod>
			<epic_mod>${pcstring('VAR.charbonusto("COMBAT","EPICAB").INTVAL')}</epic_mod>
			<!-- ${pcstring('ATTACK.RANGED.EPIC')} -->
			<temp_mod/>
		</ranged>

			<grapple>
				<total>${pcstring('ATTACK.GRAPPLE.TOTAL')}</total>
				<bab>${pcstring('ATTACK.GRAPPLE.BASE')}</bab>
				<base_attack_bonus>${pcstring('ATTACK.GRAPPLE')}</base_attack_bonus>
				<stat_mod>${pcstring('ATTACK.GRAPPLE.STAT')}</stat_mod>
				<size_mod>${pcstring('ATTACK.GRAPPLE.SIZE')}</size_mod>
				<misc_mod>${pcstring('ATTACK.GRAPPLE.MISC')}</misc_mod>
				<epic_mod>${pcstring('ATTACK.GRAPPLE.EPIC')}</epic_mod>
				<temp_mod/>
			</grapple>
		<!-- End CMB / Grapple Block -->
	</attack>
	<!--
	  ====================================
	  ====================================
			WEAPONS
	  ====================================
	  ====================================-->
			<#macro weapCommonBlock weap>
			<common>
				<name>
					<short>${pcstring('WEAPON.${weap}.NAME')}</short>
					<long>${pcstring('WEAPON.${weap}.LONGNAME')}</long>
					<output>${pcstring('WEAPON.${weap}.OUTPUTNAME')}</output>
				</name>
				<category>${pcstring('WEAPON.${weap}.CATEGORY')}</category>
				<critical>
					<range>${pcstring('WEAPON.${weap}.CRIT')}</range>
					<multiplier>${pcstring('WEAPON.${weap}.MULT')}</multiplier>
				</critical>
				<to_hit>
					<hit>${pcstring('WEAPON.${weap}.HIT')}</hit>
					<magic_hit>${pcstring('WEAPON.${weap}.MAGICHIT')}</magic_hit>
					<total_hit>${pcstring('WEAPON.${weap}.TOTALHIT')}</total_hit>
				</to_hit>
				<feat>
					<hit>${pcstring('WEAPON.${weap}.FEATHIT')}</hit>
					<damage>${pcstring('WEAPON.${weap}.FEATDAMAGE')}</damage>
				</feat>
				<magic>
					<hit>${pcstring('WEAPON.${weap}.MAGICHIT')}</hit>
					<damage>${pcstring('WEAPON.${weap}.MAGICDAMAGE')}</damage>
				</magic>
				<template>
					<hit>${pcstring('WEAPON.${weap}.TEMPLATEHIT')}</hit>
					<damage>${pcstring('WEAPON.${weap}.TEMPLATEDAMAGE')}</damage>
				</template>
				<hand>${pcstring('WEAPON.${weap}.HAND')}</hand>
				<num_attacks>${pcstring('WEAPON.${weap}.NUMATTACKS')}</num_attacks>
				<reach>${pcstring('WEAPON.${weap}.REACH')}</reach>
				<reachunit>${pcstring('WEAPON.${weap}.REACHUNIT')}</reachunit>
				<size>${pcstring('WEAPON.${weap}.SIZE')}</size>
				<#if (pcstring("WEAPON.${weap}.ISTYPE.Natural.OR.WEAPON.${weap}.CATEGORY") = "NATURAL")>
					<special_properties>${pcstring('ABILITYALL.Special Ability.${weap}.ASPECT.UnarmedNotes')}</special_properties>
				<#else>
					<special_properties>${pcstring('WEAPON.${weap}.SPROP')}</special_properties>
				</#if>
				<type>${pcstring('WEAPON.${weap}.TYPE')}</type>
				<weight>${pcstring('WEAPON.${weap}.WT')}</weight>
				<attacks>${pcstring('WEAPON.${weap}.ATTACKS')}</attacks>
				<heft>${pcstring('WEAPON.${weap}.HEFT')}</heft>
				<range>${pcstring('WEAPON.${weap}.RANGE')}</range>
				<sizemod>${pcstring('WEAPON.${weap}.SIZEMOD')}</sizemod>
				<basehit>${pcstring('WEAPON.${weap}.BASEHIT')}</basehit>
				<misc>${pcstring('WEAPON.${weap}.MISC')}</misc>
				<damage>${pcstring('WEAPON.${weap}.DAMAGE')}</damage>
				<damagebonus>${pcstring('WEAPON.${weap}.DAMAGEBONUS')}</damagebonus>
				<basedamagebonus>${pcstring('WEAPON.${weap}.BASEDAMAGEBONUS')}</basedamagebonus>
				<thdamagebonus>${pcstring('WEAPON.${weap}.THDAMAGEBONUS')}</thdamagebonus>
				<ohdamagebonus>${pcstring('WEAPON.${weap}.OHDAMAGEBONUS')}</ohdamagebonus>
				<rateoffire>${pcstring('WEAPON.${weap}.RATEOFFIRE')}</rateoffire>
				<islight>${pcstring('WEAPON.${weap}.ISLIGHT')}</islight>
				<quality>${pcstring('WEAPON.${weap}.QUALITY')}</quality>
				<charges>${pcstring('WEAPON.${weap}.CHARGES')}</charges>
				<sequence>${weap}</sequence>
			</common>
			</#macro>
			<#macro weapMeleeBlock weap>
			<melee>
				<invalidtext>
					<tohit>${pcstring('INVALIDTEXT.TOHIT')}</tohit>
					<damage>${pcstring('INVALIDTEXT.DAMAGE')}</damage>
				</invalidtext>
				<hand>${pcstring('WEAPON.${weap}.HAND')}</hand>
				<w1_h1_p>
					<!-- One weapon, 1 hand, primary hand -->
					<to_hit>${pcstring('WEAPON.${weap}.BASEHIT')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.BASICDAMAGE')}</damage>
				</w1_h1_p>
				<w1_h1_o>
					<!-- One weapon, 1 handed, offhand -->
					<to_hit>${pcstring('WEAPON.${weap}.OHHIT')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.OHDAMAGE')}</damage>
				</w1_h1_o>
				<w1_h2>
					<!-- One weapon, 2 handed -->
					<to_hit>${pcstring('WEAPON.${weap}.THHIT')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.THDAMAGE')}</damage>
				</w1_h2>
				<w2_p_oh>
					<!-- Two weapons, this weapon in primary hand, other hand with heavy weapon -->
					<to_hit>${pcstring('WEAPON.${weap}.TWPHITH')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.BASICDAMAGE')}</damage>
				</w2_p_oh>
				<w2_p_ol>
					<!-- Two weapons, this weapon in primary hand, other hand with light weapon -->
					<to_hit>${pcstring('WEAPON.${weap}.TWPHITL')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.BASICDAMAGE')}</damage>
				</w2_p_ol>
				<w2_o>
					<!-- Two weapons, this weapon in off-hand -->
					<to_hit>${pcstring('WEAPON.${weap}.TWOHIT')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.OHDAMAGE')}</damage>
				</w2_o>
			</melee>
			</#macro>
			<#macro weapRangeBlock weap range>
				<#if (pcstring('WEAPON.${weap}.RANGELIST.${range}') != "") >
				<range>
					<distance>${pcstring('WEAPON.${weap}.RANGELIST.${range}')}</distance>
					<to_hit>${pcstring('WEAPON.${weap}.RANGELIST.${range}.TOTALHIT')}</to_hit>
					<damage>${pcstring('WEAPON.${weap}.RANGELIST.${range}.DAMAGE')}</damage>
					<basehit>${pcstring('WEAPON.${weap}.RANGELIST.${range}.BASEHIT')}</basehit>
					<tohit_offhand>${pcstring('WEAPON.${weap}.RANGELIST.${range}.OHHIT')}</tohit_offhand>
					<tohit_twohand>${pcstring('WEAPON.${weap}.RANGELIST.${range}.BASEHIT')}</tohit_twohand>
					<tohit_2weap_heavy>${pcstring('WEAPON.${weap}.RANGELIST.${range}.TWPHITH')}</tohit_2weap_heavy>
					<tohit_2weap_light>${pcstring('WEAPON.${weap}.RANGELIST.${range}.TWPHITL')}</tohit_2weap_light>
					<tohit_2weap_offhand>${pcstring('WEAPON.${weap}.RANGELIST.${range}.TWOHIT')}</tohit_2weap_offhand>
					<@loop from=0 to=pcvar('WEAPON.${weap}.CONTENTS-1') ; ammo , ammo_has_next>
					<ammunition>
						<name>${pcstring('WEAPON.${weap}.CONTENTS.${ammo}')}</name>
						<special_properties>${pcstring('WEAPON.${weap}.CONTENTS.${ammo}.SPROP')}</special_properties>
						<quantity>${pcstring('EQ.IS.WEAPON.${weap}.CONTENTS.${ammo}.QTY')}</quantity>
						<to_hit>${pcstring('WEAPON.${weap}.RANGELIST.${range}.CONTENTS.${ammo}.TOTALHIT')}</to_hit>
						<damage>${pcstring('WEAPON.${weap}.RANGELIST.${range}.CONTENTS.${ammo}.DAMAGE')}</damage>
					</ammunition>
					</@loop>
				</range>
				</#if>
			</#macro>

	<weapons>
		<unarmed>
			<#assign fab = pcstring('WEAPONH.TOTALHIT')?keep_before("/")?number>
			<flurry_level>${pcvar('VAR.FlurryLVL.INTVAL')}</flurry_level>
			<flurry_attacks>${pcvar('VAR.FlurryAttacks.INTVAL')}</flurry_attacks>
			<fab_1>${pcvar('VAR.FAB_1.INTVAL')}</fab_1>
			<fab_2>${pcvar('VAR.FAB_2.INTVAL')}</fab_2>
			<fab_3>${pcvar('VAR.FAB_3.INTVAL')}</fab_3>
			<fab_4>${pcvar('VAR.FAB_4.INTVAL')}</fab_4>
			<fab_5>${pcvar('VAR.FAB_5.INTVAL')}</fab_5>
			<fab_6>${pcvar('VAR.FAB_6.INTVAL')}</fab_6>
			<fab_7>${pcvar('VAR.FAB_7.INTVAL')}</fab_7>
			<fab_8>${pcvar('VAR.FAB_8.INTVAL')}</fab_8>
			<fab_9>${pcvar('VAR.FAB_9.INTVAL')}</fab_9>
			<total>${pcstring('WEAPONH.TOTALHIT')}</total>
			<to_hit>${fab}</to_hit>
			<damage>${pcstring('WEAPONH.DAMAGE')}</damage>
			<critical>${pcstring('WEAPONH.CRIT')}/x${pcstring('WEAPONH.MULT')}</critical>
			<!-- Should be changed to a variable due to improved crit -->
			<reach>${pcstring('REACH')}</reach>
			<special_property>
			<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=UnarmedDisplay")-1') ; ability , ability_has_next>
			${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=UnarmedDisplay.ASPECT.UnarmedNotes')}
			</@loop>
			</special_property>
						<!-- Commenting this out (will need a test as well)
			3.0 uses "Subdual", 3.5 uses "nonlethal".  We'll need a separate node for both.	-->
			<#if (gamemodename = "3e")>
			<#if (pcvar('VAR.Unarmed') > 0)>
			<type>(subdual or normal)</type>
			<#else>
			<type>(subdual only)</type>
			</#if>
			<#else>
			<#if (pcvar('VAR.UnarmedLethal') > 0)>
			<type>(lethal or nonlethal)</type>
			<#else>
			<type>(nonlethal only)</type>
			</#if>
			</#if>
		</unarmed>
		</#if>




		<#-- Equipped weapon loop -->
		<@loop from=0 to=pcvar('COUNT[EQTYPE.WEAPON]-1') ; weap , weap_has_next><#-- TODO: Loop was of early exit type 1 -->
		<#assign weaponCategory>
			${pcstring('WEAPON.${weap}.CATEGORY')?lower_case}
		</#assign>
		<#if (weaponCategory?contains('both'))>

		<#if (weaponCategory?contains('ranged'))>
		<#else><#-- IIF(WEAPON.${weap}.CATEGORY:Ranged) -->
		<weapon>
			<@weapCommonBlock weap="${weap}" />
			<@weapMeleeBlock weap="${weap}" />
			</#if><#-- IIF(WEAPON.${weap}.CATEGORY:Ranged) -->
			<#if (weaponCategory?contains('ranged'))><#-- We work out now whether this is a Ranged Only or Thrown -->
			<#if (pcboolean('WEAPON.${weap}.ISTYPE.Thrown'))><#-- Valid only if we find the Thrown Value -->
			<ranges>
				<rangetype>Thrown</rangetype>
			<#if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0)>
				<@loop from=0 to=5 ; range , range_has_next>
				<@weapRangeBlock weap="${weap}" range="${range}" />
				</@loop><#-- Range -->
			</#if><#-- if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0) -->
			</ranges>
			<#else><#-- IIF(WEAPON.${weap}.ISTYPE.Thrown) but IS Ranged -->

			<!-- New Ranges Section -->
			<ranges>
			<rangetype>Ranged</rangetype><!-- ranged first -->
			<#if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0)>
				<@loop from=0 to=10 ; range , range_has_next>
				<@weapRangeBlock weap="${weap}" range="${range}" />
				</@loop><#-- Range -->
			</#if><#-- if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0) -->
			</ranges>

	</#if><#-- IIF(WEAPON.${weap}.ISTYPE.Thrown) -->
		</weapon>
	<#else><#-- CATEGORY:Ranged) -->
	</#if><#-- CATEGORY:Ranged) -->
	<!-- End New Ranges Section -->
	<#else><#-- IIF(WEAPON.${weap}.CATEGORY:BOTH) -->
	<#if (weaponCategory?contains('ranged'))>
		<weapon>
			<@weapCommonBlock weap="${weap}" />
			<#if (pcstring("WEAPON.${weap}.CONTENTS") = "0")>
			<ranges>
			<#if (pcboolean('WEAPON.${weap}.ISTYPE.Thrown'))>

				<rangetype>Thrown</rangetype>
				<#if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0)>
					<@loop from=0 to=5 ; range , range_has_next>
						<@weapRangeBlock weap="${weap}" range="${range}" />
					</@loop><!-- Range -->
				</#if><#-- if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0) -->
				<#else><#-- Thrown -->
				<rangetype>Ranged</rangetype><!-- ranged second -->
			<#if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0)>
				<@loop from=0 to=10 ; range , range_has_next>
				<@weapRangeBlock weap="${weap}" range="${range}" />
				</@loop><#-- Range -->
			</#if><#-- if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0) -->
			</#if><#-- Thrown -->
			</ranges>
			<#else><#-- IIF(WEAPON.${weap}.CONTENTS:0) -->
			<@loop from=0 to=pcvar('WEAPON.${weap}.CONTENTS-1') ; ammo , ammo_has_next>
			<ranges>
					<ammunition>
						<name>${pcstring('WEAPON.${weap}.CONTENTS.${ammo}')}</name>
						<special_properties>${pcstring('WEAPON.${weap}.CONTENTS.${ammo}.SPROP')}</special_properties>
						<quantity>${pcstring('EQ.IS.WEAPON.${weap}.CONTENTS.${ammo}.QTY')}</quantity>
						<to_hit>${pcstring('WEAPON.${weap}.RANGELIST.${weap}.CONTENTS.${ammo}.TOTALHIT')}</to_hit>
						<damage>${pcstring('WEAPON.${weap}.RANGELIST.${weap}.CONTENTS.${ammo}.DAMAGE')}</damage>
					</ammunition>
				<ammunition>
						<name>${pcstring('WEAPON.${weap}.CONTENTS.${ammo}')}</name>
				</ammunition>
				<#if (pcboolean('WEAPON.${weap}.ISTYPE.Thrown'))>
				<rangetype>Thrown</rangetype>
				<#if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0)>
					<@loop from=0 to=5 ; range , range_has_next>
					<@weapRangeBlock weap="${weap}" range="${range}" />
					</@loop><#-- Range -->
				</#if><#-- if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0) -->
				<#else><#--IIF(WEAPON.%weap.ISTYPE.Thrown) -->
				<rangetype>Ranged</rangetype><!-- Ranged third -->
				<#if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0)>
					<@loop from=0 to=10 ; range , range_has_next>
					<@weapRangeBlock weap="${weap}" range="${range}" />
					</@loop><#-- Range -->
				</#if><#-- if (pcvar("WEAPON.${weap}.RANGE.NOUNITS") > 0) -->

			</#if><#--IIF(WEAPON.%weap.ISTYPE.Thrown) -->

			</ranges>
		</@loop><#-- FOR,${ammo},0,WEAPON.${weap}.CONTENTS-1,1,1 -->
		</#if><#-- IIF(WEAPON.${weap}.CONTENTS:0) -->
		</weapon>

		<#else><#-- IIF(WEAPON.${weap}.CATEGORY:Ranged) -->
	<!--	Request to remove the Double Weapon Block OS-133		-->
		<#if (pcboolean('WEAPON.${weap}.ISTYPE.Double') || pcboolean('WEAPON.${weap}.ISTYPE.TwoHanded') || weaponCategory?contains('non-standard-melee') || weaponCategory?contains('natural'))>
		<weapon>
			<@weapCommonBlock weap="${weap}" />
			<simple>
				<to_hit>${pcstring('WEAPON.${weap}.TOTALHIT')}</to_hit>
				<damage>${pcstring('WEAPON.${weap}.DAMAGE')}</damage>
				<range>${pcstring('WEAPON.${weap}.RANGE')}</range>
				<!-- This is an Addition by Itwally for the Monk Flurry of Blows Fix per DATA-73 -->
				<name>${pcstring('WEAPON.${weap}.NAME')}</name>
				<class><@loop from=0 to=pcvar('countdistinct("CLASSES")')-1 ; class , class_has_next ><#rt>
				<#t><@pcstring tag="CLASSABB.${class}"/><@pcstring tag="CLASS.${class}.LEVEL"/><#if class_has_next> </#if>
			<#t></@loop></class>
		<!-- End DATA-73 Work Around-->
			</simple>
		</weapon>
		<#else><#-- IIF(WEAPON.${weap}.ISTYPE.Double.OR.WEAPON.${weap}.CATEGORY:Non-Standard-Melee) -->
		<weapon>
			<@weapCommonBlock weap="${weap}" />
			<@weapMeleeBlock weap="${weap}" />
		</weapon>
		</#if><#-- IIF(WEAPON.weap}.ISTYPE.Double.OR.WEAPON.${weap}.CATEGORY:Non-Standard-Melee) -->
		</#if><#-- IIF(WEAPON.weap}.CATEGORY:Ranged) -->
		</#if><#-- IIF(WEAPON.weap}.CATEGORY:BOTH) -->
	</@loop><#-- FOR,weap},0,COUNT[EQTYPE.WEAPON]-1,1,1 -->
	</weapons>
	<!--
	  ====================================
	  ====================================
			ARMOR
	  ====================================
	  ====================================-->
	<protection>
		<@loop from=0 to=pcvar('COUNT[EQTYPE.Armor]-1') ; armor , armor_has_next>
		<armor>
			<name>${pcstring('ARMOR.Armor.ALL.${armor}.NAME')}</name>
			<acbonus>${pcstring('ARMOR.Armor.ALL.${armor}.ACBONUS')}</acbonus>
			<accheck>${pcstring('ARMOR.Armor.ALL.${armor}.ACCHECK')}</accheck>
			<baseac>${pcstring('ARMOR.Armor.ALL.${armor}.BASEAC')}</baseac>
			<edr>${pcstring('ARMOR.Armor.ALL.${armor}.EDR')}</edr>
			<maxdex>${pcstring('ARMOR.Armor.ALL.${armor}.MAXDEX')}</maxdex>
			<move>${pcstring('ARMOR.Armor.ALL.${armor}.MOVE')}</move>
			<spellfail>${pcstring('ARMOR.Armor.ALL.${armor}.SPELLFAIL')}</spellfail>
			<special_properties>${pcstring('ARMOR.Armor.ALL.${armor}.SPROP')}</special_properties>
			<totalac>${pcstring('ARMOR.Armor.ALL.${armor}.TOTALAC')}</totalac>
			<type>${pcstring('ARMOR.Armor.ALL.${armor}.TYPE')}</type>
			<wt>${pcstring('ARMOR.Armor.ALL.${armor}.WT')}</wt>
			<fulltype>${pcstring('EQTYPE.Armor.${armor}.TYPE')}</fulltype>
			<location>${pcstring('EQTYPE.Armor.${armor}.LOCATION')}</location>
		</armor>
		</@loop>
		<@loop from=0 to=pcvar('COUNT[EQTYPE.SHIELD]-1') ; armor , armor_has_next>
		<shield>
			<name>${pcstring('ARMOR.SHIELD.ALL.${armor}.NAME')}</name>
			<acbonus>${pcstring('ARMOR.SHIELD.ALL.${armor}.ACBONUS')}</acbonus>
			<accheck>${pcstring('ARMOR.SHIELD.ALL.${armor}.ACCHECK')}</accheck>
			<baseac>${pcstring('ARMOR.SHIELD.ALL.${armor}.BASEAC')}</baseac>
			<edr>${pcstring('ARMOR.SHIELD.ALL.${armor}.EDR')}</edr>
			<maxdex>${pcstring('ARMOR.SHIELD.ALL.${armor}.MAXDEX')}</maxdex>
			<move>${pcstring('ARMOR.SHIELD.ALL.${armor}.MOVE')}</move>
			<spellfail>${pcstring('ARMOR.SHIELD.ALL.${armor}.SPELLFAIL')}</spellfail>
			<special_properties>${pcstring('ARMOR.SHIELD.ALL.${armor}.SPROP')}</special_properties>
			<totalac>${pcstring('ARMOR.SHIELD.ALL.${armor}.TOTALAC')}</totalac>
			<type>${pcstring('ARMOR.SHIELD.ALL.${armor}.TYPE')}</type>
			<wt>${pcstring('ARMOR.SHIELD.ALL.${armor}.WT')}</wt>
		</shield>
		</@loop>
		<@loop from=0 to=pcvar('COUNT[EQTYPE.ACITEM]-1') ; armor , armor_has_next>
		<item>
			<name>${pcstring('ARMOR.ACITEM.${armor}.NAME')}</name>
			<acbonus>${pcstring('ARMOR.ACITEM.${armor}.ACBONUS')}</acbonus>
			<accheck>${pcstring('ARMOR.ACITEM.${armor}.ACCHECK')}</accheck>
			<baseac>${pcstring('ARMOR.ACITEM.${armor}.BASEAC')}</baseac>
			<edr>${pcstring('ARMOR.ACITEM.${armor}.EDR')}</edr>
			<maxdex>${pcstring('ARMOR.ACITEM.${armor}.MAXDEX')}</maxdex>
			<move>${pcstring('ARMOR.ACITEM.${armor}.MOVE')}</move>
			<spellfail>${pcstring('ARMOR.ACITEM.${armor}.SPELLFAIL')}</spellfail>
			<special_properties>${pcstring('ARMOR.ACITEM.${armor}.SPROP')}</special_properties>
			<totalac>${pcstring('ARMOR.ACITEM.${armor}.TOTALAC')}</totalac>
			<type>${pcstring('ARMOR.ACITEM.${armor}.TYPE')}</type>
			<wt>${pcstring('ARMOR.ACITEM.${armor}.WT')}</wt>
		</item>
		</@loop>
	</protection>
	<!--
	  ====================================
	  ====================================
			CLASS-DEPENDANT FEATURES
	  ====================================
	  ====================================-->
	<class_features>

		<#if (pcvar("VAR.TOTALPOWERPOINTS") >= 1) >	<!-- Psionics -->
		<psionics>
			<#if (pchasvar("Manifester") || pchasvar("PsychicWarriorManifester"))>
			<type>3.0</type>
			<#else>
			<type>3.5</type>
			</#if>
			<base_pp>${pcstring('VAR.BASEPOWERPOINTS.INTVAL')}</base_pp>
			<bonus_pp>${pcstring('VAR.BONUSPOWERPOINTS.INTVAL')}</bonus_pp>
			<total_pp>${pcstring('VAR.TOTALPOWERPOINTS.INTVAL')}</total_pp>
		</psionics>
		</#if>	<!-- Psionics -->


	</class_features>

	<!-- Abilites with check lists - master/child abilities -->
	<checklists>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","ASPECT=CheckType")-1') ; ability , ability_has_next>
		<checklist>
		<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.TYPE")?lower_case?contains("extraordinary"))>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType')} (Ex)</name>
		<#else>
		<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.TYPE")?lower_case?contains("supernatural"))>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType')} (Su)</name>
		<#else>
		<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.TYPE")?lower_case?contains("spelllike"))>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType')} (Sp)</name>
		<#else>
		</#if>
		</#if>
		</#if>
			<header>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType')}</header>
			<description>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.ASPECT.DESC')}</description>
			<type>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.TYPE')}</type>
			<source>${pcstring('ABILITYALL.Special Ability.VISIBLE.${ability}.ASPECT=CheckType.SOURCE')}</source>
			<check_count>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.ASPECT.CheckCount.INTVAL')}</check_count>
			<check_type>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.ASPECT.CheckType')}</check_type>
			<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.HASASPECT.MasterAbility") = "Y")>
			<master>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.ASPECT.MasterAbility')}</master>
			<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability")-1') ; subability , subability_has_next>
			<#if (pcstring("ABILITYALL.Special Ability.${subability}.ASPECT.ChildAbility") = pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=CheckType.ASPECT.MasterAbility"))>
			<subability>
				<name>${pcstring('ABILITYALL.Special Ability.${subability}')}</name>
				<description>${pcstring('ABILITYALL.Special Ability.${subability}.DESC')}</description>
				<type>${pcstring('ABILITYALL.Special Ability.${subability}.TYPE')}</type>
				<source>${pcstring('ABILITYALL.Special Ability.${subability}.SOURCE')}</source>
				<child>${pcstring('ABILITYALL.Special Ability.${subability}.ASPECT.ChildAbility')}</child>
			</subability>
			</#if>
			</@loop>
			</#if>
		</checklist>
	</@loop>
	</checklists>

	<!-- Proficiency lists -->
	<proficiency_specials>
	<#if (pcvar('countdistinct("ABILITIES";"CATEGORY=Special Ability";"TYPE=ProfOutput")') = 0)>
	<#else>
	<!--  -->
	</#if>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=ProfOutput")-1') ; ability , ability_has_next>
		<proficiency>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=ProfOutput')}</name>
			<proficient>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=ProfOutput.ASPECT.Proficiency')}</proficient>
			<forte>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=ProfOutput.ASPECT.Forte')}</forte>
		</proficiency>
	</@loop>
	</proficiency_specials>

	<!--
	  ====================================
	  ====================================
			EQUIPMENT
	  ====================================
	  ====================================-->
	<equipment>
		<@loop from=0 to=pcvar('COUNT[EQUIPMENT.MERGELOC]-1') ; equip , equip_has_next><#lt><#-- TODO: Loop was of early exit type 1 -->
		<item>
			<longname>${pcstring('EQ.MERGELOC.${equip}.LONGNAME')}</longname>
			<id>${pcstring('EQ.MERGELOC.${equip}.ID')}</id>
			<name>${pcstring('EQ.MERGELOC.${equip}.NAME')}</name>
			<carried>${pcstring('EQ.MERGELOC.${equip}.CARRIED')}</carried>
			<charges>${pcstring('EQ.MERGELOC.${equip}.CHARGES')}</charges>
			<charges_used>${pcstring('EQ.MERGELOC.${equip}.CHARGESUSED')}</charges_used>
			<contents>${pcstring('EQ.MERGELOC.${equip}.CONTENTS')}</contents>
			<contents_num>${pcstring('EQ.MERGELOC.${equip}.CONTENTSNUM')}</contents_num>
			<content_weight>${pcstring('EQ.MERGELOC.${equip}.CONTENTWEIGHT')}</content_weight>
			<cost>${pcstring('EQ.MERGELOC.${equip}.COST')}</cost>
			<equipped>${pcstring('EQ.MERGELOC.${equip}.EQUIPPED')}</equipped>
			<location>${pcstring('EQ.MERGELOC.${equip}.LOCATION')}</location>
			<locationId>${pcstring('EQ.MERGELOC.${equip}.LOCATIONID')}</locationId>
			<maxcharges>${pcstring('EQ.MERGELOC.${equip}.MAXCHARGES')}</maxcharges>
			<note>${pcstring('EQ.MERGELOC.${equip}.NOTE')}</note>
			<quantity>${pcstring('EQ.MERGELOC.${equip}.QTY')}</quantity>
			<checkbox>${pcstring('EQ.MERGELOC.${equip}.CHECKBOXES')}</checkbox>
			<size>
				<long>${pcstring('EQ.MERGELOC.${equip}.SIZELONG')}</long>
				<short>${pcstring('EQ.MERGELOC.${equip}.SIZE')}</short>
			</size>
			<special_properties>${pcstring('EQ.MERGELOC.${equip}.SPROP')}</special_properties>
			<type>${pcstring('EQ.MERGELOC.${equip}.TYPE')}</type>
			<weight>${pcstring('EQ.MERGELOC.${equip}.WT')}</weight>
			<total_wt>${pcstring('EQ.MERGELOC.${equip}.TOTALWT')}</total_wt>
			<total_weight>${pcstring('EQ.MERGELOC.${equip}.TOTALWEIGHT')}</total_weight>
			<bonuslist>${pcstring('EQ.MERGELOC.${equip}.BONUSLIST')}</bonuslist>
			<acmod>${pcstring('EQ.MERGELOC.${equip}.ACMOD')}</acmod>
			<maxdex>${pcstring('EQ.MERGELOC.${equip}.MAXDEX')}</maxdex>
			<accheck>${pcstring('EQ.MERGELOC.${equip}.ACCHECK')}</accheck>
			<edr>${pcstring('EQ.MERGELOC.${equip}.EDR')}</edr>
			<move>${pcstring('EQ.MERGELOC.${equip}.MOVE')}</move>
			<spell_failure>${pcstring('EQ.MERGELOC.${equip}.SPELLFAILURE')}</spell_failure>
			<damage>${pcstring('EQ.MERGELOC.${equip}.DAMAGE')}</damage>
			<damage_alt>${pcstring('EQ.MERGELOC.${equip}.ALTDAMAGE')}</damage_alt>
			<crit_range>${pcstring('EQ.MERGELOC.${equip}.CRITRANGE')}</crit_range>
			<crit_mult>${pcstring('EQ.MERGELOC.${equip}.CRITMULT')}</crit_mult>
			<crit_range_alt>${pcstring('EQ.MERGELOC.${equip}.ALTCRITRANGE')}</crit_range_alt>
			<crit_mult_alt>${pcstring('EQ.MERGELOC.${equip}.ALTCRITMULT')}</crit_mult_alt>
			<range>${pcstring('EQ.MERGELOC.${equip}.RANGE')}</range>
			<attacks>${pcstring('EQ.MERGELOC.${equip}.ATTACKS')}</attacks>
			<prof>${pcstring('EQ.MERGELOC.${equip}.PROF')}</prof>
			<source>${pcstring('EQ.MERGELOC.${equip}.SOURCE')}</source>
			<quality>${pcstring('EQ.MERGELOC.${equip}.QUALITY')}</quality>
		</item>
		</@loop><#lt><#-- Equipment -->
		<total>
			<weight>${pcstring('TOTAL.WEIGHT')}</weight>
			<value>${pcstring('TOTAL.VALUE')}</value>
			<load>${pcstring('TOTAL.LOAD')}</load>
			<capacity>${pcstring('TOTAL.CAPACITY')}</capacity>
		</total>
		<equipmentsets>
		<@equipsetloop><#lt>
		<equipmentset name="${pcstring('EQSET.NAME')}">
			<@loop from=0 to=pcvar('COUNT[EQUIPMENT.MERGELOC]-1') ; equip , equip_has_next>
				<item>
					<longname>${pcstring('EQ.MERGELOC.${equip}.LONGNAME')}</longname>
					<name>${pcstring('EQ.MERGELOC.${equip}.NAME')}</name>
					<carried>${pcstring('EQ.MERGELOC.${equip}.CARRIED')}</carried>
					<charges>${pcstring('EQ.MERGELOC.${equip}.CHARGES')}</charges>
					<charges_used>${pcstring('EQ.MERGELOC.${equip}.CHARGESUSED')}</charges_used>
					<contents>${pcstring('EQ.MERGELOC.${equip}.CONTENTS')}</contents>
					<contents_num>${pcstring('EQ.MERGELOC.${equip}.CONTENTSNUM')}</contents_num>
					<content_weight>${pcstring('EQ.MERGELOC.${equip}.CONTENTWEIGHT')}</content_weight>
					<cost>${pcstring('EQ.MERGELOC.${equip}.COST')}</cost>
					<equipped>${pcstring('EQ.MERGELOC.${equip}.EQUIPPED')}</equipped>
					<location>${pcstring('EQ.MERGELOC.${equip}.LOCATION')}</location>
					<maxcharges>${pcstring('EQ.MERGELOC.${equip}.MAXCHARGES')}</maxcharges>
					<note>${pcstring('EQ.MERGELOC.${equip}.NOTE')}</note>
					<quantity>${pcstring('EQ.MERGELOC.${equip}.QTY')}</quantity>
					<checkbox>${pcstring('EQ.MERGELOC.${equip}.CHECKBOXES')}</checkbox>
					<size>
						<long>${pcstring('EQ.MERGELOC.${equip}.SIZELONG')}</long>
						<short>${pcstring('EQ.MERGELOC.${equip}.SIZE')}</short>
					</size>
					<special_properties>${pcstring('EQ.MERGELOC.${equip}.SPROP')}</special_properties>
					<type>${pcstring('EQ.MERGELOC.${equip}.TYPE')}</type>
					<weight>${pcstring('EQ.MERGELOC.${equip}.WT')}</weight>
					<total_wt>${pcstring('EQ.MERGELOC.${equip}.TOTALWT')}</total_wt>
					<total_weight>${pcstring('EQ.MERGELOC.${equip}.TOTALWEIGHT')}</total_weight>
					<bonuslist>${pcstring('EQ.MERGELOC.${equip}.BONUSLIST')}</bonuslist>
					<acmod>${pcstring('EQ.MERGELOC.${equip}.ACMOD')}</acmod>
					<maxdex>${pcstring('EQ.MERGELOC.${equip}.MAXDEX')}</maxdex>
					<accheck>${pcstring('EQ.MERGELOC.${equip}.ACCHECK')}</accheck>
					<edr>${pcstring('EQ.MERGELOC.${equip}.EDR')}</edr>
					<move>${pcstring('EQ.MERGELOC.${equip}.MOVE')}</move>
					<spell_failure>${pcstring('EQ.MERGELOC.${equip}.SPELLFAILURE')}</spell_failure>
					<damage>${pcstring('EQ.MERGELOC.${equip}.DAMAGE')}</damage>
					<damage_alt>${pcstring('EQ.MERGELOC.${equip}.ALTDAMAGE')}</damage_alt>
					<crit_range>${pcstring('EQ.MERGELOC.${equip}.CRITRANGE')}</crit_range>
					<crit_mult>${pcstring('EQ.MERGELOC.${equip}.CRITMULT')}</crit_mult>
					<crit_range_alt>${pcstring('EQ.MERGELOC.${equip}.ALTCRITRANGE')}</crit_range_alt>
					<crit_mult_alt>${pcstring('EQ.MERGELOC.${equip}.ALTCRITMULT')}</crit_mult_alt>
					<range>${pcstring('EQ.MERGELOC.${equip}.RANGE')}</range>
					<attacks>${pcstring('EQ.MERGELOC.${equip}.ATTACKS')}</attacks>
					<prof>${pcstring('EQ.MERGELOC.${equip}.PROF')}</prof>
					<source>${pcstring('EQ.MERGELOC.${equip}.SOURCE')}</source>
					<quality>EQ.0.QUALITY</quality>
				</item>
			</@loop><#lt><#-- Equipment -->
			</equipmentset>
			</@equipsetloop><#lt>
		</equipmentsets>
	</equipment>
	<weight_allowance>
		<light>${pcstring('WEIGHT.LIGHT')}</light>
		<medium>${pcstring('WEIGHT.MEDIUM')}</medium>
		<heavy>${pcstring('WEIGHT.HEAVY')}</heavy>
		<lift_over_head>${pcstring('WEIGHT.OVERHEAD')}</lift_over_head>
		<lift_off_ground>${pcstring('WEIGHT.OFFGROUND')}</lift_off_ground>
		<!-- And loses Dex bonus to AC and can only move 5 feet per round as a full-round action -->
		<push_drag>${pcstring('WEIGHT.PUSHDRAG')}</push_drag>
	</weight_allowance>
	<!--
	  ====================================
	  ====================================
			SPECIAL ABILITIES
	  ====================================
	  ====================================-->
	<special_abilities>
		<@loop from=0 to=pcvar('COUNT[SA]-1') ; sa , sa_has_next>
		<ability>
			<name>${pcstring('SPECIALABILITY.${sa}')}</name>
			<description>${pcstring('SPECIALABILITY.${sa}.DESCRIPTION')}</description>
		</ability>
		</@loop>
		<race>${pcstring('RACE.ABILITYLIST')}</race>
		<@loop from=0 to=pcvar('COUNT[CLASSES]-1') ; class , class_has_next>
		<class>
			<class>${pcstring('CLASS.${class}')}</class>
			<ability>${pcstring('CLASS.${class}.SALIST')}</ability>
		</class>
		</@loop>
	</special_abilities>
	<!--
	  ====================================
	  ====================================
			FEAT
	  ====================================
	  ====================================-->
	<feats>
		<!-- Visible standard feats (not including the auto feats) -->
		<@loop from=0 to=pcvar('COUNT[FEATS.VISIBLE]-1') ; feat , feat_has_next>
		<feat>
			<name>${pcstring('FEAT.VISIBLE.${feat}')}</name>
			<description>${pcstring('FEAT.VISIBLE.${feat}.DESC')}</description>
			<benefit>${pcstring('FEAT.VISIBLE.${feat}.BENEFIT')}</benefit>
			<type>${pcstring('FEAT.VISIBLE.${feat}.TYPE')}</type>
			<associated>${pcstring('FEAT.VISIBLE.${feat}.ASSOCIATED')}</associated>
			<count>${pcstring('FEAT.VISIBLE.${feat}.ASSOCIATEDCOUNT')}</count>
			<auto>F</auto>
			<hidden>F</hidden>
			<virtual>F</virtual>
			<source>${pcstring('FEAT.VISIBLE.${feat}.SOURCE')}</source>
		</feat>
		</@loop>

		<!-- Auto feats -->
		<@loop from=0 to=pcvar('COUNT[FEATSAUTO.VISIBLE]-1') ; feat , feat_has_next>
		<feat>
			<name>${pcstring('FEATAUTO.VISIBLE.${feat}')}</name>
			<description>${pcstring('FEATAUTO.VISIBLE.${feat}.DESC')}</description>
			<benefit>${pcstring('FEATAUTO.VISIBLE.${feat}.BENEFIT')}</benefit>
			<type>${pcstring('FEATAUTO.VISIBLE.${feat}.TYPE')}</type>
			<associated>${pcstring('FEATAUTO.VISIBLE.${feat}.ASSOCIATED')}</associated>
			<count>${pcstring('FEATAUTO.VISIBLE.${feat}.ASSOCIATEDCOUNT')}</count>
			<auto>T</auto>
			<hidden>F</hidden>
			<virtual>F</virtual>
			<source>${pcstring('FEATAUTO.VISIBLE.${feat}.SOURCE')}</source>
		</feat>
		</@loop>

		<!-- Virtual Feats -->
		<@loop from=0 to=pcvar('COUNT[VFEATS.VISIBLE]-1') ; feat , feat_has_next>
		<feat>
			<name>${pcstring('VFEAT.VISIBLE.${feat}')} (Granted)</name>
			<description>${pcstring('VFEAT.VISIBLE.${feat}.DESC')}</description>
			<benefit>${pcstring('VFEAT.VISIBLE.${feat}.BENEFIT')}</benefit>
			<type>${pcstring('VFEAT.VISIBLE.${feat}.TYPE')}</type>
			<associated>${pcstring('VFEAT.VISIBLE.${feat}.ASSOCIATED')}</associated>
			<count>${pcstring('VFEAT.VISIBLE.${feat}.ASSOCIATEDCOUNT')}</count>
			<auto>F</auto>
			<hidden>F</hidden>
			<virtual>T</virtual>
			<source>${pcstring('VFEAT.VISIBLE.${feat}.SOURCE')}</source>
		</feat>
		</@loop>
		<!-- End Virtual Feats -->
		<!-- Hidden feats (all feats less the virtual, automatic and visible ones) -->
		<@loop from=0 to=pcvar('COUNT[FEATS.HIDDEN]-1') ; feat , feat_has_next>
		<feat>
			<name>${pcstring('FEAT.HIDDEN.${feat}')}</name>
			<description>${pcstring('FEAT.HIDDEN.${feat}.DESC')}</description>
			<benefit>${pcstring('FEAT.HIDDEN.${feat}.BENEFIT')}</benefit>
			<type>${pcstring('FEAT.HIDDEN.${feat}.TYPE')}</type>
			<associated>${pcstring('FEAT.HIDDEN.${feat}.ASSOCIATED')}</associated>
			<count>${pcstring('FEAT.HIDDEN.${feat}.ASSOCIATEDCOUNT')}</count>
			<auto>F</auto>
			<hidden>T</hidden>
			<virtual>F</virtual>
			<source>${pcstring('FEAT.HIDDEN.${feat}.SOURCE')}</source>
		</feat>
		</@loop>
		<!-- Hidden VFEAT -->
		<@loop from=0 to=pcvar('COUNT[VFEATS.HIDDEN]-1') ; feat , feat_has_next>
		<feat>
			<name>${pcstring('VFEAT.HIDDEN.${feat}')}</name>
			<description>${pcstring('VFEAT.HIDDEN.${feat}.DESC')}</description>
			<benefit>${pcstring('VFEAT.HIDDEN.${feat}.BENEFIT')}</benefit>
			<type>${pcstring('VFEAT.HIDDEN.${feat}.TYPE')}</type>
			<associated>${pcstring('VFEAT.HIDDEN.${feat}.ASSOCIATED')}</associated>
			<count>${pcstring('VFEAT.HIDDEN.${feat}.ASSOCIATEDCOUNT')}</count>
			<auto>F</auto>
			<hidden>T</hidden>
			<virtual>T</virtual>
			<source>${pcstring('VFEAT.HIDDEN.${feat}.SOURCE')}</source>
		</feat>
		</@loop>
		<!-- END Hidden VFEAT -->
		<@loop from=0 to=pcvar('COUNT[FEATSAUTO.HIDDEN]-1') ; feat , feat_has_next>
		<feat>
			<name>${pcstring('FEATAUTO.HIDDEN.${feat}')}</name>
			<description>${pcstring('FEATAUTO.HIDDEN.${feat}.DESC')}</description>
			<benefit>${pcstring('FEATAUTO.HIDDEN.${feat}.BENEFIT')}</benefit>
			<type>${pcstring('FEATAUTO.HIDDEN.${feat}.TYPE')}</type>
			<associated>${pcstring('FEATAUTO.HIDDEN.${feat}.ASSOCIATED')}</associated>
			<count>${pcstring('FEATAUTO.HIDDEN.${feat}.ASSOCIATEDCOUNT')}</count>
			<auto>T</auto>
			<hidden>T</hidden>
			<virtual>F</virtual>
			<source>${pcstring('FEATAUTO.HIDDEN.${feat}.SOURCE')}</source>
		</feat>
		</@loop>
	</feats>

	<#-- ABILITY OBJECTS -->
	<#macro abilityBlock category nature hidden typeName nodeName >
	<#if hidden>
		<#assign visCriteria = 'VISIBILITY=HIDDEN[or]VISIBILITY=DISPLAY_ONLY' />
		<#assign visName = 'HIDDEN' />
	<#else>
		<#assign visCriteria = 'VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY' />
		<#assign visName = 'VISIBLE' />
	</#if>
	<#assign abilityToken = 'ABILITY' />
	<#assign isAuto = 'F' />
	<#assign isVirtual = 'F' />
	<#if nature='AUTOMATIC'>
		<#assign abilityToken = 'ABILITYAUTO' />
		<#assign isAuto = 'T' />
	<#elseif nature='VIRTUAL' >
		<#assign abilityToken = 'VABILITY' />
		<#assign isVirtual = 'T' />
	<#elseif nature='ALL' >
		<#assign abilityToken = 'ABILITYALL' />
	</#if>
	<#assign typeFilter = "" />
	<#assign typeCountFilter = "" />
	<#if typeName!=''>
		<#assign typeFilter = ".TYPE=${typeName}" />
		<#assign typeCountFilter = ',"TYPE=${typeName}"' />
	</#if>
	<#if (nature='ALL') >
		<#assign numAbilities =
			pcvar('countdistinct("ABILITIES","CATEGORY=${category}","${visCriteria}"${typeCountFilter})') />
	<#else>
		<#assign numAbilities =
			pcvar('countdistinct("ABILITIES","CATEGORY=${category}","${visCriteria}","NATURE=${nature}"${typeCountFilter})') />
	</#if>
	<#if (numAbilities > 0) >
		<!-- ${visName?capitalize} ${nature?capitalize} "${category}" Ability Objects -->
	</#if>
	<@loop from=0 to=numAbilities-1 ; abilityIdx >
		<#assign abilityExportToken = "${abilityToken}.${category}.${visName}.${abilityIdx}${typeFilter}" />
		<#assign typeOfAbility =
			pcstring("${abilityExportToken}.TYPE")?lower_case />
		<#if (pcstring("${abilityExportToken}.HASASPECT.Name") = "Y")>
			<#assign abilityName = pcstring("${abilityExportToken}.ASPECT.Name") />
		<#else>
			<#assign abilityName = pcstring("${abilityExportToken}") />
		</#if>
		<${nodeName}>
		<#if (typeOfAbility?contains("extraordinary"))>
			<name>${abilityName} (Ex)</name>
		<#elseif (typeOfAbility?contains("supernatural"))>
			<name>${abilityName} (Su)</name>
		<#elseif (typeOfAbility?contains("spelllike"))>
			<name>${abilityName} (Sp)</name>
		<#elseif (typeOfAbility?contains("psilike"))>
			<name>${abilityName} (Ps)</name>
		<#else>
			<name>${abilityName}</name>
		</#if>
			<description>${pcstring("${abilityExportToken}.DESC")}</description>
			<type>${pcstring("${abilityExportToken}.TYPE")}</type>
			<associated>${pcstring("${abilityExportToken}.ASSOCIATED")}</associated>
			<count>${pcstring("${abilityExportToken}.ASSOCIATEDCOUNT")}</count>
			<aspect>${pcstring('${abilityExportToken}.ASPECT')}</aspect>
			<auto>${isAuto}</auto>
			<hidden><#if hidden>T<#else>F</#if></hidden>
			<virtual>${isVirtual}</virtual>
			<category>${category}</category>
			<source>${pcstring('${abilityExportToken}.SOURCE')}</source>
		</${nodeName}>
	</@loop>
	</#macro>

	<!--
	  ====================================
	  ====================================
			SPECIAL QUALITIES
	  ====================================
	  ====================================-->
	<special_qualities>
	<@abilityBlock category="Special Ability" nature="ALL" hidden=false typeName="SpecialQuality" nodeName="special_quality" />
	</special_qualities>
	<!--
	  ====================================
	  ====================================
			SPECIAL ATTACKS
	  ====================================
	  ====================================-->
	<special_attacks>
	<@abilityBlock category="Special Ability" nature="ALL" hidden=false typeName="SpecialAttack" nodeName="special_attack" />
	</special_attacks>

		<!--
	  ====================================
	  ====================================
			Resistance Table
	  ====================================
	  ====================================-->
		<resistances>
		<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY","ASPECT=ResistanceOutput")-1') ; resistance , resistance_has_next>
			<resistance>${pcstring('ABILITYALL.Special Ability.${resistance}.TYPE=Resistance.ASPECT.ResistanceOutput')}</resistance>
		</@loop>
		</resistances>

		<!--
	  ====================================
	  ====================================
			Racial Traits
	  ====================================
	  ====================================-->

	<racial_traits>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=RaceTrait")-1') ; ability , ability_has_next>
	<#if (pcstring("ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.HASASPECT.RaceTraitMaster") = "Y")>
		<racial_trait>
	<#if (pcstring("ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.TYPE") = "Extraordinary")>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait')} (Ex)</name>
	<#else>
	<#if (pcstring("ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.TYPE") = "Supernatural")>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait')} (Su)</name>
	<#else>
	<#if (pcstring("ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.TYPE") = "SpellLike")>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait')} (Sp)</name>
	<#else>
	</#if>
	</#if>
	</#if>
			<header>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait')}</header>
			<description>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.DESC')}</description>
			<type>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.TYPE')}</type>
			<source>${pcstring('ABILITYALL.Special Ability.VISIBLE.${ability}.TYPE=RaceTrait.SOURCE')}</source>
			<check_count>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.ASPECT.CheckCount.INTVAL')}</check_count>
			<check_type>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.ASPECT.CheckType')}</check_type>
	<#if (pcstring("ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.HASASPECT.MasterAbility") = "Y")>
			<master>${pcstring('ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.ASPECT.MasterAbility')}</master>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability")-1') ; subability , subability_has_next>
	<#if (pcstring("ABILITYALL.Special Ability.${subability}.ASPECT.ChildAbility") = pcstring("ABILITYALL.Special Ability.${ability}.TYPE=RaceTrait.ASPECT.MasterAbility"))>
			<subability>
				<name>${pcstring('ABILITYALL.Special Ability.${subability}')}</name>
				<description>${pcstring('ABILITYALL.Special Ability.${subability}.DESC')}</description>
				<type>${pcstring('ABILITYALL.Special Ability.${subability}.TYPE')}</type>
				<source>${pcstring('ABILITYALL.Special Ability.${subability}.SOURCE')}</source>
				<child>${pcstring('ABILITYALL.Special Ability.${subability}.ASPECT.ChildAbility')}</child>
			</subability>
	</#if>
	</@loop>
	</#if>
		</racial_trait>
	</#if>
	</@loop>
	</racial_traits>



		<!--
	  ====================================
	  ====================================
			Racial Trait
	  ====================================
	  ====================================-->
	<racial_traits>
	<@abilityBlock category="Racial Trait" nature="ALL" hidden=false typeName="Racial Trait" nodeName="racial_trait" />
	</racial_traits>

		<!--
	  ====================================
	  ====================================
			Class Feature
	  ====================================
	  ====================================-->
	<class_features>
	<@abilityBlock category="Class Feature" nature="ALL" hidden=false typeName="Class Feature" nodeName="class_feature" />
	</class_features>

	<!--
	  ====================================
	  ====================================
			TALENTS
	  ====================================
	  ====================================-->
	<talents>
	<@abilityBlock category="Talent" nature="ALL" hidden=false typeName="Talent" nodeName="talent" />
	</talents>



	<!--
	  ====================================
	  ====================================
			Force Powers
	  ====================================
	  ====================================-->
	<force_powers>
	<@abilityBlock category="Special Ability" nature="ALL" hidden=false typeName="ForcePower" nodeName="force_power" />
	</force_powers>
	<!--
	  ====================================
	  ====================================
			Force Techniques
	  ====================================
	  ====================================-->
	<force_techniques>
	<@abilityBlock category="Special Ability" nature="ALL" hidden=false typeName="ForceTechniques" nodeName="force_technique" />
	</force_techniques>
	<!--
	  ====================================
	  ====================================
			Force Secrets
	  ====================================
	  ====================================-->
	<force_secrets>
	<@abilityBlock category="Special Ability" nature="ALL" hidden=false typeName="ForceSecrets" nodeName="force_secret" />
	</force_secrets>



	<!--
	  ====================================
	  ====================================
			TRAITS
	  ====================================
	  ====================================-->
	<traits>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; trait , trait_has_next>
		<trait>
			<#if (pcstring("VABILITY.Special Ability.VISIBLE.${trait}.TYPE=Trait") != "")><#-- TODO: THis doesn't work unless all the virtual abilities are at the start of the loop. Need a new subtag on ABILITYALL of nature -->
			<name>${pcstring('VABILITY.Special Ability.VISIBLE.${trait}.TYPE=Trait')} (Granted)</name>
			<#else>
			<name>${pcstring('ABILITYALL.Special Ability.VISIBLE.${trait}.TYPE=Trait')}</name>
			</#if>
			<description>${pcstring('ABILITYALL.Special Ability.VISIBLE.${trait}.TYPE=Trait.DESC')}</description>
			<source>${pcstring('ABILITYALL.Special Ability.VISIBLE.${trait}.TYPE=Trait.SOURCE')}</source>
		</trait>
	</@loop>
	</traits>

	<!--
	  ====================================
	  ====================================
			Drawbacks
	  ====================================
	  ====================================-->
	<drawbacks>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=drawback","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; drawback , drawback_has_next>
		<drawback>
			<#if (pcstring("VABILITY.Special Ability.VISIBLE.${drawback}.TYPE=drawback") != "")><#-- TODO: THis doesn't work unless all the virtual abilities are at the start of the loop. Need a new subtag on ABILITYALL of nature -->
			<name>${pcstring('VABILITY.Special Ability.VISIBLE.${drawback}.TYPE=drawback')} (Granted)</name>
			<#else>
			<name>${pcstring('ABILITYALL.Special Ability.VISIBLE.${drawback}.TYPE=drawback')}</name>
			</#if>
			<description>${pcstring('ABILITYALL.Special Ability.VISIBLE.${drawback}.TYPE=drawback.DESC')}</description>
			<source>${pcstring('ABILITYALL.Special Ability.VISIBLE.${drawback}.TYPE=drawback.SOURCE')}</source>
		</drawback>
	</@loop>
	</drawbacks>
	<!--
	====================================
	====================================
	MASTER ABILITY
	====================================
	====================================-->
	<master_abilities>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","ASPECT=MasterAbility")-1') ; ability , ability_has_next>
		<master_ability>
			<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.TYPE") = "Extraordinary")>
			<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility')} (Ex)</name>
			<#else>
				<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.TYPE") = "Supernatural")>
				<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility')} (Su)</name>
				<#else>
					<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.TYPE") = "SpellLike")>
					<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility')} (Sp)</name>
					<#else>
					<name>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility')}</name>
					</#if>
				</#if>
			</#if>
			<header>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility')}</header>
			<description>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.DESC')}</description>
			<type>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.TYPE')}</type>
			<source>${pcstring('ABILITYALL.Special Ability.VISIBLE.${ability}.ASPECT=MasterAbility.SOURCE')}</source>
			<check_count>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.ASPECT.CheckCount.INTVAL')}</check_count>
			<check_type>${pcstring('ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.ASPECT.CheckType')}</check_type>

			<#if (pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.HASASPECT.MasterAbility") = "Y")>
				<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability")-1') ; subability , subability_has_next>
					<#if (pcstring("ABILITYALL.Special Ability.${subability}.ASPECT.ChildAbility") = pcstring("ABILITYALL.Special Ability.${ability}.ASPECT=MasterAbility.ASPECT.MasterAbility"))>
					<subability>
						<name>${pcstring('ABILITYALL.Special Ability.${subability}')}</name>
						<description>${pcstring('ABILITYALL.Special Ability.${subability}.DESC')}</description>
						<type>${pcstring('ABILITYALL.Special Ability.${subability}.TYPE')}</type>
						<source>${pcstring('ABILITYALL.Special Ability.${subability}.SOURCE')}</source>
					</subability>
					</#if>
				</@loop>
			</#if>
		</master_ability>
	</@loop>
	</master_abilities>

		<!--
	  ====================================
	  ====================================
			Afflictions
	  ====================================
	  ====================================-->
	<afflictions>
	<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=Affliction","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; affliction , affliction_has_next>
		<affliction>
			<name>${pcstring('ABILITYALL.Special Ability.VISIBLE.${affliction}.TYPE=Affliction')}</name>
			<description>${pcstring('ABILITYALL.Special Ability.VISIBLE.${affliction}.TYPE=Affliction.DESC')}</description>
			<source>${pcstring('ABILITYALL.Special Ability.VISIBLE.${affliction}.TYPE=Affliction.SOURCE')}</source>
		</affliction>
	</@loop>
	</afflictions>


	<!--
	====================================
	  ====================================
			Temporary Bonus
	  ====================================
	  ====================================-->
	<tempbonuses>
	<@loop from=0 to=pcvar('COUNT[TEMPBONUSNAMES]-1') ; tempbonus , tempbonus_has_next>
		<tempbonus>
			<name>${pcstring('TEMPBONUS.${tempbonus}.NAME')}</name>
			<description>${pcstring('TEMPBONUS.${tempbonus}.DESC')}</description>
		</tempbonus>
	</@loop>
	</tempbonuses>

	<!--
	  ====================================
	  ====================================
			MISCELLANEOUS
	  ====================================
	  ====================================-->


	<weapon_proficiencies>${pcstring('WEAPONPROFS')}</weapon_proficiencies>
	<languages>${pcstring('LANGUAGES')}</languages>
	<#if (pcvar("COUNT[TEMPLATES]") > 0) >
	<templates>
		<list>${pcstring('TEMPLATELIST')}</list>
		<@loop from=0 to=pcvar('COUNT[TEMPLATES]-1') ; template , template_has_next><#-- TODO: Loop was of early exit type 1 -->
		<template>
			<name>${pcstring('TEMPLATE.${template}.NAME')}</name>
			<strmod>${pcstring('TEMPLATE.${template}.STRMOD')}</strmod>
			<dexmod>${pcstring('TEMPLATE.${template}.DEXMOD')}</dexmod>
			<conmod>${pcstring('TEMPLATE.${template}.CONMOD')}</conmod>
			<intmod>${pcstring('TEMPLATE.${template}.INTMOD')}</intmod>
			<wismod>${pcstring('TEMPLATE.${template}.WISMOD')}</wismod>
			<chamod>${pcstring('TEMPLATE.${template}.CHAMOD')}</chamod>
			<cr>${pcstring('TEMPLATE.${template}.CR')}</cr>
			<dr>${pcstring('TEMPLATE.${template}.DR')}</dr>
			<feat>${pcstring('TEMPLATE.${template}.FEAT')}</feat>
			<sa>${pcstring('TEMPLATE.${template}.SA')}</sa>
			<sr>${pcstring('TEMPLATE.${template}.SR')}</sr>
			<bonuslist>${pcstring('TEMPLATE.${template}.BONUSLIST')}</bonuslist>
		</template>
		</@loop>
	</templates>
	</#if>


	<misc>
			<gold>${pcstring('GOLD')}</gold>

		<#if (pcvar("MISC.FUNDS") > 0) >
		</#if>
		<funds>
			<fund>${pcstring('MISC.FUNDS')}</fund>
		</funds>
		<companions>
			<companion>${pcstring('MISC.COMPANIONS')}</companion>
		</companions>
<!--	This doesn't work - AM
	<#if (pcvar("MISC.COMPANIONS") > 0) >	-->
<!--		</#if>	-->
		<#if (pcvar("MISC.MAGIC") > 0) >
		</#if>
		<magics>
			<magic>${pcstring('MISC.MAGIC')}</magic>
		</magics>
	</misc>
	<!--
	  ====================================
	  ====================================
			COMPANIONS
	  ====================================
	  ====================================-->
		<#if (pcvar("FOLLOWERTYPE.FOLLOWER") > 0) >
		<@loop from=0 to=pcvar('COUNT[FOLLOWERTYPE.FOLLOWER]') ; companion , companion_has_next>
		<follower>
			<name>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.NAME')}</name>
			<race>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.RACE')}</race>
			<hp>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.HP')}</hp>
			<ac>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.BONUS.COMBAT.AC.TOTAL')}</ac>
			<fortitude>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.CHECK.FORTITUDE.TOTAL')}</fortitude>
			<reflex>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.CHECK.REFLEX.TOTAL')}</reflex>
			<will>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.CHECK.WILL.TOTAL')}</will>
			<initiative_mod>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.INITIATIVEMOD')}</initiative_mod>
			<special_properties>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.ABILITYALLLIST.Special Ability.VISIBLE.TYPE=SpecialAttack')}${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.ABILITYALLLIST.Special Ability.VISIBLE.TYPE=SpecialQuality')}</special_properties>
			<attacks>
			<@loop from=0 to=pcvar('COUNT[FOLLOWERTYPE.FOLLOWER.${companion}.EQTYPE.WEAPON]-1') ; weap , weap_has_next>
				<attack>
					<common>
						<name>
							<short>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.NAME')}</short>
							<long>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.LONGNAME')}</long>
						</name>
						<attacks>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.ATTACKS')}</attacks>
						<damage>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.BASICDAMAGE')}</damage>
						<bonusdamage>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.BONUSDAMAGE')}</bonusdamage>
						<category>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.CATEGORY')}</category>
						<critical>
							<range>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.CRIT')}</range>
							<multiplier>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.MULT')}</multiplier>
						</critical>
						<damage>
							<primary_hand>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.DAMAGE')}</primary_hand>
							<magic_damage>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.MAGICDAMAGE')}</magic_damage>
						</damage>
						<to_hit>
							<hit>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.HIT')}</hit>
							<magic_hit>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.MAGICHIT')}</magic_hit>
							<total_hit>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.TOTALHIT')}</total_hit>
						</to_hit>
						<feat>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.FEAT')}</feat>
						<hand>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.HAND')}</hand>
						<num_attacks>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.NUMATTACKS')}</num_attacks>
						<base_range>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.RANGENOUNITS')}</base_range>
						<reach>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.REACH')}</reach>
						<reachunit>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.REACHUNIT')}</reachunit>
						<size>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.SIZE')}</size>
						<special_properties>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.SPROP')}</special_properties>
						<template>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.TEMPLATE')}</template>
						<type>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.TYPE')}</type>
						<weight>${pcstring('FOLLOWERTYPE.FOLLOWER.${companion}.WEAPON.${weap}.WT')}</weight>
						<sequence>${weap}</sequence>
					</common>
				</attack>
			</@loop>
			</attacks>
		</follower>
		</@loop>	<!-- Followertype Follower -->
		</#if>
	</companions>


</character>
