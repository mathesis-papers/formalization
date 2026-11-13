import Mathlib

def wishpool_target_prop : Prop :=
  ∀ k : ℕ, 78 < k →
    ∃ p : ℕ, p.Prime ∧ Odd p ∧ p ≤ k % p + (k / p) % p
