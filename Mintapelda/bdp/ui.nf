Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ui))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ui))==(Machine(ui));
  Level(Machine(ui))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ui)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ui))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ui))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ui))==(?);
  List_Includes(Machine(ui))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ui))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ui))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ui))==(?);
  Context_List_Variables(Machine(ui))==(?);
  Abstract_List_Variables(Machine(ui))==(?);
  Local_List_Variables(Machine(ui))==(ss);
  List_Variables(Machine(ui))==(ss);
  External_List_Variables(Machine(ui))==(ss)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ui))==(?);
  Abstract_List_VisibleVariables(Machine(ui))==(?);
  External_List_VisibleVariables(Machine(ui))==(?);
  Expanded_List_VisibleVariables(Machine(ui))==(?);
  List_VisibleVariables(Machine(ui))==(?);
  Internal_List_VisibleVariables(Machine(ui))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ui))==(btrue);
  Gluing_List_Invariant(Machine(ui))==(btrue);
  Expanded_List_Invariant(Machine(ui))==(btrue);
  Abstract_List_Invariant(Machine(ui))==(btrue);
  Context_List_Invariant(Machine(ui))==(btrue);
  List_Invariant(Machine(ui))==(ss: seq(-100..100) & size(ss)>50)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ui))==(btrue);
  Abstract_List_Assertions(Machine(ui))==(btrue);
  Context_List_Assertions(Machine(ui))==(btrue);
  List_Assertions(Machine(ui))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ui))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ui))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ui))==(ss:=<>);
  Context_List_Initialisation(Machine(ui))==(skip);
  List_Initialisation(Machine(ui))==(ss:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ui))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ui))==(btrue);
  List_Constraints(Machine(ui))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ui))==(read,empty);
  List_Operations(Machine(ui))==(read,empty)
END
&
THEORY ListInputX IS
  List_Input(Machine(ui),read)==(?);
  List_Input(Machine(ui),empty)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ui),read)==(?);
  List_Output(Machine(ui),empty)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ui),read)==(read);
  List_Header(Machine(ui),empty)==(empty)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ui),read)==(btrue);
  List_Precondition(Machine(ui),empty)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ui),empty)==(btrue | ss:=<>);
  Expanded_List_Substitution(Machine(ui),read)==(btrue | @(ss$1).(ss$1: seq(-100..100) & size(ss$1)<50 ==> ss:=ss$1));
  List_Substitution(Machine(ui),read)==(ss: (ss: seq(-100..100) & size(ss)<50));
  List_Substitution(Machine(ui),empty)==(ss:=<>)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ui))==(?);
  Inherited_List_Constants(Machine(ui))==(?);
  List_Constants(Machine(ui))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(ui))==(?);
  Context_List_Defered(Machine(ui))==(?);
  Context_List_Sets(Machine(ui))==(?);
  List_Valuable_Sets(Machine(ui))==(?);
  Inherited_List_Enumerated(Machine(ui))==(?);
  Inherited_List_Defered(Machine(ui))==(?);
  Inherited_List_Sets(Machine(ui))==(?);
  List_Enumerated(Machine(ui))==(?);
  List_Defered(Machine(ui))==(?);
  List_Sets(Machine(ui))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ui))==(?);
  Expanded_List_HiddenConstants(Machine(ui))==(?);
  List_HiddenConstants(Machine(ui))==(?);
  External_List_HiddenConstants(Machine(ui))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ui))==(btrue);
  Context_List_Properties(Machine(ui))==(btrue);
  Inherited_List_Properties(Machine(ui))==(btrue);
  List_Properties(Machine(ui))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ui),read)==(?);
  List_ANY_Var(Machine(ui),empty)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ui)) == (? | ? | ss | ? | read,empty | ? | ? | ? | ui);
  List_Of_HiddenCst_Ids(Machine(ui)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ui)) == (?);
  List_Of_VisibleVar_Ids(Machine(ui)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ui)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(ui)) == (Type(ss) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ui)) == (Type(empty) == Cst(No_type,No_type);Type(read) == Cst(No_type,No_type))
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
