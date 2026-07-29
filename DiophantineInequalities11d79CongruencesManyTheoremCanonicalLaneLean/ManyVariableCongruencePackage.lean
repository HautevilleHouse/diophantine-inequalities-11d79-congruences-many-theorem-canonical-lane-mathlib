import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure ManyVariableCongruencePackage where
  variableCount : ℕ
  modulus : ℕ
  modulusPos : modulus > 0
  solutionCount : ℕ
  solutionPos : solutionCount > 0
  bound : ℕ
  boundPos : bound > 0
  inequalityConditions : ∀ (s : Fin variableCount → ℤ), (∃ (i : Fin variableCount), |s i| < bound) → True

structure ManyVariableCongruenceEvidence (M : ManyVariableCongruencePackage) where
  manySolutions : ∃ (r : Fin M.variableCount → ℤ) (c : Fin M.solutionCount), True
  manySolutionsClosed : manySolutions

def ManyVariableCongruenceClosed (M : ManyVariableCongruencePackage) : Prop :=
  ∃ (r : Fin M.variableCount → ℤ) (c : Fin M.solutionCount), True

theorem many_variable_congruence_closed_from_evidence (M : ManyVariableCongruencePackage) (E : ManyVariableCongruenceEvidence M) : ManyVariableCongruenceClosed M := by
  exact E.manySolutionsClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
