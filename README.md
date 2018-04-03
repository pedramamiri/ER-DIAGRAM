# ER-DIAGRAM<br/>
## ER DIAGRAMÖVNINGAR
### Tips:
#### 1:Om det inte finns någon unik nyckel i en entitetstyp, så kan man skapa ett särskilt unikt identitetsnummer bara för användning i databasen.
#### 2:Det är ofta klokt att skapa ett unikt identitetsnummer även om det redan finns en unik nyckel, om den nyckeln är en textsträng eller olämplig av andra skäl.
#### 3:Man behöver inte använda arv eller svaga entitetstyper i dom här uppgifterna.
## Kom ihåg:
#### 1 Finns det saker i rutan ovan som är svåra eller omöjliga att rita i ER-diagrammet? Hur gör man då?
#### 2 Fattas det information som egentligen skulle behövas för att rita ER-diagrammet? Hur gör man då?
## Gör det här:
 Skapa ett entity-relationship-schema för att skapa databasen i varje uppgift, ni behöver inte ange datatypen (domänen) för varje attribut, men ni bör ange primär- och främmande- nycklar.
# Övning 1: Gamingsoft: Multi User Dungeon Game
 Det finns en klass av dataspel som kallas massively multiplayer online role-playing games, eller MMORPG. Det är spel där man spelar en rollfigur, till exempel en riddare, som går runt i en simulerad värld och slåss med monster, samlar skatter eller bara pratar med andra spelare som spelar samma spel och går runt i samma simulerade värld. Ett par kända såna spel är EverQuestoch World of Warcraft.<br/>
 Redan på sjuttiotalet fanns det textbaserade liknande spel, där man (precis som i de moderna MMORPG-spelen) spelar en rollfigur, går runt i en simulerad värld, och interagerar med andra spelare. En klass av såna textbaserade spel kallas Multi-user dungeon, eller MUD. Man styrde sin rollfigur med kommandon som "gå norrut", "ta upp väskan" och "anfall björnen".I den här uppgiften ska vi skapa en databas som kan användas för lagring av data i ett MUD.<br/>
 <br/>
 De saker som ska lagras i databasen är följande:<br/>
 1 Spelare. En "spelare" är egentligen inte en representation av själva spelaren, utan av den rollfigur som spelaren spelar i spelet. Spelaren (dvs rollfiguren) har ett unikt namn, en (inte nödvändigtvis unik) beskrivning, och några "stats", dvs värden som beskriver rollfigurens egenskaper: styrka, skicklighet, friskhet och hur många poäng som spelaren samlat ihop. Spelarna måste finnas kvar i databasen även när de loggar ut. En spelare som dör i spelet försvinner inte, utan förlorar bara sina saker och en del av sina poäng.<br/>
 2 Monster. Ett "monster" behöver inte vara grönt och ha många tänder, utan alla figurer i spelet som styrs av datorn och inte av en spelare kallas för monster. Ett monster har, precis som en spelare, ett namn, en beskrivning och dessutom samma "stats" som spelarna. En skillnad är att namnet inte behöver vara unikt, utan det kan till exempel finnas många grodor som allihop heter Groda. Ett monster som dör i spelet försvinner.<br/>
 3 Rum eller platser. Det här är de platser som spelarna och monstren kan gå omkring i. Varje spelare som är inloggad i spelet befinner sig i ett visst rum. Spelare som inte är inloggade, befinner sig inte i något rum. En del rum kan vara tomma. Varje rum har ett unikt nummer, ett (inte nödvändigtvis unikt) namn och en (inte nödvändigtvis unik) beskrivning.<br/>
 4 Saker. Det här är de saker som finns i spelet, förutom rum, spelare och monster. Det kan till exempel vara stenar, guldmynt, svärd och tulpaner. Sakerna kan ligga och skräpa i rummen, och dessutom kan både spelarna och monstren plocka upp sakerna och bära omkring på dem. Varje sak befinner sig antingen i ett visst rum, eller på en viss spelare eller monster. Varje sak har ett (inte nödvändigtvis unikt) namn och en (inte nödvändigtvis unik) beskrivning.<br/>
 5 Servrar. Spelvärlden är så stor att den inte kan hanteras av en enda dator, utan den är uppdelad på ett antal olika datorer, eller servrar. Varje rum hör till en viss server. Spelarna och monstren kan däremot flytta sig mellan servrarna. Varje server har ett IP-nummer (dvs dess Internet-adress), som kan ändras ibland men som är unikt vid varje tillfälle.De flesta mudden var ganska små, och kördes på en enda server. De innehöll kanske tio tusen rum eller platser, och några tiotal samtidiga spelare. Men nu tänker vi oss att vi ska konkurrera med EverQuest och World of Warcraft, så vi vill kunna hantera hundratalas servrar, miljoner rum, och tiotusentals spelare.
 # Övning 2: The Universitetet <br/>
 Antag att universitetet behöver ett databassystem för att hålla rätt på studenter som går kurser, vem som ger vilka kurser och var de personerna är anställda (vilken institution).<br/>
 ### De saker som ska lagras i databasen är följande:<br/>
 För att representera studenter behöver vi lagra namn (förnamn och efternamn skiljs så att man enkelt kan sortera på efternamn), personnummer för att få ett unikt id, kontonamn och lösenord. Kurser har kurskoder, namn, ges en viss period och ägs (ansvaras för) av en viss institution. De ger ett visst antal poäng och hålls av någon som är anställd på högskolan. Olika år kan en viss kurs ges olika läs-perioder och av olika personer (dock max en gång per år). Om en kurs byter namn eller omfattning i poäng, eller flyttas till annan institution måste den också byta kurskod, dvs formellt blir det en ny kurs. Institutionen som ansvarar för kurserna är inte nödvändigtvis samma institution som läraren är anställd på.<br/>
 ### The extra mile:
 Antag att rektor utlyser pengar för pedagogiska projekt, som institutionerna kan arrangera. Man vill kunna söka efter alla olika projekten, kolla deras tidsplaner och budgetar. Projekten identifieras med namn, MEN man kan inte anta att namnen är helt unika. Inom varje institution finns en kontroll att namnen är unika, men institutionerna pratar inte med varandra.
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
