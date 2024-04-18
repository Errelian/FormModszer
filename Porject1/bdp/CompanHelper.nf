Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CompanHelper))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CompanHelper))==(Machine(CompanHelper));
  Level(Machine(CompanHelper))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CompanHelper)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CompanHelper))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CompanHelper))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CompanHelper))==(?);
  List_Includes(Machine(CompanHelper))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CompanHelper))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CompanHelper))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CompanHelper))==(?);
  Context_List_Variables(Machine(CompanHelper))==(?);
  Abstract_List_Variables(Machine(CompanHelper))==(?);
  Local_List_Variables(Machine(CompanHelper))==(highest_income_index,day_indexes_below_minimum,has_min_income,minimum_income,expense_array,income_array);
  List_Variables(Machine(CompanHelper))==(highest_income_index,day_indexes_below_minimum,has_min_income,minimum_income,expense_array,income_array);
  External_List_Variables(Machine(CompanHelper))==(highest_income_index,day_indexes_below_minimum,has_min_income,minimum_income,expense_array,income_array)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CompanHelper))==(?);
  Abstract_List_VisibleVariables(Machine(CompanHelper))==(?);
  External_List_VisibleVariables(Machine(CompanHelper))==(?);
  Expanded_List_VisibleVariables(Machine(CompanHelper))==(?);
  List_VisibleVariables(Machine(CompanHelper))==(?);
  Internal_List_VisibleVariables(Machine(CompanHelper))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CompanHelper))==(btrue);
  Gluing_List_Invariant(Machine(CompanHelper))==(btrue);
  Expanded_List_Invariant(Machine(CompanHelper))==(btrue);
  Abstract_List_Invariant(Machine(CompanHelper))==(btrue);
  Context_List_Invariant(Machine(CompanHelper))==(btrue);
  List_Invariant(Machine(CompanHelper))==(income_array: seq(NAT) & expense_array: seq(NAT) & minimum_income: NAT & has_min_income: BOOL & day_indexes_below_minimum: POW(NAT) & highest_income_index: NAT & size(income_array)<=5 & size(expense_array)<=5 & card(day_indexes_below_minimum)<=5 & highest_income_index<5 & minimum_income>=0 & !ii.(ii: dom(income_array) => income_array(ii)>=0) & !ii.(ii: dom(expense_array) => expense_array(ii)>=0) & (has_min_income = FALSE => size(income_array) = 0 & size(expense_array) = 0))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CompanHelper))==(btrue);
  Abstract_List_Assertions(Machine(CompanHelper))==(btrue);
  Context_List_Assertions(Machine(CompanHelper))==(btrue);
  List_Assertions(Machine(CompanHelper))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CompanHelper))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CompanHelper))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CompanHelper))==(income_array,expense_array,minimum_income,has_min_income,day_indexes_below_minimum,highest_income_index:=<>,<>,0,FALSE,{},0);
  Context_List_Initialisation(Machine(CompanHelper))==(skip);
  List_Initialisation(Machine(CompanHelper))==(income_array:=<> || expense_array:=<> || minimum_income:=0 || has_min_income:=FALSE || day_indexes_below_minimum:={} || highest_income_index:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CompanHelper))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CompanHelper))==(btrue);
  List_Constraints(Machine(CompanHelper))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CompanHelper))==(read_min_income,read_into_income_array,read_into_expense_array,find_largest_income_day,find_days_below_minimum);
  List_Operations(Machine(CompanHelper))==(read_min_income,read_into_income_array,read_into_expense_array,find_largest_income_day,find_days_below_minimum)
