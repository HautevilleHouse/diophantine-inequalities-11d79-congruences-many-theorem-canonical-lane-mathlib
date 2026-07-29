import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure CongruenceReductionPackage where
  modulus : ℕ
  residueClassBound : ℕ → Prop
  henselLifting : Prop
  polynomialReduction : Prop
  inequalityPreserved : Prop

structure CongruenceReductionEvidence (C : CongruenceReductionPackage) where
  residueClassBoundClosed : C.residueClassBound C.modulus
  henselLiftingClosed : C.henselLifting
  polynomialReductionClosed : C.polynomialReduction
  inequalityPreservedClosed : C.inequalityPreserved

def CongruenceReductionClosed (C : CongruenceReductionPackage) : Prop :=
  C.residueClassBound C.modulus ∧ C.henselLifting ∧ C.polynomialReduction ∧ C.inequalityPreserved

theorem congruence_reduction_closed_from_evidence (C : CongruenceReductionPackage)
    (E : CongruenceReductionEvidence C) : CongruenceReductionClosed C := by
  exact And.intro E.residueClassBoundClosed
    (And.intro E.henselLiftingClosed
      (And.intro E.polynomialReductionClosed E.inequalityPreservedClosed))

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse