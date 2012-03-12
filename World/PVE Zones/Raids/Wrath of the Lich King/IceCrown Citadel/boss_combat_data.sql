
/* 
 * Mark'gar 
 */
UPDATE creature_template SET dmg_multiplier = 35, baseattacktime = 1000 WHERE entry = 36612;
UPDATE creature_template SET dmg_multiplier = 55, baseattacktime = 1000 WHERE entry = 37957;
UPDATE creature_template SET dmg_multiplier = 75, baseattacktime = 1000 WHERE entry = 37958;
UPDATE creature_template SET dmg_multiplier = 150, baseattacktime = 1000 WHERE entry = 37959;

/* Mark'gar combat reach */
UPDATE creature_model_info SET combat_reach = 10 WHERE modelid = 31119;

/* Markgar Bone Spikes */
UPDATE creature_template SET mindmg = 422, maxdmg = 586, dmg_multiplier = 7.5, attackpower = 642, mechanic_immune_mask = 920649727 WHERE NAME LIKE "bone spike%";

/* all except 10N */
UPDATE creature_template SET dmg_multiplier = 13 WHERE NAME LIKE "Bone Spike (%";

/* 
 * Lady Deathwhisper
 */
UPDATE creature_template SET dmg_multiplier = 7.5, baseattacktime = 2000 WHERE entry = 36855;
UPDATE creature_template SET dmg_multiplier = 35, baseattacktime = 2000 WHERE entry = 38106;
UPDATE creature_template SET dmg_multiplier = 35, baseattacktime = 2000 WHERE entry = 38296;
UPDATE creature_template SET dmg_multiplier = 70, baseattacktime = 2000 WHERE entry = 38297;

UPDATE creature_template SET flags_extra = flags_extra | 256 WHERE entry IN (
38296, /* Lady Deathwhisper (2) */
38297, /* Lady Deathwhisper (3) */
0);

/* 
 * Deathbringer Saurfang
 */
UPDATE creature_template SET baseattacktime = 900 WHERE NAME LIKE "Deathbringer Saurfang%";
UPDATE creature_template SET dmg_multiplier = 35 WHERE entry = 37813;
UPDATE creature_template SET dmg_multiplier = 70 WHERE entry = 38402;
UPDATE creature_template SET dmg_multiplier = 35 WHERE entry = 38582;
UPDATE creature_template SET dmg_multiplier = 70 WHERE entry = 38583;

UPDATE creature_template SET baseattacktime = 800 WHERE NAME LIKE "Blood Beast %";
UPDATE creature_template SET dmg_multiplier = 13 WHERE NAME LIKE "Blood Beast (1)" OR NAME LIKE "Blood Beast (3)";














