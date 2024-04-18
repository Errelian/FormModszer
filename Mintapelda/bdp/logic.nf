Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(logic))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(logic))==(Machine(logic));
  Level(Machine(logic))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(logic)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(logic))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(logic))==(ui)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(logic))==(?);
  List_Includes(Machine(logic))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(logic))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(logic))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(logic))==(ss);
  Context_List_Variables(Machine(logic))==(ss);
  Abstract_List_Variables(Machine(logic))==(?);
  Local_List_Variables(Machine(logic))==(ff);
  List_Variables(Machine(logic))==(ff);
  External_List_Variables(Machine(logic))==(ff)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(logic))==(?);
  Abstract_List_VisibleVariables(Machine(logic))==(?);
  External_List_VisibleVariables(Machine(logic))==(?);
  Expanded_List_VisibleVariables(Machine(logic))==(?);
  List_VisibleVariables(Machine(logic))==(?);
  Internal_List_VisibleVariables(Machine(logic))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(logic))==(btrue);
  Gluing_List_Invariant(Machine(logic))==(ff/=<> => !ii.(ii: dom(ff) => ff(ii) = ss(ii)+1) & dom(ff) = dom(ss));
  Expanded_List_Invariant(Machine(logic))==(btrue);
  Abstract_List_Invariant(Machine(logic))==(btrue);
  Context_List_Invariant(Machine(logic))==(ss: seq(-100..100) & size(ss)>50);
  List_Invariant(Machine(logic))==(ff: seq(-100..100) & size(ff)<50)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(logic))==(btrue);
  Abstract_List_Assertions(Machine(logic))==(btrue);
  Context_List_Assertions(Machine(logic))==(btrue);
  List_Assertions(Machine(logic))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(logic))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(logic))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(logic))==(ff:=<>);
  Context_List_Initialisation(Machine(logic))==(ss:=<>);
  List_Initialisation(Machine(logic))==(ff:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(logic))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(logic),Machine(ui))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(logic))==(btrue);
  List_Constraints(Machine(logic))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(logic))==(init,calc);
  List_Operations(Machine(logic))==(init,calc)
END
&
THEORY ListInputX IS
  List_Input(Machine(logic),init)==(?);
  List_Input(Machine(logic),calc)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(logic),init)==(?);
  List_Output(Machine(logic),calc)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(logic),init)==(init);
  List_Header(Machine(logic),calc)==(calc)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(logic),init)==(btrue);
  List_Precondition(Machine(logic),calc)==(0<size(ss) & ss: seq(-100..100))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(logic),calc)==(0<size(ss) & ss: seq(-100..100) | @(ff$1).(ff$1: seq(-99..100) & !ii.(ii: dom(ss) => ff$1(ii) = ss(ii)+1) & dom(ss) = dom(ff$1) & size(ff$1)<50 ==> ff:=ff$1));
  Expanded_List_Substitution(Machine(logic),init)==(btrue | ff:=<>);
  List_Substitution(Machine(logic),init)==(ff:=<>);
  List_Substitution(Machine(logic),calc)==(ff: (ff: seq(-99..100) & !ii.(ii: dom(ss) => ff(ii) = ss(ii)+1) & dom(ss) = dom(ff) & size(ff)<50))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(logic))==(?);
  Inherited_List_Constants(Machine(logic))==(?);
  List_Constants(Machine(logic))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(logic))==(?);
  Context_List_Defered(Machine(logic))==(?);
  Context_List_Sets(Machine(logic))==(?);
  List_Valuable_Sets(Machine(logic))==(?);
  Inherited_List_Enumerated(Machine(logic))==(?);
  Inherited_List_Defered(Machine(logic))==(?);
  Inherited_List_Sets(Machine(logic))==(?);
  List_Enumerated(Machine(logic))==(?);
  List_Defered(Machine(logic))==(?);
  List_Sets(Machine(logic))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(logic))==(?);
  Expanded_List_HiddenConstants(Machine(logic))==(?);
  List_HiddenConstants(Machine(logic))==(?);
  External_List_HiddenConstants(Machine(logic))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(logic))==(btrue);
  Context_List_Properties(Machine(logic))==(btrue);
  Inherited_List_Properties(Machine(logic))==(btrue);
  List_Properties(Machine(logic))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(logic),init)==(?);
  List_ANY_Var(Machine(logic),calc)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(logic)) == (? | ? | ff | ? | init,calc | ? | used(Machine(ui)) | ? | logic);
  List_Of_HiddenCst_Ids(Machine(logic)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(logic)) == (?);
  List_Of_VisibleVar_Ids(Machine(logic)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(logic)) == (?: ?);
  List_Of_Ids(Machine(ui)) == (? | ? | ss | ? | read,empty | ? | ? | ? | ui);
  List_Of_HiddenCst_Ids(Machine(ui)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ui)) == (?);
  List_Of_VisibleVar_Ids(Machine(ui)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ui)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(logic)) == (Type(ff) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(logic)) == (Type(calc) == Cst(No_type,No_type);Type(init) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == KO;
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
