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

/* Valkyr Herald */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN(37098,38418);

/* Plague Quarter */

/* Precious,Stinky   */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN(37217,38103,37025,38064); 

/* Frost Quarter */
/* Sindragosa */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN(36853,38265,38266,38267); 

/* Spinestalker, Rimefang */
UPDATE `creature_template` SET `mechanic_immune_mask` = @COMMON_BOSS 
 WHERE entry IN( 37534,38219, 37533,38220); 
