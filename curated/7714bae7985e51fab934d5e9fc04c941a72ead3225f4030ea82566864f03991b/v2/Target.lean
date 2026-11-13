import Mathlib

def wishpool_target_prop : Prop :=
  ∀ n : ℕ, 1 ≤ n → ∃ k : ℕ, 1 ≤ k ∧
    (∏ i ∈ Finset.range k, (n + i)) ∣ (∏ i ∈ Finset.range k, (n + k + i))
