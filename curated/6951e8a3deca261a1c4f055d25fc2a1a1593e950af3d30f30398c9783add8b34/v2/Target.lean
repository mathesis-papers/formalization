import Mathlib

def wishpool_target_prop : Prop :=
  ∃ P Q : Finset ℕ, (∀ p ∈ P, p.Prime) ∧ (∀ q ∈ Q, q.Prime) ∧
    (∑ p ∈ P, (1 : ℚ) / (p : ℚ)) * (∑ q ∈ Q, (1 : ℚ) / (q : ℚ)) = 1
