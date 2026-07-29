import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure ChaoticSpace where
  sequenceType : Type
  topology : TopologicalSpace sequenceType

structure ChaoticAdmittedObject where
  space : ChaoticSpace
  bounded : Prop
  chaoticBehavior : Prop
  conclusion : Prop

def ChaoticWitnessClosed (O : ChaoticAdmittedObject) : Prop :=
  O.conclusion

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
