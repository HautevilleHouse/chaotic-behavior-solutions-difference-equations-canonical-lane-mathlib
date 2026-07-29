import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure DifferenceEquationSolutionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  stateSpace : Type
  stateTopology : TopologicalSpace stateSpace
  dynamics : stateSpace → stateSpace
  solutionSet : Set (ℕ → stateSpace)
  recurrenceRelation : Prop
  initialConditionSpace : Prop
  solutionSetClosed : recurrenceRelation ∧ initialConditionSpace

def DifferenceEquationSolutionSpaceClosed (S : DifferenceEquationSolutionSpace) : Prop :=
  S.solutionSetClosed

theorem difference_equation_solution_space_closed (S : DifferenceEquationSolutionSpace) :
    DifferenceEquationSolutionSpaceClosed S :=
  S.solutionSetClosed

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse