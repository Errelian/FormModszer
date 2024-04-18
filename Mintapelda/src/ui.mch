/* ui
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    ui
    
DEFINITIONS
    "def.def"

VARIABLES
    ss
    
INVARIANT
    ss : seq(TT) &
    size(ss) <= MAX_DARAB
    
INITIALISATION
   ss :=[]

OPERATIONS
    
    read =
    BEGIN
        ss :( 
            ss : seq(TT) &
            size(ss) <= MAX_DARAB
        )
    END;
    
    add_new(p1) =
    PRE
        p1 : TT &
        ss /=[] &
        size(ss) < MAX_DARAB
    THEN
        ss := ss <- p1
    END;
    
    empty = 
    BEGIN
        ss := []
    END

END
