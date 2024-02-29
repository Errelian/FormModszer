/* calculator
 * Author: balaz
 * Creation date: 29/02/2024
 
     Informal spec:
        Create a calculator that takes two numbers to add together from the user
 */
MACHINE
    calculator

DEFINITIONS
    "definitions.def"
    
VARIABLES
    aa,
    has_aa,
    bb,
    has_bb,
    result,
    has_result
    
    
INVARIANT
    aa : INTEGER &
    has_aa : BOOL & 
    bb : INTEGER &
    has_bb : BOOL &
    result : INTEGER & 
    has_result : BOOL

INITIALISATION
    /*aa :: INTEGER ||
    has_aa := FALSE ||
    bb :: INTEGER ||
    has_bb := FALSE ||
    result :: INTEGER ||
    has_result := FALSE*/
    INIT_STATEMENT
    
OPERATIONS
    
    init = 
    BEGIN
        INIT_STATEMENT
    END;
    
    read_aa = //read from user in specification, simpler than expected
    PRE
        has_aa = FALSE
    THEN
        aa :: INTEGER ||
        has_aa := TRUE
        
    END;
    
    read_bb = 
    PRE
        has_bb = FALSE
    THEN
        bb :: INTEGER ||
        has_bb := TRUE
    END;
    
    addition = 
    PRE
        has_aa = TRUE & has_bb = TRUE & has_result = FALSE
    THEN
        result := aa + bb || has_result := TRUE
    END

END
