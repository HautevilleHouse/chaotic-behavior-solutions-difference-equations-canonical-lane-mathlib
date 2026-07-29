import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquations

structure SymbolicDynamics where
  alphabet : Type u
  shiftMap : (ℕ → alphabet) → (ℕ → alphabet)
  topologicalEntropy : ℝ
  mixingProperty : Prop
  subshiftOfFiniteType : Prop

structure SymbolicEvidence (S : SymbolicDynamics) where
  mixingPropertyClosed : S.mixingProperty
  topologicalEntropyClosed : S.topologicalEntropy > 0
  subshiftOfFiniteTypeClosed : S.subshiftOfFiniteType

def SymbolicClosed (S : SymbolicDynamics) : Prop :=
  S.mixingProperty ∧ (S.topologicalEntropy > 0) ∧ S.subshiftOfFiniteType

theorem symbolic_closed_from_evidence (S : SymbolicDynamics) (E : SymbolicEvidence S) : SymbolicClosed S := by
  exact And.intro E.mixingPropertyClosed (And.intro E.topologicalEntropyClosed E.subshiftOfFiniteTypeClosed)

end ChaoticBehaviorSolutionsDifferenceEquations
end HautevilleHouse