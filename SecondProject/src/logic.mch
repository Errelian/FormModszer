/* logic
 * Author: balaz
 * Creation date: 2024. 04. 18.
 Kiszámítja, hogy egy ügyfélen mekkora hasznot realizált a vállalkozás.
 */
MACHINE
    logic
    
SETS
    LOGIC_STATE_TYPE = { //this to business
        PRE_INIT,
        POST_INIT
    }

DEFINITIONS
    "def.def"
    
USES
    ui
    
VARIABLES
    calculated_customer_data,
    logic_state,
    total_income
    
INVARIANT
    calculated_customer_data : seq(CALCULATED_CUSTOMER) &
    logic_state : LOGIC_STATE_TYPE &
    total_income : INT &
    
    (logic_state = POST_INIT => (
        size(calculated_customer_data) = size(customer_data)  
    ))
    
INITIALISATION
    logic_state := PRE_INIT ||
    calculated_customer_data := [] ||
    total_income := 0

OPERATIONS
    
    calculate_profit = 
    PRE
        customer_data /= [] 
    THEN
        calculated_customer_data :(
            calculated_customer_data : seq(CALCULATED_CUSTOMER) &
            //size(calculated_customer_data ) = size(customer_data) &
            dom(calculated_customer_data) = dom(calculated_customer_data) &
            !ii.(ii : dom(customer_data) => (
                ii : dom(calculated_customer_data) &
                (calculated_customer_data(ii))'customer_id = (customer_data(ii))'customer_id &
                (calculated_customer_data(ii))'profit = (customer_data(ii))'total_purchase_value - (customer_data(ii))'total_purchase_costs
            ))
        ) ||
        total_income := SIGMA(ii).(ii : dom(customer_data) | (customer_data(ii))'total_purchase_value )
    END

END

