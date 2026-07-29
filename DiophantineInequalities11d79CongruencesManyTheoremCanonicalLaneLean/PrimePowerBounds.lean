import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure PrimePowerBoundPackage where
  prime : ℕ
  exponent : ℕ
  inequalityBound : ℕ
  boundValid : Prop
  sharpness : Prop
  boundValidTerm : boundValid
  sharpnessTerm : sharpness

structure PrimePowerBoundEvidence (P : PrimePowerBoundPackage) where
  boundValidClosed : P.boundValid
  sharpnessClosed : P.sharpness

def PrimePowerBoundClosed (P : PrimePowerBoundPackage) : Prop :=
  P.boundValid ∧ P.sharpness

theorem prime_power_bound_closed_from_evidence
    (P : PrimePowerBoundPackage) (E : PrimePowerBoundEvidence P) :
    PrimePowerBoundClosed P := by
  exact And.intro E.boundValidClosed E.sharpnessClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse