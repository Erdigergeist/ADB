SET 
@MECHANIC_CHARM             = 1,
@MECHANIC_DISORIENTED       = 2,     
@MECHANIC_DISARM            = 4,
@MECHANIC_DISTRACT          = 8,     
@MECHANIC_FEAR              = 16,     
@MECHANIC_GRIP              = 32,     /* Death Grip and similar effects */
@MECHANIC_ROOT              = 64,     
@MECHANIC_PACIFY            = 128,     /* (0 spells use this mechanic) */
@MECHANIC_SILENCE           = 256,     
@MECHANIC_SLEEP             = 512,     
@MECHANIC_SNARE             = 1024,     
@MECHANIC_STUN              = 2048,     
@MECHANIC_FREEZE            = 4096,     
@MECHANIC_KNOCKOUT          = 8192,     
@MECHANIC_BLEED             = 16384,     
@MECHANIC_BANDAGE           = 32768,     /* Healing etc. */
@MECHANIC_POLYMORPH         = 65536,     
@MECHANIC_BANISH            = 131072,     
@MECHANIC_SHIELD            = 262144,     
@MECHANIC_SHACKLE           = 524288,     
@MECHANIC_MOUNT             = 1048576,     
@MECHANIC_INFECTED          = 2097152,     /* Blood Plague from Unholy Blight etc. */
@MECHANIC_TURN              = 4194304,     /* e.g. Turn Evil */
@MECHANIC_HORROR            = 8388608,     /* e.g. Death Coil (Warlock) */
@MECHANIC_INVULNERABILITY   = 16777216,     
@MECHANIC_INTERRUPT         = 33554432,     
@MECHANIC_DAZE              = 67108864,
															
@MECHANIC_DISCOVERY         = 134217728,
@MECHANIC_IMMUNE_SHIELD     = 268435456,     
@MECHANIC_SAPPED            = 536870912,     
@MECHANIC_ENRAGED           = 1073741824,    
@MECHANIC_ALL               = 2147483647;

SET @COMMON_BOSS = @MECHANIC_ALL 
    - @MECHANIC_ENRAGED
    - @MECHANIC_IMMUNE_SHIELD
    - @MECHANIC_DISCOVERY
    - @MECHANIC_INVULNERABILITY
    - @MECHANIC_INFECTED
    - @MECHANIC_BLEED;
    
/*
	Das alte "110870399" ist:
+@MECHANIC_CHARM
+@MECHANIC_DISORIENTED
+@MECHANIC_DISARM
+@MECHANIC_DISTRACT
+@MECHANIC_FEAR
+@MECHANIC_GRIP
+@MECHANIC_ROOT
+@MECHANIC_SILENCE
+@MECHANIC_SLEEP
+@MECHANIC_SNARE
+@MECHANIC_STUN
+@MECHANIC_FREEZE
+@MECHANIC_KNOCKOUT
+@MECHANIC_BANDAGE
+@MECHANIC_POLYMORPH
+@MECHANIC_BANISH
+@MECHANIC_SHACKLE
+@MECHANIC_MOUNT
+@MECHANIC_HORROR
+@MECHANIC_INTERRUPT
+@MECHANIC_DAZE

=> Common Boss passt

*/    

SELECT  - (@MECHANIC_DAZE);

/* All Bosses */
UPDATE creature_template SET mechanic_immune_mask = @COMMON_BOSS WHERE entry in (
36612, /* Lord Marrowgar */
37957, /* Lord Marrowgar (1) */
37958, /* Lord Marrowgar (2) */
37959, /* Lord Marrowgar (3) */

36855, /* Lady Deathwhisper */
38106, /* Lady Deathwhisper (1) */
38296, /* Lady Deathwhisper (2) */
38297, /* Lady Deathwhisper (3) */

37813, /* Deathbringer Saurfang */
38402, /* Deathbringer Saurfang (1) */
38582, /* Deathbringer Saurfang (2) */
38583, /* Deathbringer Saurfang (3) */

36626, /* Festergut */
37504, /* Festergut (1) */
37505, /* Festergut (2) */
37506, /* Festergut (3) */

36627, /* Rotface */
38390, /* Rotface (1) */
38549, /* Rotface (2) */
38550, /* Rotface (3) */

36678, /* Professor Putricide */
38431, /* Professor Putricide (1) */
38585, /* Professor Putricide (2) */
38586, /* Professor Putricide (3) */

37970, /* Prince Valanar */
38401, /* Prince Valanar (1) */
38784, /* Prince Valanar (2) */
38785, /* Prince Valanar (3) */
37972, /* Prince Keleseth */
38399, /* Prince Keleseth (1) */
38769, /* Prince Keleseth (2) */
38770, /* Prince Keleseth (3) */
37973, /* Prince Taldaram */
38400, /* Prince Taldaram (1) */
38771, /* Prince Taldaram (2) */
38772, /* Prince Taldaram (3) */

37955, /* Blood-Queen Lana'thel */
38434, /* Blood-Queen Lana'thel (1) */
38435, /* Blood-Queen Lana'thel (2) */
38436, /* Blood-Queen Lana'thel (3) */

/* Frost Wing */

36853, /* Sindragosa */
38265, /* Sindragosa (1) */
38266, /* Sindragosa (2) */
38267, /* Sindragosa (3) */

36597, /* The Lich King */
39166, /* The Lich King (1) */
39167, /* The Lich King (2) */
39168, /* The Lich King (3) */

0);


UPDATE creature_template SET mechanic_immune_mask=1818495 WHERE entry in (
/* Lady Deathwhisper */
36855, /* Lady Deathwhisper */
38106, /* Lady Deathwhisper (1) */
38296, /* Lady Deathwhisper (2) */
38297, /* Lady Deathwhisper (3) */
0);
/* taunt immunity */
UPDATE creature_template SET flags_extra = flags_extra | 256 WHERE entry in (
38296, /* Lady Deathwhisper (2) */
38297, /* Lady Deathwhisper (3) */
0);


/* Valkyr Herald */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN(37098,38418);

/* Plague Quarter */

/* Precious,Stinky   */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN(37217,38103,37025,38064); 

/* Prof - Gaseous Bloat */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS - @MECHANIC_SNARE
 WHERE entry IN(37562,38602,38760,38761); 
/* Prof - Volatile Ooze */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS - @MECHANIC_SNARE
 WHERE entry IN(37697, 38604, 38758, 38759);


/* Frost Quarter */
/* Sindragosa */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN(36853,38265,38266,38267); 

/* Spinestalker, Rimefang */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN( 37534,38219, 37533,38220); 
