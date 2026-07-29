import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure InvariantMeasurePackage where
  mapping : ℝ → ℝ
  measure : Set ℝ → ℝ
  spaceUnitInterval : Prop
  mappingInvariant : Prop

def InvariantMeasureClosed (I : InvariantMeasurePackage) : Prop :=
  I.spaceUnitInterval ∧ I.mappingInvariant

structure InvariantMeasureEvidence (I : InvariantMeasurePackage) where
  spaceUnitIntervalClosed : I.spaceUnitInterval
  mappingInvariantClosed : I.mappingInvariant

theorem invariant_measure_closed_from_evidence (I : InvariantMeasurePackage) (E : InvariantMeasureEvidence I) :
    InvariantMeasureClosed I := by
  exact And.intro E.spaceUnitIntervalClosed E.mappingInvariantClosed

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse