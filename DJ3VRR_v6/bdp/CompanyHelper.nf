Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CompanyHelper))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CompanyHelper))==(Machine(CompanyHelper));
  Level(Machine(CompanyHelper))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CompanyHelper)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CompanyHelper))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CompanyHelper))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CompanyHelper))==(?);
  List_Includes(Machine(CompanyHelper))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CompanyHelper))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CompanyHelper))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CompanyHelper))==(?);
  Context_List_Variables(Machine(CompanyHelper))==(?);
  Abstract_List_Variables(Machine(CompanyHelper))==(?);
  Local_List_Variables(Machine(CompanyHelper))==(highest_income_index,day_indexes_below_minimum,state,minimum_income,expense_array,income_array);
  List_Variables(Machine(CompanyHelper))==(highest_income_index,day_indexes_below_minimum,state,minimum_income,expense_array,income_array);
  External_List_Variables(Machine(CompanyHelper))==(highest_income_index,day_indexes_below_minimum,state,minimum_income,expense_array,income_array)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CompanyHelper))==(?);
  Abstract_List_VisibleVariables(Machine(CompanyHelper))==(?);
  External_List_VisibleVariables(Machine(CompanyHelper))==(?);
  Expanded_List_VisibleVariables(Machine(CompanyHelper))==(?);
  List_VisibleVariables(Machine(CompanyHelper))==(?);
  Internal_List_VisibleVariables(Machine(CompanyHelper))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CompanyHelper))==(btrue);
  Gluing_List_Invariant(Machine(CompanyHelper))==(btrue);
  Expanded_List_Invariant(Machine(CompanyHelper))==(btrue);
  Abstract_List_Invariant(Machine(CompanyHelper))==(btrue);
  Context_List_Invariant(Machine(CompanyHelper))==(btrue);
  List_Invariant(Machine(CompanyHelper))==(income_array: seq(NAT) & expense_array: seq(NAT) & minimum_income: NAT & state: STATUS_TYPE & day_indexes_below_minimum: FIN(1..5) & highest_income_index: 0..5 & size(income_array)<=5 & dom(income_array): FIN(1..5) & size(expense_array)<=5 & highest_income_index<=size(income_array) & card(day_indexes_below_minimum)<=size(income_array) & (state = INIT => size(income_array) = 0 & size(expense_array) = 0 & card(day_indexes_below_minimum) = 0 & minimum_income = 0 & highest_income_index = 0) & (state = READ_MIN => size(income_array) = 0 & size(expense_array) = 0 & card(day_indexes_below_minimum) = 0 & highest_income_index = 0) & (state = READ_DATA => size(income_array) = 5 & size(expense_array) = 5 & card(day_indexes_below_minimum) = 0 & highest_income_index = 0) & (state = HIGHEST_SEARCHED => size(income_array) = 5 & size(expense_array) = 5 & card(day_indexes_below_minimum) = 0 & highest_income_index: income_array~[{max(ran(income_array))}]) & (state = DAYS_BELOW_MINIMUM_SEARCHED => size(income_array) = 5 & size(expense_array) = 5 & day_indexes_below_minimum: FIN(1..5) & !ii.(ii: day_indexes_below_minimum => ii: dom(income_array) & income_array(ii)<minimum_income) & !ii.(ii: dom(income_array) & income_array(ii)<minimum_income => ii: day_indexes_below_minimum) & highest_income_index: income_array~[{max(ran(income_array))}]))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CompanyHelper))==(btrue);
  Abstract_List_Assertions(Machine(CompanyHelper))==(btrue);
  Context_List_Assertions(Machine(CompanyHelper))==(btrue);
  List_Assertions(Machine(CompanyHelper))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CompanyHelper))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CompanyHelper))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CompanyHelper))==(income_array,expense_array,minimum_income,state,day_indexes_below_minimum,highest_income_index:=<>,<>,0,INIT,{},0);
  Context_List_Initialisation(Machine(CompanyHelper))==(skip);
  List_Initialisation(Machine(CompanyHelper))==(income_array:=<> || expense_array:=<> || minimum_income:=0 || state:=INIT || day_indexes_below_minimum:={} || highest_income_index:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CompanyHelper))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CompanyHelper))==(btrue);
  List_Constraints(Machine(CompanyHelper))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CompanyHelper))==(read_min_income,populate_financial_data,find_largest_income_day,find_days_below_minimum);
  List_Operations(Machine(CompanyHelper))==(read_min_income,populate_financial_data,find_largest_income_day,find_days_below_minimum)
END
&
THEORY ListInputX IS
  List_Input(Machine(CompanyHelper),read_min_income)==(?);
  List_Input(Machine(CompanyHelper),populate_financial_data)==(?);
  List_Input(Machine(CompanyHelper),find_largest_income_day)==(?);
  List_Input(Machine(CompanyHelper),find_days_below_minimum)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(CompanyHelper),read_min_income)==(?);
  List_Output(Machine(CompanyHelper),populate_financial_data)==(?);
  List_Output(Machine(CompanyHelper),find_largest_income_day)==(?);
  List_Output(Machine(CompanyHelper),find_days_below_minimum)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(CompanyHelper),read_min_income)==(read_min_income);
  List_Header(Machine(CompanyHelper),populate_financial_data)==(populate_financial_data);
  List_Header(Machine(CompanyHelper),find_largest_income_day)==(find_largest_income_day);
  List_Header(Machine(CompanyHelper),find_days_below_minimum)==(find_days_below_minimum)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(CompanyHelper),read_min_income)==(state = INIT);
  List_Precondition(Machine(CompanyHelper),populate_financial_data)==(size(income_array)<5 & state = READ_MIN);
  List_Precondition(Machine(CompanyHelper),find_largest_income_day)==(state = READ_DATA & size(income_array) = 5 & dom(income_array): FIN(1..5) & !ii.(ii: dom(income_array) => ii: 1..5 & ii: NAT1));
  List_Precondition(Machine(CompanyHelper),find_days_below_minimum)==(state = HIGHEST_SEARCHED & size(income_array) = 5 & card(dom(income_array)) = size(income_array))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(CompanyHelper),find_days_below_minimum)==(state = HIGHEST_SEARCHED & size(income_array) = 5 & card(dom(income_array)) = size(income_array) | @(day_indexes_below_minimum$1).(day_indexes_below_minimum$1: FIN(1..5) & card(day_indexes_below_minimum$1)<=size(income_array) & !ii.(ii: day_indexes_below_minimum$1 => ii: dom(income_array) & income_array(ii)<minimum_income) & !ii.(ii: dom(income_array) & income_array(ii)<minimum_income => ii: day_indexes_below_minimum$1) ==> day_indexes_below_minimum:=day_indexes_below_minimum$1) || state:=DAYS_BELOW_MINIMUM_SEARCHED);
  Expanded_List_Substitution(Machine(CompanyHelper),find_largest_income_day)==(state = READ_DATA & size(income_array) = 5 & dom(income_array): FIN(1..5) & !ii.(ii: dom(income_array) => ii: 1..5 & ii: NAT1) | @(highest_income_index$0).(highest_income_index$0: income_array~[{max(ran(income_array))}] ==> highest_income_index:=highest_income_index$0) || state:=HIGHEST_SEARCHED);
  Expanded_List_Substitution(Machine(CompanyHelper),populate_financial_data)==(size(income_array)<5 & state = READ_MIN | @(income_array$1).(income_array$1: seq(NAT) & size(income_array$1) = 5 ==> income_array:=income_array$1) || @(expense_array$1).(expense_array$1: seq(NAT) & size(expense_array$1) = 5 ==> expense_array:=expense_array$1) || state:=READ_DATA);
  Expanded_List_Substitution(Machine(CompanyHelper),read_min_income)==(state = INIT | @(minimum_income$0).(minimum_income$0: NAT ==> minimum_income:=minimum_income$0) || state:=READ_MIN);
  List_Substitution(Machine(CompanyHelper),read_min_income)==(minimum_income:: NAT || state:=READ_MIN);
  List_Substitution(Machine(CompanyHelper),populate_financial_data)==(income_array: (income_array: seq(NAT) & size(income_array) = 5) || expense_array: (expense_array: seq(NAT) & size(expense_array) = 5) || state:=READ_DATA);
  List_Substitution(Machine(CompanyHelper),find_largest_income_day)==(highest_income_index:: income_array~[{max(ran(income_array))}] || state:=HIGHEST_SEARCHED);
  List_Substitution(Machine(CompanyHelper),find_days_below_minimum)==(day_indexes_below_minimum: (day_indexes_below_minimum: FIN(1..5) & card(day_indexes_below_minimum)<=size(income_array) & !ii.(ii: day_indexes_below_minimum => ii: dom(income_array) & income_array(ii)<minimum_income) & !ii.(ii: dom(income_array) & income_array(ii)<minimum_income => ii: day_indexes_below_minimum)) || state:=DAYS_BELOW_MINIMUM_SEARCHED)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CompanyHelper))==(?);
  Inherited_List_Constants(Machine(CompanyHelper))==(?);
  List_Constants(Machine(CompanyHelper))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CompanyHelper),STATUS_TYPE)==({INIT,READ_MIN,READ_DATA,HIGHEST_SEARCHED,DAYS_BELOW_MINIMUM_SEARCHED});
  Context_List_Enumerated(Machine(CompanyHelper))==(?);
  Context_List_Defered(Machine(CompanyHelper))==(?);
  Context_List_Sets(Machine(CompanyHelper))==(?);
  List_Valuable_Sets(Machine(CompanyHelper))==(?);
  Inherited_List_Enumerated(Machine(CompanyHelper))==(?);
  Inherited_List_Defered(Machine(CompanyHelper))==(?);
  Inherited_List_Sets(Machine(CompanyHelper))==(?);
  List_Enumerated(Machine(CompanyHelper))==(STATUS_TYPE);
  List_Defered(Machine(CompanyHelper))==(?);
  List_Sets(Machine(CompanyHelper))==(STATUS_TYPE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CompanyHelper))==(?);
  Expanded_List_HiddenConstants(Machine(CompanyHelper))==(?);
  List_HiddenConstants(Machine(CompanyHelper))==(?);
  External_List_HiddenConstants(Machine(CompanyHelper))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CompanyHelper))==(btrue);
  Context_List_Properties(Machine(CompanyHelper))==(btrue);
  Inherited_List_Properties(Machine(CompanyHelper))==(btrue);
  List_Properties(Machine(CompanyHelper))==(STATUS_TYPE: FIN(INTEGER) & not(STATUS_TYPE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(CompanyHelper),read_min_income)==(?);
  List_ANY_Var(Machine(CompanyHelper),populate_financial_data)==(?);
  List_ANY_Var(Machine(CompanyHelper),find_largest_income_day)==(?);
  List_ANY_Var(Machine(CompanyHelper),find_days_below_minimum)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CompanyHelper)) == (STATUS_TYPE,INIT,READ_MIN,READ_DATA,HIGHEST_SEARCHED,DAYS_BELOW_MINIMUM_SEARCHED | ? | highest_income_index,day_indexes_below_minimum,state,minimum_income,expense_array,income_array | ? | read_min_income,populate_financial_data,find_largest_income_day,find_days_below_minimum | ? | ? | ? | CompanyHelper);
  List_Of_HiddenCst_Ids(Machine(CompanyHelper)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CompanyHelper)) == (?);
  List_Of_VisibleVar_Ids(Machine(CompanyHelper)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CompanyHelper)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(CompanyHelper)) == (Type(STATUS_TYPE) == Cst(SetOf(etype(STATUS_TYPE,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(CompanyHelper)) == (Type(INIT) == Cst(etype(STATUS_TYPE,0,4));Type(READ_MIN) == Cst(etype(STATUS_TYPE,0,4));Type(READ_DATA) == Cst(etype(STATUS_TYPE,0,4));Type(HIGHEST_SEARCHED) == Cst(etype(STATUS_TYPE,0,4));Type(DAYS_BELOW_MINIMUM_SEARCHED) == Cst(etype(STATUS_TYPE,0,4)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(CompanyHelper)) == (Type(highest_income_index) == Mvl(btype(INTEGER,?,?));Type(day_indexes_below_minimum) == Mvl(SetOf(btype(INTEGER,?,?)));Type(state) == Mvl(etype(STATUS_TYPE,?,?));Type(minimum_income) == Mvl(btype(INTEGER,?,?));Type(expense_array) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(income_array) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(CompanyHelper)) == (Type(find_days_below_minimum) == Cst(No_type,No_type);Type(find_largest_income_day) == Cst(No_type,No_type);Type(populate_financial_data) == Cst(No_type,No_type);Type(read_min_income) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
