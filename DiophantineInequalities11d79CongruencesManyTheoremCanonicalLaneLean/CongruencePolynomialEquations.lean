import DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure CongruenceEquationPackage where
  modulus : ℕ
  polynomialFamily : ℕ → ℤ[X]
  solutionCountInequality : Prop
  hasSmallSolution : Prop
  manySolutionsProperty : Prop

structure CongruenceEquationEvidence (C : CongruenceEquationPackage) where
  solutionCountInequalityClosed : C.solutionCountInequality
  hasSmallSolutionClosed : C.hasSmallSolution
  manySolutionsPropertyClosed : C.manySolutionsProperty

def CongruenceEquationClosed (C : CongruenceEquationPackage) : Prop :=
  C.solutionCountInequality ∧ C.hasSmallSolution ∧ C.manySolutionsProperty

theorem congruence_equation_closed_from_evidence (C : CongruenceEquationPackage)
    (E : CongruenceEquationEvidence C) : CongruenceEquationClosed C := by
  exact And.intro E.solutionCountInequalityClosed
    (And.intro E.hasSmallSolutionClosed E.manySolutionsPropertyClosed)

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse