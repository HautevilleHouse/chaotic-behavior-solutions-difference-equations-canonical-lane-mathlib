import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure ChaoticAdmittedObject where
  space : Type
  recurrence : space → space
  chaoticProperty : Prop
  conclusion : chaoticProperty

structure ChaoticEndgameState where
  object : ChaoticAdmittedObject

def ChaoticWitnessClosed (O : ChaoticAdmittedObject) : Prop :=
  O.chaoticProperty

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse