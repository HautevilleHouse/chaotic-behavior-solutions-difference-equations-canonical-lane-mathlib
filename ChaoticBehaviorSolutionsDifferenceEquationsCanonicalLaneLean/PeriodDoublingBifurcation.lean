import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean.ChaoticMaps

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure PeriodDoublingBifurcation {DE : DifferenceEquation} (C : ChaoticMap DE) where
  parameterSpace : Type u
  bifurcationParameter : parameterSpace → ℝ
  fixedPointFamily : parameterSpace → DE.stateSpace
  periodDoublingSequence : ℕ → parameterSpace → Prop
  feigenbaumConstant : ℝ
  universalScaling : Prop
  bifurcationCascade : Prop
  universalScalingTerm : universalScaling
  bifurcationCascadeTerm : bifurcationCascade

def PeriodDoublingBifurcationClosed {DE : DifferenceEquation} {C : ChaoticMap DE} (PB : PeriodDoublingBifurcation C) : Prop :=
  PB.universalScaling ∧ PB.bifurcationCascade

theorem period_doubling_bifurcation_closed {DE : DifferenceEquation} {C : ChaoticMap DE} (PB : PeriodDoublingBifurcation C) : PeriodDoublingBifurcationClosed PB := by
  exact And.intro PB.universalScalingTerm PB.bifurcationCascadeTerm

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse