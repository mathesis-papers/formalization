import Mathlib

def wishpool_target_prop : Prop :=
  ∀ n i j : ℕ, 1 ≤ i → i < j → 2 * j ≤ n →
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)
