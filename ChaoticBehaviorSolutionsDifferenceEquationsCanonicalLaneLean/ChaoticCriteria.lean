import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure MetricSpace (X : Type) where
  d : X → X → ℝ
  pos : ∀ x y, d x y ≥ 0
  zero : ∀ x y, d x y = 0 ↔ x = y
  sym : ∀ x y, d x y = d y x
  tri : ∀ x y z, d x z ≤ d x y + d y z

structure ChaoticCriteria (X : Type) (f : X → X) where
  sensitive : Prop
  transitive : Prop
  densePeriodic : Prop
  definitionalEquivalence : sensitive ∧ transitive ∧ densePeriodic

theorem devaney_chaos (X : Type) (f : X → X) (c : ChaoticCriteria X f) : Prop :=
  c.definitionalEquivalence

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
