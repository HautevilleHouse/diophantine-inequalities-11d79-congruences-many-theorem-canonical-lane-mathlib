import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure CongruenceSystem {α : Type} [CommRing α] where
  moduli : List α
  congruences : List (α × α)  -- (remainder, modulus) pairs
  systemConsistent : Prop
  pairwiseCoprime : Prop

structure CongruenceSystemReductionPackage where
  modulusSet : List ℕ
  remainderBounds : List ℕ
  solutionsTransformed : Prop
  reductionValid : Prop
  boundPreserved : Prop

structure CongruenceSystemReductionEvidence (P : CongruenceSystemReductionPackage) where
  solutionsTransformedClosed : P.solutionsTransformed
  reductionValidClosed : P.reductionValid
  boundPreservedClosed : P.boundPreserved

def CongruenceSystemReductionClosed (P : CongruenceSystemReductionPackage) : Prop :=
  P.solutionsTransformed ∧ P.reductionValid ∧ P.boundPreserved

theorem congruence_system_reduction_closed_from_evidence
    (P : CongruenceSystemReductionPackage) (E : CongruenceSystemReductionEvidence P) :
    CongruenceSystemReductionClosed P := by
  exact And.intro E.solutionsTransformedClosed
    (And.intro E.reductionValidClosed E.boundPreservedClosed)

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse