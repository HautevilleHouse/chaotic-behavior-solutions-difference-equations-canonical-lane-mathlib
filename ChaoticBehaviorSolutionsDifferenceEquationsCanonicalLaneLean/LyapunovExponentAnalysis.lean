import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquations

structure LyapunovExponentPackage where
  orbit : ℕ → ℝ
  derivative : ℝ → ℝ
  exponent : ℝ
  positiveExponent : Prop
  ergodicMeasure : Prop

structure LyapunovEvidence (L : LyapunovExponentPackage) where
  positiveExponentClosed : L.positiveExponent
  ergodicMeasureClosed : L.ergodicMeasure

def LyapunovClosed (L : LyapunovExponentPackage) : Prop :=
  L.positiveExponent ∧ L.ergodicMeasure

theorem lyapunov_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovEvidence L) : LyapunovClosed L := by
  exact And.intro E.positiveExponentClosed E.ergodicMeasureClosed

end ChaoticBehaviorSolutionsDifferenceEquations
end HautevilleHouse