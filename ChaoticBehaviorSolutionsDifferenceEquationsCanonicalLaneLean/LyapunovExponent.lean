import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure LyapunovExponentPackage where
  mapping : ℝ → ℝ
  orbit : ℕ → ℝ
  lyapunovExponent : ℝ
  initialCondition : ℝ
  derivative : ℝ → ℝ

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.lyapunovExponent > 0 ∧ ∃ (x : ℝ), L.derivative x ≠ 0

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  lyapunovExponentPositive : L.lyapunovExponent > 0
  derivativeNonZero : ∃ (x : ℝ), L.derivative x ≠ 0

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) :
    LyapunovExponentClosed L := by
  exact And.intro E.lyapunovExponentPositive E.derivativeNonZero

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse