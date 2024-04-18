Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Thermostat))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Thermostat))==(Machine(Thermostat));
  Level(Machine(Thermostat))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Thermostat)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Thermostat))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Thermostat))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Thermostat))==(?);
  List_Includes(Machine(Thermostat))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Thermostat))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Thermostat))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Thermostat))==(?);
  Context_List_Variables(Machine(Thermostat))==(?);
  Abstract_List_Variables(Machine(Thermostat))==(?);
  Local_List_Variables(Machine(Thermostat))==(min_result,max_result,measurement_results);
  List_Variables(Machine(Thermostat))==(min_result,max_result,measurement_results);
  External_List_Variables(Machine(Thermostat))==(min_result,max_result,measurement_results)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Thermostat))==(?);
  Abstract_List_VisibleVariables(Machine(Thermostat))==(?);
  External_List_VisibleVariables(Machine(Thermostat))==(?);
  Expanded_List_VisibleVariables(Machine(Thermostat))==(?);
  List_VisibleVariables(Machine(Thermostat))==(?);
  Internal_List_VisibleVariables(Machine(Thermostat))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Thermostat))==(btrue);
  Gluing_List_Invariant(Machine(Thermostat))==(btrue);
  Expanded_List_Invariant(Machine(Thermostat))==(btrue);
  Abstract_List_Invariant(Machine(Thermostat))==(btrue);
  Context_List_Invariant(Machine(Thermostat))==(btrue);
  List_Invariant(Machine(Thermostat))==(measurement_results: seq(-100..100) & max_result: -100..100 & min_result: -100..100 & !ii.(ii: dom(measurement_results) => measurement_results(ii)<=max_result) & size(measurement_results)<=100)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Thermostat))==(btrue);
  Abstract_List_Assertions(Machine(Thermostat))==(btrue);
  Context_List_Assertions(Machine(Thermostat))==(btrue);
  List_Assertions(Machine(Thermostat))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Thermostat))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Thermostat))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Thermostat))==(measurement_results,max_result,min_result:=<>,0,0);
  Context_List_Initialisation(Machine(Thermostat))==(skip);
  List_Initialisation(Machine(Thermostat))==(measurement_results:=<> || max_result:=0 || min_result:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Thermostat))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Thermostat))==(btrue);
  List_Constraints(Machine(Thermostat))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Thermostat))==(init,add_measurement_result,get_max_value,get_min_value);
  List_Operations(Machine(Thermostat))==(init,add_measurement_result,get_max_value,get_min_value)
END
&
THEORY ListInputX IS
  List_Input(Machine(Thermostat),init)==(?);
  List_Input(Machine(Thermostat),add_measurement_result)==(new_measurement_result);
  List_Input(Machine(Thermostat),get_max_value)==(?);
  List_Input(Machine(Thermostat),get_min_value)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Thermostat),init)==(?);
  List_Output(Machine(Thermostat),add_measurement_result)==(?);
  List_Output(Machine(Thermostat),get_max_value)==(?);
  List_Output(Machine(Thermostat),get_min_value)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Thermostat),init)==(init);
  List_Header(Machine(Thermostat),add_measurement_result)==(add_measurement_result(new_measurement_result));
  List_Header(Machine(Thermostat),get_max_value)==(get_max_value);
  List_Header(Machine(Thermostat),get_min_value)==(get_min_value)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Thermostat),init)==(btrue);
  List_Precondition(Machine(Thermostat),add_measurement_result)==(new_measurement_result: -100..100 & measurement_results: seq(-100..100) & size(measurement_results)<=100);
  List_Precondition(Machine(Thermostat),get_max_value)==(size(measurement_results)>0);
  List_Precondition(Machine(Thermostat),get_min_value)==(size(measurement_results)>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Thermostat),get_min_value)==(size(measurement_results)>0 | min_result:=min(ran(measurement_results)));
  Expanded_List_Substitution(Machine(Thermostat),get_max_value)==(size(measurement_results)>0 | max_result:=max(ran(measurement_results)));
  Expanded_List_Substitution(Machine(Thermostat),add_measurement_result)==(new_measurement_result: -100..100 & measurement_results: seq(-100..100) & size(measurement_results)<=100 | size(measurement_results)<100 ==> @new_measurement_results.(new_measurement_results = measurement_results<-new_measurement_result ==> measurement_results,max_result:=new_measurement_results,max(ran(new_measurement_results))) [] not(size(measurement_results)<100) ==> @new_measurement_results.(new_measurement_results = tail(measurement_results)<-new_measurement_result ==> measurement_results,max_result:=new_measurement_results,max(ran(new_measurement_results))));
  Expanded_List_Substitution(Machine(Thermostat),init)==(btrue | measurement_results,max_result,min_result:=<>,0,0);
  List_Substitution(Machine(Thermostat),init)==(measurement_results:=<> || max_result:=0 || min_result:=0);
  List_Substitution(Machine(Thermostat),add_measurement_result)==(IF size(measurement_results)<100 THEN LET new_measurement_results BE new_measurement_results = measurement_results<-new_measurement_result IN measurement_results:=new_measurement_results || max_result:=max(ran(new_measurement_results)) END ELSE LET new_measurement_results BE new_measurement_results = tail(measurement_results)<-new_measurement_result IN measurement_results:=new_measurement_results || max_result:=max(ran(new_measurement_results)) END END);
  List_Substitution(Machine(Thermostat),get_max_value)==(max_result:=max(ran(measurement_results)));
  List_Substitution(Machine(Thermostat),get_min_value)==(min_result:=min(ran(measurement_results)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Thermostat))==(?);
  Inherited_List_Constants(Machine(Thermostat))==(?);
  List_Constants(Machine(Thermostat))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Thermostat))==(?);
  Context_List_Defered(Machine(Thermostat))==(?);
  Context_List_Sets(Machine(Thermostat))==(?);
  List_Valuable_Sets(Machine(Thermostat))==(?);
  Inherited_List_Enumerated(Machine(Thermostat))==(?);
  Inherited_List_Defered(Machine(Thermostat))==(?);
  Inherited_List_Sets(Machine(Thermostat))==(?);
  List_Enumerated(Machine(Thermostat))==(?);
  List_Defered(Machine(Thermostat))==(?);
  List_Sets(Machine(Thermostat))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Thermostat))==(?);
  Expanded_List_HiddenConstants(Machine(Thermostat))==(?);
  List_HiddenConstants(Machine(Thermostat))==(?);
  External_List_HiddenConstants(Machine(Thermostat))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Thermostat))==(btrue);
  Context_List_Properties(Machine(Thermostat))==(btrue);
  Inherited_List_Properties(Machine(Thermostat))==(btrue);
  List_Properties(Machine(Thermostat))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Thermostat),init)==(?);
  List_ANY_Var(Machine(Thermostat),add_measurement_result)==(?);
  List_ANY_Var(Machine(Thermostat),get_max_value)==(?);
  List_ANY_Var(Machine(Thermostat),get_min_value)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Thermostat)) == (? | ? | min_result,max_result,measurement_results | ? | init,add_measurement_result,get_max_value,get_min_value | ? | ? | ? | Thermostat);
  List_Of_HiddenCst_Ids(Machine(Thermostat)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Thermostat)) == (?);
  List_Of_VisibleVar_Ids(Machine(Thermostat)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Thermostat)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Thermostat)) == (Type(min_result) == Mvl(btype(INTEGER,?,?));Type(max_result) == Mvl(btype(INTEGER,?,?));Type(measurement_results) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Thermostat)) == (Type(get_min_value) == Cst(No_type,No_type);Type(get_max_value) == Cst(No_type,No_type);Type(add_measurement_result) == Cst(No_type,btype(INTEGER,?,?));Type(init) == Cst(No_type,No_type))
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
