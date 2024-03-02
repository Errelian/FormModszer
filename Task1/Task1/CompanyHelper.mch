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
    
DEFINITIONS
    "definitions.def" //is the way I use this correct?

VARIABLES
        income_array,
        income_read,
        working_income_array,
        expense_array,
        expense_read,
        
        minimum_income,
        has_min_income,
        day_indexes_below_minimum,
        
        highest_income,
        highest_income_index
        
INVARIANT
    income_array : seq(INTEGER) &
    income_read : INTEGER &
    working_income_array : seq(INTEGER) &//is income/expense an int or a float? do we want to read data starting form day 1 to 10 or day 10 to 1?
    expense_array : seq(INTEGER) &//how do I create a sequence that stores a certain type of data? is this correct?
    expense_read : INTEGER &
    
    minimum_income : INTEGER & //do I need to define functions here? they are technically invariants I guess
    has_min_income : BOOL &
    day_indexes_below_minimum : seq(INTEGER) &
    
    highest_income : INTEGER &
    highest_income_index : INTEGER
    
INITIALISATION
    income_array :: seq(INTEGER) || //is there a way to initalise with empty sequences without type mismatching?
    income_read :: INTEGER ||
    working_income_array :: seq(INTEGER) ||
    expense_array :: seq(INTEGER) || //sequence typing is a question in general
    expense_read :: INTEGER ||
    
    minimum_income :: INTEGER ||
    has_min_income := FALSE ||
    day_indexes_below_minimum :: seq(INTEGER) ||
    
    highest_income :: INTEGER ||
    highest_income_index :: INTEGER
    
OPERATIONS
    
    read_min_income = 
    PRE
        has_min_income = FALSE
    THEN
        minimum_income :: INTEGER ||
        has_min_income := TRUE
    END;
    
    read_into_income_array =
    PRE
        (size(income_array) < number_of_days) & has_min_income = TRUE
    THEN
        income_read :: INTEGER || income_array := (income_array <- income_read) //how do I do this without a type mismatch? am I tail inserting correctly?
    END;
    
    read_into_expense_array =
    PRE
        (size(expense_array) < number_of_days) & has_min_income = TRUE
    THEN 
        expense_read :: INTEGER || expense_array := (expense_array <- expense_read)
    END;
    
    find_largest_income_day =
    PRE
        size(income_array) = number_of_days //I assume I need recursion for the search? how do I define functions and such like that? would those be total or partial functions
    THEN
        
    END;
    
    find_days_below_minimum =
    PRE
        size(income_array) = number_of_days
    THEN 
        
    END
    
END
