/* ui
 * Author: balaz
 * Creation date: 2024. 04. 18.
 */
MACHINE
    ui
    
DEFINITIONS
    "def.def"
    
VARIABLES
    customer_data
    
INVARIANT
    customer_data : seq(CUSTOMER) &
    size(customer_data) <= MAX_CUSTOMERS
    
INITIALISATION
    customer_data := []
    
OPERATIONS
    
    
    //todo csak beolvassa a logic ezt a valtozot !! nem adod at mert nem implementalhato
    read =
    BEGIN
        customer_data :( 
            customer_data : seq(CUSTOMER) &
            size(customer_data) <= MAX_CUSTOMERS
        )
    END;
    
    write = 
    PRE
        customer_data /= []
    THEN
           skip
    END
END
