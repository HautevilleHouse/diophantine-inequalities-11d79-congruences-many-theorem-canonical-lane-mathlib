import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure CongruenceSystemPolynomial where
  dimension : ℕ
  polynomial : ℤ[var : Fin dimension]
  modulus : ℕ
  modulusPos : modulus > 0

def ZModVal (p : ℤ[Fin n]) (r : Fin n → ℤ) : ℤ := p.eval (fun i => (r i : ℤ))

structure CongruenceSystemEvidence (P : CongruenceSystemPolynomial) where
  solutionExists : ∃ r : Fin P.dimension → ℤ, ZModVal P.polynomial r ≡ 0 [ZMOD P.modulus]
  solutionExistsClosed : solutionExists

def CongruenceSystemClosed (P : CongruenceSystemPolynomial) : Prop :=
  ∃ r : Fin P.dimension → ℤ, ZModVal P.polynomial r ≡ 0 [ZMOD P.modulus]

theorem congruence_system_closed_from_evidence (P : CongruenceSystemPolynomial) (E : CongruenceSystemEvidence P) : CongruenceSystemClosed P := by
  exact E.solutionExistsClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
