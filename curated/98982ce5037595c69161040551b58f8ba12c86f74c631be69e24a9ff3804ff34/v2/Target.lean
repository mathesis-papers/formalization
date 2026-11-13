import Mathlib

def wishpool_target_prop : Prop :=
  ∀ n m y a : ℕ, m ≤ n → 2 ≤ y → 2 ≤ a →
    Nat.fib n + Nat.fib m = y ^ a → y ^ a ≤ 3864 ^ 2
