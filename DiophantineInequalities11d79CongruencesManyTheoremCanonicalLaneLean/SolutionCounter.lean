import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure SolutionCountBounds where
  lowerBound : ℕ
  upperBound : ℕ
  actualCount : ℕ

default actualCount

structure SolutionCounterPackage where
  solutionSet : Type
  solutionCount : ℕ
  countCorrect : Prop
  asymptoticEstimate : Prop
  countCorrectTerm : countCorrect
  asymptoticEstimateTerm : asymptoticEstimate

structure SolutionCounterEvidence (P : SolutionCounterPackage) where
  countCorrectClosed : P.countCorrect
  asymptoticEstimateClosed : P.asymptoticEstimate

def SolutionCounterClosed (P : SolutionCounterPackage) : Prop :=
  P.countCorrect ∧ P.asymptoticEstimate

theorem solution_counter_closed_from_evidence
    (P : SolutionCounterPackage) (E : SolutionCounterEvidence P) :
    SolutionCounterClosed P := by
  exact And.intro E.countCorrectClosed E.asymptoticEstimateClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse