/* CompanHelper
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
    CompanHelper

DEFINITIONS
    "definitions.def" //is the way I use this correct?

VARIABLES
        income_array, //income data
        income_reader,
        income_read,
        
        expense_array, //expense data
        expense_reader,
        expense_read,
        
        minimum_income, //the minimum required income
        has_min_income, //was the minimum income read already?
        day_indexes_below_minimum, //which days did the income not go above the required one
        
        highest_income_index //which day had the most income
        
INVARIANT
    income_array : seq(NAT) &
    income_reader : NAT &
    income_read : BOOL &
    
    expense_array : seq(NAT) &
    expense_reader : NAT &
    expense_read : BOOL &
    
    minimum_income : NAT &
    has_min_income : BOOL & 
    day_indexes_below_minimum : FIN(NAT) &
    
    highest_income_index : INTEGER &
    
    size(income_array) <= NUMBER_OF_DAYS &
    size(expense_array) <= NUMBER_OF_DAYS &
    card(day_indexes_below_minimum) <= NUMBER_OF_DAYS &
    highest_income_index <= NUMBER_OF_DAYS &
    minimum_income >= 0 &
    !ii.(ii : dom(income_array) => income_array(ii) >= 0) &
    !ii.(ii : dom(expense_array) => expense_array(ii) >= 0) &

    (has_min_income = FALSE => (size(income_array) = 0 & size(expense_array) = 0))
INITIALISATION
    income_array  := [] ||
    income_reader :: NAT ||
    income_read := FALSE ||
    
    expense_array := [] ||
    expense_reader :: NAT ||
    expense_read := FALSE ||
    
    minimum_income := 0 ||
    has_min_income := FALSE ||
    
    day_indexes_below_minimum := {} ||
    
    highest_income_index := 0
    
OPERATIONS
    
    read_min_income = 
    PRE
        has_min_income = FALSE
    THEN
        minimum_income :: NAT ||
        has_min_income := TRUE
    END;
    
    read_income_value =
    PRE
        (size(income_array) < NUMBER_OF_DAYS) &
        income_read = FALSE &
        has_min_income = TRUE
    THEN
        income_reader :: NAT || income_read := TRUE
    END;
    
    
    read_into_income_array =
    PRE
        (size(income_array) < NUMBER_OF_DAYS) &
        has_min_income = TRUE &
        income_reader : NAT &
        income_read = TRUE
    THEN
        income_array := income_array <- income_reader || income_read := FALSE
    END;
    
    read_expense_value =
    PRE
        (size(expense_array) < NUMBER_OF_DAYS) &
        expense_read = FALSE &
        has_min_income = TRUE
    THEN
        expense_reader :: NAT || expense_read := TRUE
    END;
    
    read_into_expense_array =
    PRE
        (size(expense_array) < NUMBER_OF_DAYS) &
        has_min_income = TRUE &
        expense_reader : NAT &
        expense_read = TRUE
    THEN 
        expense_array := expense_array <- expense_reader || expense_read := FALSE
    END;
    
    find_largest_income_day =
    PRE
        size(income_array) = NUMBER_OF_DAYS &
        has_min_income = TRUE &
        ran(income_array) : FIN(NAT)
    THEN
        highest_income_index :: income_array~[{max(ran(income_array))}] //find the day with the most income
    END;
    
    find_days_below_minimum =
    PRE
        size(income_array) = NUMBER_OF_DAYS &
        has_min_income = TRUE
        
    THEN 
        day_indexes_below_minimum := {day | day : dom(income_array) & income_array(day) < minimum_income } //find those days where the income is below the required minimum
    END
END