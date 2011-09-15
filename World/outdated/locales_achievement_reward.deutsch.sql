INSERT IGNORE INTO locales_achievement_reward (entry, gender) SELECT entry, gender FROM achievement_reward WHERE subject IS NOT NULL OR text IS NOT NULL;
DELETE FROM locales_achievement_reward WHERE NOT EXISTS (SELECT entry FROM achievement_reward WHERE locales_achievement_reward.entry = achievement_reward.entry);

UPDATE locales_achievement_reward SET subject_loc3='', text_loc3=NULL;
UPDATE locales_achievement_reward SET subject_loc3='Ihr seid rumgekommen!', text_loc3='Nun seht Euch mal an!$B$BUnd ich dachte, ich h�tte hier an diesem eisigen Ort schon einiges gesehen! Diesem Zwerg scheint es offensichtlich, dass das Feuer eines Forschers in Euren Augen brennt.$B$BTrage diesen Wappenrock mit Stolz, dann wissen Eure Freunde, wem sie nach dem Weg fragen m�ssen, wenn die Zeit gekommen ist!$B$BMacht weiter so!$B$BBrann Bronzebart' WHERE entry=45 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='F�r die Allianz!', text_loc3='Krieg �berzieht unsere L�nder. Nur die tapfersten aller Helden wagen es, der Horde dort einen Schlag zu versetzen, wo es wehtut. Ihr geh�rt zu eben diesen Helden.$B$BDer Schlag, den Ihr der F�hrung der Horde versetzt habt, bereitet unseren Weg f�r den finalen Angriff. Die Horde wird sich vor der Macht der Allianz verbeugen.$B$BEure Taten bleiben nicht ungew�rdigt. Reitet mit Stolz!$B$B--Euer K�nig' WHERE entry=614 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Stinkis neues Zuhause', text_loc3='Ich habe geh�rt, wie gut Ihr Euch um unsere pelzigen Freunde k�mmert. Ich hoffe, es macht Euch nichts aus, aber ich muss Stinki ein neues Zuhause verschaffen. Er weigert sich einfach, friedlich mit den Anderen zu spielen.$B$BBitte stellt sicher, dass er zweimal t�glich gef�ttert wird. Und, �hm... er hat eine Schw�che f�r schwarze Katzen.$B$B--Breanni' WHERE entry=1250 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Hohe Schule', text_loc3='Herzlichen Gl�ckwunsch zu Eurem Abschluss in den Schulen der arkanen Magie. In Anerkennung Eurer Hingabe lege ich diesen speziellen Buchband bei, der die Serie vervollst�ndigt.$B$BIch denke, dass Ihr diesen Folianten sehr unterhaltsam finden werdet. Doch das d�rft Ihr selbst entscheiden.$B$BHochachtungsvoll,$B$BRhonin' WHERE entry=1956 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Der M�nzenmeister', text_loc3='Gr��e und Gl�ckw�nsche dazu, dass Ihr das gesamte Set der Dalaranm�nzen gesammelt habt! Als Belohnung Eurer harten Arbeit habe ich diesem Schreiben ein frisch gepr�gtes Titansiegel von Dalaran beigelegt. Dies ist eine besondere M�nze, die wir nur den leidenschaftlichsten aller Sammler verleihen.$B$BIch hoffe, Ihr findet Freude an dieser speziellen Belohnung. Ihr habt Sie Euch verdient!$B$BHochachtungsvoll,$B$BJepetto Spa�brumm' WHERE entry=2096 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='F�hren der Kavalerie', text_loc3='Ich konnte nicht umhin, zu sehen wie gut Ihr mit Tieren umgeht. Bei allem was hier vorgeht, laufen meine Gesch�fte besser denn je.$B$BIch nehme nicht an, dass es Euch etwas ausmacht, f�r mich auf diesen Albinodrachen aufzupassen. Ich habe einfach nicht genug Zeit, mich um all diese Tiere zu k�mmern.$B$BViele Gr��e.$B$BMei' WHERE entry=2143 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Wie man sich Freunde macht', text_loc3='Hallo!$B$BWie ich geh�rt habe, habt Ihr dem kleinen Stinker ein warmes und liebevolles Zuhause geschaffen... Ich frage mich nun, ob Ihr vielleicht Interesse daran h�ttet, ein weiteres, eigensinniges Waisenkind aufzunehmen?$B$BDieses kleine Kitz ist zwar ein wenig sch�chtern, doch sollte es Euch dank des mitgesandten Gegenstandes ein leichtes sein, seine Freundschaft zu gewinnen: seinem Lieblingsleckstein!$B$B--Breanni' WHERE entry=2516 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Der vergessene Puter', text_loc3='K�nnt Ihr begreifen, wie es dieser fette Truthahn es lebendig durch den November geschaft hat?!$B$BAlle seine Freunde sind auf den reich gedeckten Tischen serviert worden. Mit Moosbeerenchutney und Gew�rzbrotf�llung und... OOOH... jetzt bekomme ich Hunger. Egal! Er ist jetzt ganz allein. Deswegen habe ich �berlegt, ob Ihr Euch vielleicht um Ihn k�mmern w�rdet. In meinem Laden ist einfach nicht mehr genug Platz f�r ihn!$B$BHaltet ihn nur bitte von Kochstellen fern. Er bekommt in ihrer N�he immer so einen merkw�rdigen Blick...$B$B--Breanni' WHERE entry=3478 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Der vergessene Puter', text_loc3='K�nnt Ihr begreifen, wie es dieser fette Truthahn es lebendig durch den November geschaft hat?!$B$BAlle seine Freunde sind auf den reich gedeckten Tischen serviert worden. Mit Moosbeerenchutney und Gew�rzbrotf�llung und... OOOH... jetzt bekomme ich Hunger. Egal! Er ist jetzt ganz allein. Deswegen habe ich �berlegt, ob Ihr Euch vielleicht um Ihn k�mmern w�rdet. In meinem Laden ist einfach nicht mehr genug Platz f�r ihn!$B$BHaltet ihn nur bitte von Kochstellen fern. Er bekommt in ihrer N�he immer so einen merkw�rdigen Blick...$B$B--Breanni' WHERE entry=3656 AND gender=2;
UPDATE locales_achievement_reward SET subject_loc3='Der 5. Geburtstag von WoW!', text_loc3='Wow, schon wieder ist ein Jahr WoW herum!$B$BWir m�chten Ihnen noch einmal danken, dass Sie weiterhin mit uns World of Warcraft spielen. Um unser f�nftes Online-Jahr zu feiern, haben wir uns entschieden, einen der ersten Schlachtz�ge �berhaupt neu aufzulegen. Die Brutmutter des schwarzen Drachenschwarms, Onyxia.$B$BUm Sie an dieses Event zu erinnern, sind Sie nun der stolze Besitzer Ihres eigenen Welplings von Onyxia. Wir schlagen vor, in bei Gelegenheit im Freundeskreis auszupacken und zu sagen "Viele Welpen! K�mmert Euch darum!" Sie werden sich sicher dar�ber freuen, Ehrlich!.$B$BDas Entwicklerteam von WoW' WHERE entry=4400; /* not used in UDB 392 */
UPDATE locales_achievement_reward SET subject_loc3='Streuner', text_loc3='Werter Meister der Geduld, wir m�chten Eure Beharrlichkeit belohnen, mit der Ihr immer wieder Dungeons mit Leuten betretet, die Ihr wahrscheinlich noch nie zuvor getroffen habt. Hoffentlich habt Ihr ein paar Jungspunden zeigen k�nnen, wie der Hase l�uft.$B$BLange Rede, kurzer Sinn. Wir haben zuf�llig geh�rt, dass Ihr mit Zufallsgruppen herumstreunt. Und wie der Zufall so will ist hier also ein kleiner Streuner, den wir Euch zufallen lassen, um mit Euch zu streunen, w�hrend Ihr zuf�lligen Zuf�llen zufallt, oder so.$B$BKnuddels.$B$BDas Entwickler-Team von WoW' WHERE entry=4478;