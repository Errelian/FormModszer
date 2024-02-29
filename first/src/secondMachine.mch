/* secondMachine
 * Author: balaz
 * Creation date: 22/02/2024
 */
MACHINE
    secondMachine

VARIABLES // == ABSTRACT_VARIABLES, this is  the specification after all
    aa,  //firstVariable
    bb,  //secondVariable
    set1 //firstSet
    //cc
    
CONSTANTS
    dd // First const
    
PROPERTIES
    dd : INT & 
    dd <= 100 &
    dd : MININT..100 //ugyan az

INVARIANT
    //Types
    aa : INTEGER &
    bb : NATURAL &
    set1 : POW(INTEGER) & // POW(1..1000)
    //cc : 
    
    //stuff
    aa <= bb
    
INITIALISATION
    aa :: INTEGER || // :: means be member of
    bb := 0  ||
    set1 :: POW(INTEGER)
    //aa, bb := 1,0
    
    
OPERATIONS
    
    operation1 = 
    BEGIN
    aa := 1 
    || bb :: 10..20
    END;

    operation2 =
    PRE
        aa <= bb
    THEN
        bb := 2 
        || aa := bb
    END;
    
    operation3(pp) =
    PRE
        pp : INT
    THEN
        aa := 1
        || bb :: 10..20
    
    END
    
END
