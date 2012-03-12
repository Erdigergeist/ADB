/* Fix Anger Capacitor (Tiny Abomination in a Jar Proc)  */
UPDATE spell_proc_event SET procFlags = 0x00000004 | 0x00000010 | 0x00040000 WHERE `entry` IN (71406);


