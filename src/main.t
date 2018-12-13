#charset "utf-8"
#include <adv3.h>
#include <en_us.h>

versionInfo: GameID {
    name = 'Istoria'
    byline = 'Apoptosis'
    version = '0.0'
    desc = 'A collaborative hodge-podge of IF hackery.'
}

gameMain: GameMainDef {
     initialPlayerChar = me
     maxScore = 7
     beforeRunsBeforeCheck = nil
}

me: Actor {
    location = axiomOffice
}


axiomOffice: Room {
   roomName = 'The Axiom staff office'
   desc = "You stand just inside the Axiom staff office. "
}
