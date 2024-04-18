/* ui
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    ui

DEFINITIONS
    "def.def"

ABSTRACT_VARIABLES
    ss

INVARIANT
    ss : seq ( TT ) &
    size ( ss ) > MAX_DARAB

INITIALISATION
   ss := []

OPERATIONS

    read =
    BEGIN
        ss : (
            ss : seq ( TT ) &
            size ( ss ) < MAX_DARAB
        )
    END ;

    empty =
    BEGIN
        ss := []
    END

END
