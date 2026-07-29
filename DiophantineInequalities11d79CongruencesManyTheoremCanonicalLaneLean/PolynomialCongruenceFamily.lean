import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure PolynomialCongruenceFamily where
  polynomialFamily : ℕ → ℤ[Fin n]
  modulus : ℕ → ℕ
  modulusPos : ∀ k, modulus k > 0
  familySize : ℕ
  familyPos : familySize > 0

structure PolynomialCongruenceFamilyEvidence (F : PolynomialCongruenceFamily) where
  familySolutions : ∀ (k : ℕ), k < F.familySize → (∃ r : Fin n → ℤ, ZModVal (F.polynomialFamily k) r ≡ 0 [ZMOD F.modulus k])
  familySolutionsClosed : familySolutions

def PolynomialCongruenceFamilyClosed (F : PolynomialCongruenceFamily) : Prop :=
  ∀ (k : ℕ), k < F.familySize → (∃ r : Fin n → ℤ, ZModVal (F.polynomialFamily k) r ≡ 0 [ZMOD F.modulus k])

theorem polynomial_congruence_family_closed_from_evidence (F : PolynomialCongruenceFamily) (E : PolynomialCongruenceFamilyEvidence F) : PolynomialCongruenceFamilyClosed F := by
  exact E.familySolutionsClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
