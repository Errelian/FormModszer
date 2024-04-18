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




ABSTRACT_VARIABLES
    measurement_results ,

    // Getting the max/min results from measurement_results
    max_result ,
    min_result

INVARIANT
    // All of the results are between MIN_VALUE (-100) and MAX_VALUE (100) (they are lower and upper limits and set in definitions.def)    
    measurement_results : seq ( - 100  .. 100     )

    & max_result : - 100    .. 100
    & min_result : - 100    .. 100

    & ! ii . ( ii : dom ( measurement_results ) => measurement_results ( ii ) <= max_result )
    //& !ii.(ii : dom(measurement_results) => measurement_results(ii) >= min_result)

    //& (size(measurement_results) > 0 => max_result = max(ran(measurement_results)))
    //& (size(measurement_results) > 0 => min_result = min(ran(measurement_results)))

    & size ( measurement_results ) <= 100
INITIALISATION
    measurement_results := <>

    || max_result := 0
    || min_result := 0

OPERATIONS
    init =
    BEGIN
        measurement_results := <>

        || max_result := 0
        || min_result := 0
    END

    ;

    add_measurement_result ( new_measurement_result ) =
    PRE
        new_measurement_result : - 100    .. 100                 // The new value is in the range specified in the definitions
        & measurement_results : seq ( - 100  .. 100     )        // The results are still in the range specified in the definitions
        & size ( measurement_results ) <= 100
    THEN
        IF
            size ( measurement_results ) < 100
        THEN
            LET new_measurement_results BE
                new_measurement_results = measurement_results <- new_measurement_result        // Simply adding the new result to the end
            IN
                measurement_results := new_measurement_results
                || max_result := max ( ran ( new_measurement_results ) )
                //|| min_result := min(ran(new_measurement_results))
            END
        ELSE
            LET new_measurement_results BE
                new_measurement_results = tail ( measurement_results ) <- new_measurement_result // "Removing" the first element (and shifting the results), adding the new result to the end
            IN
                measurement_results := new_measurement_results
                || max_result := max ( ran ( new_measurement_results ) )
                //|| min_result := min(ran(new_measurement_results))
            END
        END
    END

    ;

    get_max_value =
    PRE
        size ( measurement_results ) > 0
    THEN
        max_result := max ( ran ( measurement_results ) )
    END

    ;

    get_min_value =
    PRE
        size ( measurement_results ) > 0
    THEN
        min_result := min ( ran ( measurement_results ) )
    END

END
