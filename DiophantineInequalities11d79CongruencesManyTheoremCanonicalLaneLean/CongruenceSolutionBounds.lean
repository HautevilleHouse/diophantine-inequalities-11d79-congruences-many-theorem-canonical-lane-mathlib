import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure CongruenceSolutionBounds where
  modulus : ℕ
  congruenceClass : ℕ
  rootCount : ℕ → ℕ
  totalRootsFinite : Prop

structure CongruenceSolutionBoundsEvidence (B : CongruenceSolutionBounds) where
  totalRootsFiniteClosed : B.totalRootsFinite

def CongruenceSolutionBoundsClosed (B : CongruenceSolutionBounds) : Prop :=
  B.totalRootsFinite

theorem congruence_solution_bounds_closed_from_evidence
    (B : CongruenceSolutionBounds) (E : CongruenceSolutionBoundsEvidence B) :
    CongruenceSolutionBoundsClosed B := by
  exact E.totalRootsFiniteClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse