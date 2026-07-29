import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean

structure DifferenceEquation (X : Type) where
  f : X → X
  initial : X
  orbit : ℕ → X
  orbitDefined : orbit 0 = initial
  orbitRecurrence : ∀ n, orbit (n+1) = f (orbit n)

def SolutionSpace (X : Type) (eq : DifferenceEquation X) : Set (ℕ → X) :=
  { g | g 0 = eq.initial ∧ ∀ n, g (n+1) = eq.f (g n) }

theorem unique_solution (X : Type) (eq : DifferenceEquation X) :
  ∀ g, g ∈ SolutionSpace X eq → g = eq.orbit := by
  intro g hg
  ext n
  induction n with
  | zero => exact hg.1
  | succ n ih =>
    rw [eq.orbitRecurrence, hg.2 n, ih]

end ChaoticBehaviorSolutionsDifferenceEquationsCanonicalLaneLean
end HautevilleHouse
