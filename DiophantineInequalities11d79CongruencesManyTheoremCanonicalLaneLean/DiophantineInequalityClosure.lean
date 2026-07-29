import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure DiophantineInequalityPackage where
  polynomial : ℤ → ℤ
  inequalityCondition : Prop
  hasIntegerSolution : Prop
  congruenceCondition : Prop
  manySolutions : Prop

structure DiophantineInequalityEvidence (D : DiophantineInequalityPackage) where
  inequalityConditionClosed : D.inequalityCondition
  hasIntegerSolutionClosed : D.hasIntegerSolution
  congruenceConditionClosed : D.congruenceCondition
  manySolutionsClosed : D.manySolutions

def DiophantineInequalityClosed (D : DiophantineInequalityPackage) : Prop :=
  D.inequalityCondition ∧ D.hasIntegerSolution ∧ D.congruenceCondition ∧ D.manySolutions

theorem diophantine_inequality_closed_from_evidence (D : DiophantineInequalityPackage)
    (E : DiophantineInequalityEvidence D) : DiophantineInequalityClosed D := by
  exact And.intro E.inequalityConditionClosed
    (And.intro E.hasIntegerSolutionClosed
      (And.intro E.congruenceConditionClosed E.manySolutionsClosed))

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