END
&
THEORY ListInputX IS
  List_Input(Machine(CompanHelper),read_min_income)==(?);
  List_Input(Machine(CompanHelper),read_into_income_array)==(?);
  List_Input(Machine(CompanHelper),read_into_expense_array)==(?);
  List_Input(Machine(CompanHelper),find_largest_income_day)==(?);
  List_Input(Machine(CompanHelper),find_days_below_minimum)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(CompanHelper),read_min_income)==(?);
  List_Output(Machine(CompanHelper),read_into_income_array)==(?);
  List_Output(Machine(CompanHelper),read_into_expense_array)==(?);
  List_Output(Machine(CompanHelper),find_largest_income_day)==(?);
  List_Output(Machine(CompanHelper),find_days_below_minimum)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(CompanHelper),read_min_income)==(read_min_income);
  List_Header(Machine(CompanHelper),read_into_income_array)==(read_into_income_array);
  List_Header(Machine(CompanHelper),read_into_expense_array)==(read_into_expense_array);
  List_Header(Machine(CompanHelper),find_largest_income_day)==(find_largest_income_day);
  List_Header(Machine(CompanHelper),find_days_below_minimum)==(find_days_below_minimum)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(CompanHelper),read_min_income)==(has_min_income = FALSE);
  List_Precondition(Machine(CompanHelper),read_into_income_array)==(size(income_array)<5 & has_min_income = TRUE);
  List_Precondition(Machine(CompanHelper),read_into_expense_array)==(size(expense_array)<5 & has_min_income = TRUE);
  List_Precondition(Machine(CompanHelper),find_largest_income_day)==(size(income_array) = 5);
  List_Precondition(Machine(CompanHelper),find_days_below_minimum)==(size(income_array) = 5)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(CompanHelper),find_days_below_minimum)==(size(income_array) = 5 | day_indexes_below_minimum:={day | day: dom(income_array) & income_array(day)<minimum_income});
  Expanded_List_Substitution(Machine(CompanHelper),find_largest_income_day)==(size(income_array) = 5 | @(highest_income_index$0).(highest_income_index$0: income_array~[{max(ran(income_array))}] ==> highest_income_index:=highest_income_index$0));
  Expanded_List_Substitution(Machine(CompanHelper),read_into_expense_array)==(size(expense_array)<5 & has_min_income = TRUE | @(expense_array$1).(expense_array$1: seq(NAT) & front(expense_array$1) = expense_array & size(expense_array$1) = size(expense_array)+1 ==> expense_array:=expense_array$1));
  Expanded_List_Substitution(Machine(CompanHelper),read_into_income_array)==(size(income_array)<5 & has_min_income = TRUE | @(income_array$1).(income_array$1: seq(NAT) & front(income_array$1) = income_array & size(income_array$1) = size(income_array)+1 ==> income_array:=income_array$1));
  Expanded_List_Substitution(Machine(CompanHelper),read_min_income)==(has_min_income = FALSE | @(minimum_income$0).(minimum_income$0: NAT ==> minimum_income:=minimum_income$0) || has_min_income:=TRUE);
  List_Substitution(Machine(CompanHelper),read_min_income)==(minimum_income:: NAT || has_min_income:=TRUE);
  List_Substitution(Machine(CompanHelper),read_into_income_array)==(income_array: (income_array: seq(NAT) & front(income_array) = income_array$0 & size(income_array) = size(income_array$0)+1));
  List_Substitution(Machine(CompanHelper),read_into_expense_array)==(expense_array: (expense_array: seq(NAT) & front(expense_array) = expense_array$0 & size(expense_array) = size(expense_array$0)+1));
  List_Substitution(Machine(CompanHelper),find_largest_income_day)==(highest_income_index:: income_array~[{max(ran(income_array))}]);
  List_Substitution(Machine(CompanHelper),find_days_below_minimum)==(day_indexes_below_minimum:={day | day: dom(income_array) & income_array(day)<minimum_income})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CompanHelper))==(?);
  Inherited_List_Constants(Machine(CompanHelper))==(?);
  List_Constants(Machine(CompanHelper))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(CompanHelper))==(?);
  Context_List_Defered(Machine(CompanHelper))==(?);
  Context_List_Sets(Machine(CompanHelper))==(?);
  List_Valuable_Sets(Machine(CompanHelper))==(?);
  Inherited_List_Enumerated(Machine(CompanHelper))==(?);
  Inherited_List_Defered(Machine(CompanHelper))==(?);
  Inherited_List_Sets(Machine(CompanHelper))==(?);
  List_Enumerated(Machine(CompanHelper))==(?);
  List_Defered(Machine(CompanHelper))==(?);
  List_Sets(Machine(CompanHelper))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CompanHelper))==(?);
  Expanded_List_HiddenConstants(Machine(CompanHelper))==(?);
  List_HiddenConstants(Machine(CompanHelper))==(?);
  External_List_HiddenConstants(Machine(CompanHelper))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CompanHelper))==(btrue);
  Context_List_Properties(Machine(CompanHelper))==(btrue);
  Inherited_List_Properties(Machine(CompanHelper))==(btrue);
  List_Properties(Machine(CompanHelper))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(CompanHelper),read_min_income)==(?);
  List_ANY_Var(Machine(CompanHelper),read_into_income_array)==(?);
  List_ANY_Var(Machine(CompanHelper),read_into_expense_array)==(?);
  List_ANY_Var(Machine(CompanHelper),find_largest_income_day)==(?);
  List_ANY_Var(Machine(CompanHelper),find_days_below_minimum)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CompanHelper)) == (? | ? | highest_income_index,day_indexes_below_minimum,has_min_income,minimum_income,expense_array,income_array | ? | read_min_income,read_into_income_array,read_into_expense_array,find_largest_income_day,find_days_below_minimum | ? | ? | ? | CompanHelper);
  List_Of_HiddenCst_Ids(Machine(CompanHelper)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CompanHelper)) == (?);
  List_Of_VisibleVar_Ids(Machine(CompanHelper)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CompanHelper)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(CompanHelper)) == (Type(highest_income_index) == Mvl(btype(INTEGER,?,?));Type(day_indexes_below_minimum) == Mvl(SetOf(btype(INTEGER,?,?)));Type(has_min_income) == Mvl(btype(BOOL,?,?));Type(minimum_income) == Mvl(btype(INTEGER,?,?));Type(expense_array) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(income_array) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(CompanHelper)) == (Type(find_days_below_minimum) == Cst(No_type,No_type);Type(find_largest_income_day) == Cst(No_type,No_type);Type(read_into_expense_array) == Cst(No_type,No_type);Type(read_into_income_array) == Cst(No_type,No_type);Type(read_min_income) == Cst(No_type,No_type))
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
