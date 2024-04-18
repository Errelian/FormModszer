/* CompanyHelper
 * Author: balaz
 * Creation date: 2024. 03. 02.
 *Feladat
 * Egy olyan szoftvernek a specifikációját kell elkészíteni, amely képes egy vállalkozás vezetőjének a
 * munkáját támogatni az alábbi funkciókkal:
 * • A szoftver tartsa nyilván a napi bevételi és kiadási adatokat egy megadott időszakra
 *  vonatkozóan.
 * • Rendelkezzen az adatok megadásához szükséges műveletekkel.
 * • Adja meg, hogy mely napon volt a legtöbb bevétel.
 * • Az adatok megadása előtt a program kérje be az elvárt minimális bevétel értékét,
 * • Keresse meg azokat a napokat, amelyek a minimális bevétel alatt teljesítettek.
 * A napok száma megváltoztatható legyen a definíciós fájlban. Az adatokat egyesével lehessen
 * beolvasni.
 * A forráskód fejrészében egy komment blokkba legyen bemásolva a feladat szövege is. Elküldeni az
 * archivált Atelier B projektet kell.
 */
MACHINE
    CompanyHelper
    
SETS
    STATUS_TYPE = {
        INIT,
        READ_MIN,
        READ_DATA,
        HIGHEST_SEARCHED,
        DAYS_BELOW_MINIMUM_SEARCHED
    }
    
DEFINITIONS
       "definitions.def"

VARIABLES
        income_array, //income data
        expense_array, //expense data
        minimum_income, //the minimum required income
        
        state,

        day_indexes_below_minimum, //which days did the income not go above the required one
        highest_income_index //which day had the most income
        
INVARIANT
    income_array : seq(NAT) &
    expense_array : seq(NAT) &
    minimum_income : NAT &

    state : STATUS_TYPE &

    day_indexes_below_minimum : FIN(1..NUMBER_OF_DAYS) &
    highest_income_index : 0..NUMBER_OF_DAYS &
    
    size(income_array) <= NUMBER_OF_DAYS &
    dom(income_array) : FIN(1..NUMBER_OF_DAYS) &
    
    size(expense_array) <= NUMBER_OF_DAYS &
    highest_income_index <= size(income_array) &
    card(day_indexes_below_minimum) <= size(income_array) &
    
    (state = INIT => (
        size(income_array) = 0 &
        size(expense_array) = 0 &
        card(day_indexes_below_minimum) = 0 &
        minimum_income = 0 &
        highest_income_index = 0
    )) &

    (state = READ_MIN => (
        size(income_array) = 0 &
        size(expense_array) = 0 &
        highest_income_index = 0 &
        card(day_indexes_below_minimum) = 0
        
    )) &
    
    (state = READ_DATA => (
        size(income_array) = NUMBER_OF_DAYS &
        size(expense_array) = NUMBER_OF_DAYS &
        highest_income_index = 0 &
        card(day_indexes_below_minimum) = 0
    )) &
    
    (state = HIGHEST_SEARCHED => (
        size(income_array) = NUMBER_OF_DAYS &
        size(expense_array) = NUMBER_OF_DAYS &
        highest_income_index : income_array~[{max(ran(income_array))}] &
        card(day_indexes_below_minimum) = 0
    )) &
    
    (state = DAYS_BELOW_MINIMUM_SEARCHED => (
        size(income_array) = NUMBER_OF_DAYS &
        size(expense_array) = NUMBER_OF_DAYS &
        highest_income_index : income_array~[{max(ran(income_array))}] &
        
        day_indexes_below_minimum : FIN(1..NUMBER_OF_DAYS) &
        !ii.(ii : day_indexes_below_minimum => 
                (ii : dom(income_array) & income_array(ii) < minimum_income)) &
        
            !ii.((ii : dom(income_array) & income_array(ii) < minimum_income) => 
                (ii : day_indexes_below_minimum)) 
    ))
    
INITIALISATION
    income_array  := [] ||
    expense_array := [] ||
    minimum_income := 0 ||
    
    state := INIT ||
   
    day_indexes_below_minimum := {} ||
    highest_income_index := 0
    
OPERATIONS
    
    read_min_income = 
    PRE
        state = INIT
    THEN
        minimum_income :: NAT ||
        state := READ_MIN
    END;
    
    populate_financial_data =
    PRE
        (size(income_array) < NUMBER_OF_DAYS) &
        state = READ_MIN
    THEN      
        income_array :(income_array : seq(NAT) & size(income_array) = NUMBER_OF_DAYS) ||
        expense_array :(expense_array : seq(NAT) & size(expense_array) = NUMBER_OF_DAYS) ||
        state := READ_DATA
    END;
    
    find_largest_income_day =
    PRE
        state = READ_DATA &
        size(income_array) = NUMBER_OF_DAYS &
        dom(income_array) : FIN(1..NUMBER_OF_DAYS) &
        !ii.(ii : dom(income_array) =>
            (ii : 1..NUMBER_OF_DAYS & ii : NAT1)) //some redundancy for the prover
    THEN
        highest_income_index :: income_array~[{max(ran(income_array))}] || //find the day with the most income
        state := HIGHEST_SEARCHED
    END;
    
    find_days_below_minimum =
    PRE
        state = HIGHEST_SEARCHED &
        size(income_array) = NUMBER_OF_DAYS &
        card(dom(income_array)) = size(income_array)
    THEN 
        day_indexes_below_minimum :(
            day_indexes_below_minimum : FIN(1..NUMBER_OF_DAYS) &
            card(day_indexes_below_minimum) <= size(income_array) &
            
            !ii.(ii : day_indexes_below_minimum => 
                (ii : dom(income_array) & income_array(ii) < minimum_income)) &
        
            !ii.((ii : dom(income_array) & income_array(ii) < minimum_income) => 
                (ii : day_indexes_below_minimum))
            
        ) ||
        state := DAYS_BELOW_MINIMUM_SEARCHED//find those days where the income is below the required minimum
    END
END