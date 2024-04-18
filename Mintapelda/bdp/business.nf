Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(business))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(business))==(Machine(business));
  Level(Machine(business))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(business)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(business))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(business))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(business))==(ui,logic);
  List_Includes(Machine(business))==(logic,ui)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(business))==(calc)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(business))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(business))==(?);
  Context_List_Variables(Machine(business))==(?);
  Abstract_List_Variables(Machine(business))==(?);
  Local_List_Variables(Machine(business))==(?);
  List_Variables(Machine(business))==(ff,ss);
  External_List_Variables(Machine(business))==(ff,ss)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(business))==(?);
  Abstract_List_VisibleVariables(Machine(business))==(?);
  External_List_VisibleVariables(Machine(business))==(?);
  Expanded_List_VisibleVariables(Machine(business))==(?);
  List_VisibleVariables(Machine(business))==(?);
  Internal_List_VisibleVariables(Machine(business))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(business))==(btrue);
  Gluing_List_Invariant(Machine(business))==(btrue);
  Abstract_List_Invariant(Machine(business))==(btrue);
  Expanded_List_Invariant(Machine(business))==(ff: seq(-100..100) & size(ff)<50 & ss: seq(-100..100) & size(ss)>50);
  Context_List_Invariant(Machine(business))==(btrue);
  List_Invariant(Machine(business))==((ff/=<> => ss/=<>) & (ff/=<> => !ii.(ii: dom(ff) => ff(ii) = ss(ii)+1) & dom(ff) = dom(ss)))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(business))==(btrue);
  Expanded_List_Assertions(Machine(business))==(btrue);
  Context_List_Assertions(Machine(business))==(btrue);
  List_Assertions(Machine(business))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(business))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(business))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(business))==(ff:=<>;ss:=<>);
  Context_List_Initialisation(Machine(business))==(skip);
  List_Initialisation(Machine(business))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(business))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(business),Machine(logic))==(?);
  List_Instanciated_Parameters(Machine(business),Machine(ui))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(business),Machine(ui))==(btrue);
  List_Context_Constraints(Machine(business))==(btrue);
  List_Constraints(Machine(business))==(btrue);
  List_Constraints(Machine(business),Machine(logic))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(business))==(b_read,b_empty,calc);
  List_Operations(Machine(business))==(b_read,b_empty,calc)
END
&
THEORY ListInputX IS
  List_Input(Machine(business),calc)==(?);
  List_Input(Machine(business),b_read)==(?);
  List_Input(Machine(business),b_empty)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(business),calc)==(?);
  List_Output(Machine(business),b_read)==(?);
  List_Output(Machine(business),b_empty)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(business),calc)==(calc);
  List_Header(Machine(business),b_read)==(b_read);
  List_Header(Machine(business),b_empty)==(b_empty)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(business),calc)==(0<size(ss) & ss: seq(-100..100));
  List_Precondition(Machine(business),calc)==(0<size(ss) & ss: seq(-100..100));
  List_Precondition(Machine(business),b_read)==(ff = <>);
  List_Precondition(Machine(business),b_empty)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(business),b_empty)==(btrue | ss:=<> || ff:=<>);
  Expanded_List_Substitution(Machine(business),b_read)==(ff = <> & btrue | @(ss$1).(ss$1: seq(-100..100) & size(ss$1)<50 ==> ss:=ss$1));
  List_Substitution(Machine(business),calc)==(ff: (ff: seq(-99..100) & !ii.(ii: dom(ss) => ff(ii) = ss(ii)+1) & dom(ss) = dom(ff) & size(ff)<50));
  Expanded_List_Substitution(Machine(business),calc)==(0<size(ss) & ss: seq(-100..100) | @(ff$1).(ff$1: seq(-99..100) & !ii.(ii: dom(ss) => ff$1(ii) = ss(ii)+1) & dom(ss) = dom(ff$1) & size(ff$1)<50 ==> ff:=ff$1));
  List_Substitution(Machine(business),b_read)==(read);
  List_Substitution(Machine(business),b_empty)==(empty || init)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(business))==(?);
  Inherited_List_Constants(Machine(business))==(?);
  List_Constants(Machine(business))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(business))==(?);
  Context_List_Defered(Machine(business))==(?);
  Context_List_Sets(Machine(business))==(?);
  List_Valuable_Sets(Machine(business))==(?);
  Inherited_List_Enumerated(Machine(business))==(?);
  Inherited_List_Defered(Machine(business))==(?);
  Inherited_List_Sets(Machine(business))==(?);
  List_Enumerated(Machine(business))==(?);
  List_Defered(Machine(business))==(?);
  List_Sets(Machine(business))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(business))==(?);
  Expanded_List_HiddenConstants(Machine(business))==(?);
  List_HiddenConstants(Machine(business))==(?);
  External_List_HiddenConstants(Machine(business))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(business))==(btrue);
  Context_List_Properties(Machine(business))==(btrue);
  Inherited_List_Properties(Machine(business))==(btrue);
  List_Properties(Machine(business))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(business),calc)==(?);
  List_ANY_Var(Machine(business),b_read)==(?);
  List_ANY_Var(Machine(business),b_empty)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(business)) == (? | ? | ? | V,ss,ff | b_read,b_empty | calc | included(Machine(logic)),included(Machine(ui)) | ? | business);
  List_Of_HiddenCst_Ids(Machine(business)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(business)) == (?);
  List_Of_VisibleVar_Ids(Machine(business)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(business)) == (?: ?);
  List_Of_Ids(Machine(ui)) == (? | ? | ss | ? | read,empty | ? | ? | ? | ui);
  List_Of_HiddenCst_Ids(Machine(ui)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ui)) == (?);
  List_Of_VisibleVar_Ids(Machine(ui)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ui)) == (?: ?);
  List_Of_Ids(Machine(logic)) == (? | ? | ff | ? | init,calc | ? | used(Machine(ui)) | ? | logic);
  List_Of_HiddenCst_Ids(Machine(logic)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(logic)) == (?);
  List_Of_VisibleVar_Ids(Machine(logic)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(logic)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(business)) == (Type(ff) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(ss) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(business)) == (Type(calc) == Cst(No_type,No_type);Type(b_empty) == Cst(No_type,No_type);Type(b_read) == Cst(No_type,No_type))
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
