import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure DifferenceEquation where
  stateSpace : Type u
  map : stateSpace → stateSpace
  iterates : ℕ → stateSpace → stateSpace
  iterateDefined : ∀ (n : ℕ) (x : stateSpace), iterates n x = (Function.iterate map n) x

structure ChaoticMap (DE : DifferenceEquation) where
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop
  sensitiveDependenceTerm : sensitiveDependence
  topologicalTransitivityTerm : topologicalTransitivity
  densePeriodicPointsTerm : densePeriodicPoints

def ChaoticMapClosed {DE : DifferenceEquation} (C : ChaoticMap DE) : Prop :=
  C.sensitiveDependence ∧ C.topologicalTransitivity ∧ C.densePeriodicPoints

theorem chaotic_map_closed_from_evidence {DE : DifferenceEquation} (C : ChaoticMap DE) : ChaoticMapClosed C := by
  exact And.intro C.sensitiveDependenceTerm (And.intro C.topologicalTransitivityTerm C.densePeriodicPointsTerm)

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse