/* Thermostat
 * Author: Anna Sike (CI6U9I)
 * Creation date: 2024. 03. 07.
 *
 * FELADAT
 *
 * Egy termosztát szoftverének a specifikációját kell elkészíteni, amelynek az alábbi követelményeket kell megvalósítania:
 * - 100 db mérési eredményt legyen képes eltárolni.
 * - A mért eredmények megadásához rendelkezzen egy művelettel.
 * - A géptől le lehessen kérdezni, hogy a megadott értékek között mi a maximális és minimális érték.
 * - Az adatok folyamatosan érkeznek, a 101. adat érkezésekor a gép felejtse el a legrégebben megadott adatot.
 *
 * Az eltárolható mérési eredmények száma egy definíciós fájlban legyen megadva. Az adatokat egyesével lehessen beolvasni.
 * 
 * A forráskód fejrészében egy komment blokkba legyen bemásolva a feladat szöveges is. Elküldeni az archivált B projektet kell.
 */
 
MACHINE
    Thermostat
    
DEFINITIONS
    "definitions.def"
    
VARIABLES
    measurement_results,
    
    max_value,
    min_value
    
INVARIANT
    measurement_results : seq(INTEGER)
    
    & max_value : INTEGER
    & min_value : INTEGER
    
    & size(measurement_results) <= max_measurement_results
    
    & min_value >= min_result_value
    & max_value <= max_result_value
    
    // All of the results are between -100 and 100 (or what is set in the definitions.def)
    & (!measurement_result.(measurement_result : ran(measurement_results) => (measurement_result >= min_result_value & measurement_result <= max_result_value)))
    
INITIALISATION
    measurement_results := []
    
    || max_value :: INTEGER
    || min_value :: INTEGER
    
OPERATIONS
    add_measurement_result(new_measurement_result) =
    PRE
        new_measurement_result : INTEGER &
        // We only need values that are in the given range
        new_measurement_result >= min_result_value &
        new_measurement_result <= max_result_value
    THEN
        IF
            size(measurement_results) < max_measurement_results
        THEN
            // There's still place left: the new value will be added to the sequence
            measurement_results:(
                    measurement_results : seq(INTEGER) 
                    & new_measurement_result : INTEGER
                    & front(measurement_results) = measurement_results$0             // The beginning of the sequence is the same as the whole sequence before adding the result
                    & last(measurement_results) = new_measurement_result            // The last element is in the last place
                    & size(measurement_results) = size(measurement_results$0) + 1)    // The size is bigger by one
        ELSE
            // The oldest value will be removed and all of the values will be shifted, so th new value can take up the last place
            measurement_results:(
                    measurement_results : seq(INTEGER) 
                    & new_measurement_result : INTEGER
                    & front(measurement_results) = tail(measurement_results$0)         // Shifting: the beginning of the sequence is the same as the end of the sequence before adding the result
                    & last(measurement_results) = new_measurement_result                // The last element is in the last place
                    & size(measurement_results) = max_measurement_results)                // The size does not change
        END
    END
    
    ;
    
    get_max_value =
    PRE
        size(measurement_results) > 0        // We need at least 1 element for max-search
    THEN
        max_value := max(ran(measurement_results))
    END

    ;
    
    get_min_value =
    PRE
        size(measurement_results) > 0        // We need at least 1 element for min-search
    THEN
        min_value := min(ran(measurement_results))
    END

END
