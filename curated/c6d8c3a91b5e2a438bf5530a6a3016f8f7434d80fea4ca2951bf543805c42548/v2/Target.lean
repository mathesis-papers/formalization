import Mathlib

def wishpool_target_prop : Prop :=
  ∀ (m n : ℕ) (x : Fin n → ℝ), 2 ≤ m → m ≤ n →
    (∀ j, x j ≤ 1 / ((m : ℝ) - 1)) →
    (Finset.univ.val.map x).esymm 1 = 1 →
    (∀ k, 1 ≤ k → k ≤ m → 0 ≤ (Finset.univ.val.map x).esymm k) →
    ∀ k, 1 ≤ k → k < m →
      ((m - 1).choose k : ℝ) / ((m : ℝ) - 1) ^ k ≤ (Finset.univ.val.map x).esymm k
