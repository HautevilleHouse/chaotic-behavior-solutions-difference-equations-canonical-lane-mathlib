import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquations

structure BifurcationMap where
  parameterSpace : Type u
  domain : Type v
  map : parameterSpace → domain → domain
  criticalValues : Prop
  periodicDoubling : Prop
  chaoticAttractor : Prop

structure BifurcationEvidence (B : BifurcationMap) where
  criticalValuesClosed : B.criticalValues
  periodicDoublingClosed : B.periodicDoubling
  chaoticAttractorClosed : B.chaoticAttractor

def BifurcationClosed (B : BifurcationMap) : Prop :=
  B.criticalValues ∧ B.periodicDoubling ∧ B.chaoticAttractor

theorem bifurcation_closed_from_evidence (B : BifurcationMap) (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.criticalValuesClosed (And.intro E.periodicDoublingClosed E.chaoticAttractorClosed)

end ChaoticBehaviorSolutionsDifferenceEquations
end HautevilleHouse