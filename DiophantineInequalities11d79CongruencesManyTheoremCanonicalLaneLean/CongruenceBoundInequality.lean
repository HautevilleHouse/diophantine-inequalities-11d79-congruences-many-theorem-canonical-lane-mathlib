import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure CongruenceBoundInequality where
  polynomial : ℤ[Fin n]
  bound : ℕ
  modulus : ℕ
  modulusPos : modulus > 0

def ZModValNorm (p : ℤ[Fin n]) (r : Fin n → ℤ) : ℤ := abs (ZModVal p r)

structure CongruenceBoundEvidence (I : CongruenceBoundInequality) where
  existsBoundedSolution : ∃ r : Fin n → ℤ, ZModValNorm I.polynomial r < I.bound ∧ ZModVal I.polynomial r ≡ 0 [ZMOD I.modulus]
  existsBoundedSolutionClosed : existsBoundedSolution

def CongruenceBoundClosed (I : CongruenceBoundInequality) : Prop :=
  ∃ r : Fin n → ℤ, ZModValNorm I.polynomial r < I.bound ∧ ZModVal I.polynomial r ≡ 0 [ZMOD I.modulus]

theorem congruence_bound_closed_from_evidence (I : CongruenceBoundInequality) (E : CongruenceBoundEvidence I) : CongruenceBoundClosed I := by
  exact E.existsBoundedSolutionClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
