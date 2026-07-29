import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure HenselLiftingPackage where
  baseSolution : ℕ
  modulus : ℕ
  liftingStep : ℕ
  liftingExists : Prop
  uniquenessModLifting : Prop
  liftingExistsTerm : liftingExists
  uniquenessModLiftingTerm : uniquenessModLifting

structure HenselLiftingEvidence (P : HenselLiftingPackage) where
  liftingExistsClosed : P.liftingExists
  uniquenessModLiftingClosed : P.uniquenessModLifting

def HenselLiftingClosed (P : HenselLiftingPackage) : Prop :=
  P.liftingExists ∧ P.uniquenessModLifting

theorem hensel_lifting_closed_from_evidence
    (P : HenselLiftingPackage) (E : HenselLiftingEvidence P) :
    HenselLiftingClosed P := by
  exact And.intro E.liftingExistsClosed E.uniquenessModLiftingClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse