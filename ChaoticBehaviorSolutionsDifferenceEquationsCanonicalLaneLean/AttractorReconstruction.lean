import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquations

structure AttractorReconstruction where
  phaseSpace : Type u
  timeSeries : ℕ → ℝ
  embeddingDimension : ℕ
  takensEmbedding : Prop
  fractalDimension : ℕ

structure ReconstructionEvidence (A : AttractorReconstruction) where
  takensEmbeddingClosed : A.takensEmbedding
  fractalDimensionClosed : A.fractalDimension

def ReconstructionClosed (A : AttractorReconstruction) : Prop :=
  A.takensEmbedding ∧ A.fractalDimension

theorem reconstruction_closed_from_evidence (A : AttractorReconstruction) (E : ReconstructionEvidence A) : ReconstructionClosed A := by
  exact And.intro E.takensEmbeddingClosed E.fractalDimensionClosed

end ChaoticBehaviorSolutionsDifferenceEquations
end HautevilleHouse