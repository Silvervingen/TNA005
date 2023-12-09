Kort beskrivning av USPS-databasen med handskrivna siffror. 

> load uspsDigits 

Load kommandot i Matlab ger 4 variabler: 

testAns 	2007 x 1 	Facit f�r testsiffrorna
testDigits	16 x 16 x 2007 	Testsiffror, varje �skilda i 3-D arrayen �r en siffra 
trainAns	7291 x 1 	Facit f�r träningssiffror 
trainDigits	16 x 16 x 7291	Träningssiffror, varje “skiva�? i 3-D arrayen är en siffra

F�r att visualisera en given siffra använd funktionen ima.m

> ima(A)

d�r A �r en (endast en) siffra, t.ex. A = testDigits(:,:,3) ger den tredje siffra in testm�ngden. 