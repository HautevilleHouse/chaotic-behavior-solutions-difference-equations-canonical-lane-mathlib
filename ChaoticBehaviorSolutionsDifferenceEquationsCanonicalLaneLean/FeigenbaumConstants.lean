import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure FeigenbaumConstants where
  delta : ℝ
  alpha : ℝ
  universality : Prop
  scalingLaws : Prop
  deltaPositive : delta > 0
  alphaPositive : alpha > 0
  universalityTerm : universality
  scalingLawsTerm : scalingLaws

def FeigenbaumConstantsClosed (F : FeigenbaumConstants) : Prop :=
  F.universality ∧ F.scalingLaws

theorem feigenbaum_constants_closed (F : FeigenbaumConstants) :
    FeigenbaumConstantsClosed F := by
  exact And.intro F.universalityTerm F.scalingLawsTerm

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
