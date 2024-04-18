/* logic
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    logic




USES
    ui

ABSTRACT_VARIABLES
    ff

INVARIANT
    ff : seq ( ( - 100 .. 100 ) ) &
    size ( ff ) < 50     &
    ( ff /= <> =>
        ( ! ii . ( ii : dom ( ff ) => ff ( ii ) = ss ( ii ) + 1 ) ) &
        dom ( ff ) = dom ( ss )
    )

INITIALISATION
    ff := <>

OPERATIONS
    init =
    BEGIN
        ff := <>
    END ;


    calc =
    PRE
        0 < size ( ss ) &
        ss : seq ( ( - 100 .. 100 ) )
    THEN
        ff : (
             ff : seq ( - 99 .. 100 ) &
             ( ! ii . ( ii : dom ( ss ) => ff ( ii ) = ss ( ii ) + 1 ) ) &
             dom ( ss ) = dom ( ff ) &
             size ( ff ) < 50
         )
    END

END
