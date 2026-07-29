import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure FixedPointPackage where
  domain : Type u
  mapping : domain → domain
  fixedPoint : domain
  contractiveProperty : Prop
  stabilityProperty : Prop

structure FixedPointEvidence (F : FixedPointPackage) where
  fixedPointClosed : F.fixedPoint = F.mapping F.fixedPoint
  stabilityClosed : F.stabilityProperty

def FixedPointClosed (F : FixedPointPackage) : Prop :=
  F.fixedPoint = F.mapping F.fixedPoint ∧ F.stabilityProperty

theorem fixed_point_closed_from_evidence (F : FixedPointPackage) (E : FixedPointEvidence F) :
    FixedPointClosed F := by
  exact And.intro E.fixedPointClosed E.stabilityClosed

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse