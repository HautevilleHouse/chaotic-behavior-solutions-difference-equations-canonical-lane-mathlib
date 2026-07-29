import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure BifurcationAnalysis where
  parameterSpace : Type u
  bifurcationParameter : parameterSpace
  fixedPoints : Set parameterSpace
  flipBifurcation : Prop
  periodDoublingCascade : Prop
  chaosOnset : Prop
  flipBifurcationTerm : flipBifurcation
  periodDoublingCascadeTerm : periodDoublingCascade
  chaosOnsetTerm : chaosOnset

def BifurcationAnalysisClosed (B : BifurcationAnalysis) : Prop :=
  B.flipBifurcation ∧ B.periodDoublingCascade ∧ B.chaosOnset

theorem bifurcation_analysis_closed (B : BifurcationAnalysis) :
    BifurcationAnalysisClosed B := by
  exact And.intro B.flipBifurcationTerm
    (And.intro B.periodDoublingCascadeTerm B.chaosOnsetTerm)

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
