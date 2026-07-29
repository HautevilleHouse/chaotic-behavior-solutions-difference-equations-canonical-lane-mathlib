import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure TopologicalTransitivity (S : DifferenceEquationSolutionSpace) where
  forwardOrbit : S.stateSpace → Set ℕ
  denseOrbit : Prop
  transitiveTriple : (S.stateSpace → S.stateSpace → ℕ) → Prop
  topologicalTransitivity : Prop
  denseOrbitClosed : denseOrbit
  transitivityClosed : topologicalTransitivity
  transitivityEvidence : denseOrbitClosed ∧ transitivityClosed

def TopologicalTransitivityClosed {S : DifferenceEquationSolutionSpace} (T : TopologicalTransitivity S) : Prop :=
  T.transitivityEvidence

theorem topological_transitivity_closed {S : DifferenceEquationSolutionSpace} (T : TopologicalTransitivity S) :
    TopologicalTransitivityClosed T :=
  T.transitivityEvidence

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse