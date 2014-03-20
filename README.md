#TOERH - Detta är det samla repot för API och Angular. Använd denna för peer review

## API

apiet finns live på <http://toerh.matthis.se>

## Angular

angularappen finns live på <http://angular.matthis.se>

## Relflektioner

Den största ändringen som jag har gjort i mitt API är att implementera autentisering. Jag hade missat att göra detta när jag implementerade API:et eftersom jag missförstådde att det var ett krav då. Jag fick givetvis backning på detta av min reviewers. 

Jag valde att implementera en egen token baserad autentisering. När en anvndare vill aktorisera sig, gör hen en POST till /authenticate. Om användarens email och lösenord kan auktoriseras genereras en access-token som skickas tillbaka i responsen. Access-token samt ett expire-date sparas till databasen vilket gör att jag kan tidsbestämma att en token bara är giltig i 48 timmar.

När användaren har sin access-token kan hen skicka med den med de anrop som kräver autentisering.

Jag har även gjort det tydligare hur man kan administrera api-nycklar i adminpanelen. 
