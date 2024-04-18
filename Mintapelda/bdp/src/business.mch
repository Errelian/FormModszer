/* business
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    business




INCLUDES
    logic , ui //, ub.ui //renaming is problematic for ProB

INVARIANT
    ( ff /= <> =>
        (
            ss /= <>
            //ide kell barmi egyeb ami hasznos
        ) )

OPERATIONS
//  op1=
//  BEGIN
//      calc
//  END

    b_read =
    PRE
        ff = <>
    THEN
        read
    END ;

    b_empty =
    BEGIN
        empty || init
    END

PROMOTES
    calc

END
