import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure PeriodicOrbitPackage where
  mapping : ℝ → ℝ
  period : ℕ
  startingPoint : ℝ
  orbit : ℕ → ℝ

def PeriodicOrbitClosed (P : PeriodicOrbitPackage) : Prop :=
  P.orbit 0 = P.startingPoint ∧ P.orbit P.period = P.startingPoint ∧ ∀ n < P.period, P.orbit n ≠ P.startingPoint

structure PeriodicOrbitEvidence (P : PeriodicOrbitPackage) where
  orbitStart : P.orbit 0 = P.startingPoint
  orbitReturns : P.orbit P.period = P.startingPoint
  minimalPeriod : ∀ n < P.period, P.orbit n ≠ P.startingPoint

theorem periodic_orbit_closed_from_evidence (P : PeriodicOrbitPackage) (E : PeriodicOrbitEvidence P) :
    PeriodicOrbitClosed P := by
  exact And.intro E.orbitStart (And.intro E.orbitReturns E.minimalPeriod)

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse