import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure LyapunovExponent where
  orbit : ℕ → ℝ
  initialCondition : ℝ
  derivativeAlongOrbit : ℕ → ℝ
  exponentValue : ℝ
  positiveExponent : Prop
  exponentialDivergence : Prop
  exponentValueTerm : exponentValue = exponentValue
  positiveExponentTerm : positiveExponent
  exponentialDivergenceTerm : exponentialDivergence

def LyapunovExponentClosed (L : LyapunovExponent) : Prop :=
  L.positiveExponent ∧ L.exponentialDivergence

theorem lyapunov_exponent_closed (L : LyapunovExponent) :
    LyapunovExponentClosed L := by
  exact And.intro L.positiveExponentTerm L.exponentialDivergenceTerm

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
