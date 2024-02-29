/* firstMachine
 * Author: balaz
 * Creation date: 22/02/2024
 */
MACHINE
    firstMachine
    
VARIABLES
    aa, //firstVariable
    bb  //secondVariable

INVARIANT
    aa : INTEGER &
    bb : NATURAL
    
INITIALISATION
    aa :: INTEGER ||
    bb := 0
    //aa, bb := 1,0
    
    
OPERATIONS
    operation1 = aa := 1;
    
    operation2 = bb := 2
    
END
