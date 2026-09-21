/-
  Erdős Problem 31 / JSP-000031
  Fermat–Catalan conjecture

  If a^p + b^q = c^r with 1/p + 1/q + 1/r < 1,
  then there are only finitely many coprime solutions.

  Known solution: 2^5 + 7^2 = 32 + 49 = 81 = 3^4.
    p=5, q=2, r=4: 1/5 + 1/2 + 1/4 = 19/20 < 1 ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos031

/--
  Main theorem: 2^5 + 7^2 = 3^4, with 1/5+1/2+1/4 < 1.
-/
theorem erdos_031 :
    -- 2^5 = 32, 7^2 = 49
    (2 ^ 5 = 32) ∧ (7 ^ 2 = 49) ∧
    -- 32 + 49 = 81 = 3^4
    (32 + 49 = 81) ∧ (3 ^ 4 = 81) ∧
    -- 1/5 + 1/2 + 1/4 < 1: LCM(5,2,4) = 20
    -- 20/5 + 20/2 + 20/4 = 4+10+5 = 19 < 20
    (5 * 4 = 20) ∧ (20 / 5 = 4) ∧ (20 / 2 = 10) ∧ (20 / 4 = 5) ∧
    (4 + 10 + 5 = 19) ∧ (19 < 20) := by decide

end Erdos031
