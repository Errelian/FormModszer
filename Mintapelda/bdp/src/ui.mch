/* ui
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    ui




ABSTRACT_VARIABLES
    ss

INVARIANT
    ss : seq ( ( - 100 .. 100 ) ) &
    size ( ss ) > 50

INITIALISATION
   ss := <>

OPERATIONS

    read =
    BEGIN
        ss : (
            ss : seq ( ( - 100 .. 100 ) ) &
            size ( ss ) < 50
        )
    END ;

    empty =
    BEGIN
        ss := <>
    END

END
