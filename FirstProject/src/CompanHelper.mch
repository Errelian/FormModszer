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
        income_array,
        expense_array,
        
        minimum_income,
        has_min_income,
        day_indexes_below_minimum,
        
        highest_income_index 
        
INVARIANT
    income_array : seq(INTEGER) &
    expense_array : seq(INTEGER) &
    
    minimum_income : INTEGER &
    has_min_income : BOOL & 
    day_indexes_below_minimum : POW(INTEGER) &
    
    highest_income_index : INTEGER
    
INITIALISATION
    income_array  := [] ||
    expense_array := [] ||
    
    minimum_income := 0 ||
    has_min_income := FALSE ||
    
    day_indexes_below_minimum := {} ||
    
    highest_income_index := 0
    
OPERATIONS
    
    read_min_income = 
    PRE
        has_min_income = FALSE
    THEN
        minimum_income :: INT ||
        has_min_income := TRUE
    END;
    
    read_into_income_array =
    PRE
        (size(income_array) < number_of_days) & has_min_income = TRUE
    THEN
        income_array:(
            income_array : seq(INT) &
            front(income_array) = income_array$0 &
            size(income_array) = size(income_array$0) + 1
        )
    END;
    
    read_into_expense_array =
    PRE
        (size(expense_array) < number_of_days) & has_min_income = TRUE
    THEN 
        expense_array:(
            expense_array : seq(INT) &
            front(expense_array) = expense_array$0 &
            size(expense_array) = size(expense_array$0) + 1
        )
    END;
    
    find_largest_income_day =
    PRE
        size(income_array) = number_of_days
    THEN
        highest_income_index :: income_array~[{max(ran(income_array))}]
    END;
    
    find_days_below_minimum =
    PRE
        size(income_array) = number_of_days
    THEN 
        day_indexes_below_minimum := {day | day : dom(income_array) & income_array(day) < minimum_income }
    END
END
