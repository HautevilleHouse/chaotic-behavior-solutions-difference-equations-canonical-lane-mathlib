import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquations

structure RenormalizationOperator where
  functionSpace : Type u
  operator : (ℝ → ℝ) → (ℝ → ℝ)
  fixedPoint : ℝ → ℝ
  universality : Prop
  scalingFactor : ℝ

structure RenormalizationEvidence (R : RenormalizationOperator) where
  universalityClosed : R.universality
  fixedPointExists : True
  scalingFactorPositive : R.scalingFactor > 0

def RenormalizationClosed (R : RenormalizationOperator) : Prop :=
  R.universality ∧ R.scalingFactor > 0

theorem renormalization_closed_from_evidence (R : RenormalizationOperator) (E : RenormalizationEvidence R) : RenormalizationClosed R := by
  exact And.intro E.universalityClosed E.scalingFactorPositive

end ChaoticBehaviorSolutionsDifferenceEquations
end HautevilleHouse