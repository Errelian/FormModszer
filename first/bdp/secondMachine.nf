Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(secondMachine))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(secondMachine))==(Machine(secondMachine));
  Level(Machine(secondMachine))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(secondMachine)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(secondMachine))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(secondMachine))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(secondMachine))==(?);
  List_Includes(Machine(secondMachine))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(secondMachine))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(secondMachine))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(secondMachine))==(?);
  Context_List_Variables(Machine(secondMachine))==(?);
  Abstract_List_Variables(Machine(secondMachine))==(?);
  Local_List_Variables(Machine(secondMachine))==(bb,aa);
  List_Variables(Machine(secondMachine))==(bb,aa);
  External_List_Variables(Machine(secondMachine))==(bb,aa)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(secondMachine))==(?);
  Abstract_List_VisibleVariables(Machine(secondMachine))==(?);
  External_List_VisibleVariables(Machine(secondMachine))==(?);
  Expanded_List_VisibleVariables(Machine(secondMachine))==(?);
  List_VisibleVariables(Machine(secondMachine))==(?);
  Internal_List_VisibleVariables(Machine(secondMachine))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(secondMachine))==(btrue);
  Gluing_List_Invariant(Machine(secondMachine))==(btrue);
  Expanded_List_Invariant(Machine(secondMachine))==(btrue);
  Abstract_List_Invariant(Machine(secondMachine))==(btrue);
  Context_List_Invariant(Machine(secondMachine))==(btrue);
  List_Invariant(Machine(secondMachine))==(aa: INTEGER & bb: NATURAL & aa<=bb)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(secondMachine))==(btrue);
  Abstract_List_Assertions(Machine(secondMachine))==(btrue);
  Context_List_Assertions(Machine(secondMachine))==(btrue);
  List_Assertions(Machine(secondMachine))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(secondMachine))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(secondMachine))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(secondMachine))==(@(aa$0).(aa$0: INTEGER ==> aa:=aa$0) || bb:=0);
  Context_List_Initialisation(Machine(secondMachine))==(skip);
  List_Initialisation(Machine(secondMachine))==(aa:: INTEGER || bb:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(secondMachine))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(secondMachine))==(btrue);
  List_Constraints(Machine(secondMachine))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(secondMachine))==(operation1,operation2,operation3);
  List_Operations(Machine(secondMachine))==(operation1,operation2,operation3)
END
&
THEORY ListInputX IS
  List_Input(Machine(secondMachine),operation1)==(?);
  List_Input(Machine(secondMachine),operation2)==(?);
  List_Input(Machine(secondMachine),operation3)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(secondMachine),operation1)==(?);
  List_Output(Machine(secondMachine),operation2)==(?);
  List_Output(Machine(secondMachine),operation3)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(secondMachine),operation1)==(operation1);
  List_Header(Machine(secondMachine),operation2)==(operation2);
  List_Header(Machine(secondMachine),operation3)==(operation3(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(secondMachine),operation1)==(btrue);
  List_Precondition(Machine(secondMachine),operation2)==(aa<=bb);
  List_Precondition(Machine(secondMachine),operation3)==(pp: INT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(secondMachine),operation3)==(pp: INT | aa:=1 || @(bb$0).(bb$0: 10..20 ==> bb:=bb$0));
  Expanded_List_Substitution(Machine(secondMachine),operation2)==(aa<=bb | bb,aa:=2,bb);
  Expanded_List_Substitution(Machine(secondMachine),operation1)==(btrue | aa:=1 || @(bb$0).(bb$0: 10..20 ==> bb:=bb$0));
  List_Substitution(Machine(secondMachine),operation1)==(aa:=1 || bb:: 10..20);
  List_Substitution(Machine(secondMachine),operation2)==(bb:=2 || aa:=bb);
  List_Substitution(Machine(secondMachine),operation3)==(aa:=1 || bb:: 10..20)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(secondMachine))==(?);
  Inherited_List_Constants(Machine(secondMachine))==(?);
  List_Constants(Machine(secondMachine))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(secondMachine))==(?);
  Context_List_Defered(Machine(secondMachine))==(?);
  Context_List_Sets(Machine(secondMachine))==(?);
  List_Valuable_Sets(Machine(secondMachine))==(?);
  Inherited_List_Enumerated(Machine(secondMachine))==(?);
  Inherited_List_Defered(Machine(secondMachine))==(?);
  Inherited_List_Sets(Machine(secondMachine))==(?);
  List_Enumerated(Machine(secondMachine))==(?);
  List_Defered(Machine(secondMachine))==(?);
  List_Sets(Machine(secondMachine))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(secondMachine))==(?);
  Expanded_List_HiddenConstants(Machine(secondMachine))==(?);
  List_HiddenConstants(Machine(secondMachine))==(?);
  External_List_HiddenConstants(Machine(secondMachine))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(secondMachine))==(btrue);
  Context_List_Properties(Machine(secondMachine))==(btrue);
  Inherited_List_Properties(Machine(secondMachine))==(btrue);
  List_Properties(Machine(secondMachine))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(secondMachine),operation1)==(?);
  List_ANY_Var(Machine(secondMachine),operation2)==(?);
  List_ANY_Var(Machine(secondMachine),operation3)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(secondMachine)) == (? | ? | bb,aa | ? | operation1,operation2,operation3 | ? | ? | ? | secondMachine);
  List_Of_HiddenCst_Ids(Machine(secondMachine)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(secondMachine)) == (?);
  List_Of_VisibleVar_Ids(Machine(secondMachine)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(secondMachine)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(secondMachine)) == (Type(bb) == Mvl(btype(INTEGER,?,?));Type(aa) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(secondMachine)) == (Type(operation3) == Cst(No_type,btype(INTEGER,?,?));Type(operation2) == Cst(No_type,No_type);Type(operation1) == Cst(No_type,No_type))
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
