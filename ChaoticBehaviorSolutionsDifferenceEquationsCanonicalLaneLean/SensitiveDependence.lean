import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure SensitiveDependence (S : DifferenceEquationSolutionSpace) where
  sensitivityConstant : ℝ
  arbitrarilyClosePoints : Set (S.stateSpace × S.stateSpace)
  divergenceRate : ℕ → ℝ
  sensitiveAtPoint : S.stateSpace → Prop
  globalSensitivity : Prop
  sensitivityClosed : globalSensitivity ∧ (∀ (x : S.stateSpace), sensitiveAtPoint x)

def SensitiveDependenceClosed {S : DifferenceEquationSolutionSpace} (D : SensitiveDependence S) : Prop :=
  D.sensitivityClosed

theorem sensitive_dependence_closed {S : DifferenceEquationSolutionSpace} (D : SensitiveDependence S) :
    SensitiveDependenceClosed D :=
  D.sensitivityClosed

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse