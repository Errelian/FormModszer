/* secondMachine
 * Author: balaz
 * Creation date: 22/02/2024
 */
MACHINE
    secondMachine

ABSTRACT_VARIABLES
    aa , //firstVariable
    bb  //secondVariable
    //cc

INVARIANT
    //Types
    aa : INTEGER &
    bb : NATURAL &
    //cc : 

    //stuff
    aa <= bb

INITIALISATION
    aa :: INTEGER || // :: means be member of
    bb := 0
    //aa, bb := 1,0


OPERATIONS

    operation1 =
    BEGIN
    aa := 1
    || bb :: 10 .. 20
    END ;

    operation2 =
    PRE
        aa <= bb
    THEN
        bb := 2
        || aa := bb
    END ;

    operation3 ( pp ) =
    PRE
        pp : INT
    THEN
        aa := 1
        || bb :: 10 .. 20

    END

END
