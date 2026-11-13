import Mathlib

def wishpool_target_prop : Prop :=
  ∀ n k : ℕ, 1 ≤ k → k + 26 ≤ n →
    (Finset.univ.filter fun π : n.Partition => Multiset.card π.parts = k - 1).card *
        (Finset.univ.filter fun π : n.Partition => Multiset.card π.parts = k + 1).card <
      (Finset.univ.filter fun π : n.Partition => Multiset.card π.parts = k).card ^ 2
