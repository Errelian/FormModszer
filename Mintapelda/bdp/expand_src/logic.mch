/* logic
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    logic

DEFINITIONS
    "def.def"

USES
    ui

ABSTRACT_VARIABLES
    ff

INVARIANT
    ff : seq ( TT ) &
    size ( ff ) < MAX_DARAB &
    ( ff /= [] =>
        ( ! ii . ( ii : dom ( ff ) => ff ( ii ) = ss ( ii ) + 1 ) ) &
        dom ( ff ) = dom ( ss )
    )

INITIALISATION
    ff := []

OPERATIONS
    init =
    BEGIN
        ff := []
    END ;


    calc =
    PRE
        0 < size ( ss ) &
        ss : seq ( TT )
    THEN
        ff : (
             ff : seq ( - 99 .. 100 ) &
             ( ! ii . ( ii : dom ( ss ) => ff ( ii ) = ss ( ii ) + 1 ) ) &
             dom ( ss ) = dom ( ff ) &
             size ( ff ) < MAX_DARAB
         )
    END

END
