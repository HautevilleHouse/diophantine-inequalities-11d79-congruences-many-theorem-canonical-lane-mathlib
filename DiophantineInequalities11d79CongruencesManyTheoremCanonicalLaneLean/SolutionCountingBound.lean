import DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean.CongruencePolynomialEquations

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure SolutionCountingBoundPackage where
  boundType : ℕ
  knownLowerBound : ℕ
  knownUpperBound : ℕ
  sharpnessConjecture : Prop
  boundAttained : Prop

structure SolutionCountingBoundEvidence (B : SolutionCountingBoundPackage) where
  sharpnessConjectureClosed : B.sharpnessConjecture
  boundAttainedClosed : B.boundAttained

def SolutionCountingBoundClosed (B : SolutionCountingBoundPackage) : Prop :=
  B.sharpnessConjecture ∧ B.boundAttained

theorem solution_counting_bound_closed_from_evidence (B : SolutionCountingBoundPackage)
    (E : SolutionCountingBoundEvidence B) : SolutionCountingBoundClosed B := by
  exact And.intro E.sharpnessConjectureClosed E.boundAttainedClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse