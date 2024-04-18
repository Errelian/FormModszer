/* business
 * Author: balaz
 * Creation date: 04/04/2024
 */
MACHINE
    business
    
DEFINITIONS
    "def.def"

INCLUDES
    logic, ui //, ub.ui //renaming is problematic for ProB
    
INVARIANT
    (ff /= [] => 
        (
            ss /= []
            //ide kell barmi egyeb ami hasznos
        )) 

OPERATIONS    
//  op1=
//  BEGIN
//      calc
//  END

    b_read = 
    PRE
        ff = []
    THEN
        read
    END;
    
    b_read2 = 
    PRE
        ff = []
    THEN
        read || init
    END;
    
    b_read3(p1) = 
    PRE
        p1 : TT &
        ss /= [] &
        size(ss) < MAX_DARAB
    THEN
        add_new(p1) || init
    END;

    b_empty = 
    BEGIN //lehetne PRE-vel is
        empty || init
    END;
    
    b_empty2 = 
    PRE
        ss /= []
    THEN
        empty || init
    END
    
PROMOTES
    calc
      
END
