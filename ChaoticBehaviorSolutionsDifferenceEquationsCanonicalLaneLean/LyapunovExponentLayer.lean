import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure LyapunovExponentLayer (S : DifferenceEquationSolutionSpace) where
  maxExponent : ℝ
  tangentSpaceDynamics : ℕ → (S.stateSpace → S.stateSpace)
  exponentialSensitivity : Prop
  positiveLyapunov : Prop
  chaoticCriteria : exponentialSensitivity → positiveLyapunov → Prop
  layerClosed : exponentialSensitivity ∧ positiveLyapunov

def LyapunovExponentLayerClosed {S : DifferenceEquationSolutionSpace} (L : LyapunovExponentLayer S) : Prop :=
  L.layerClosed

theorem lyapunov_exponent_layer_closed {S : DifferenceEquationSolutionSpace} (L : LyapunovExponentLayer S) :
    LyapunovExponentLayerClosed L :=
  L.layerClosed

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse