import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure HassePrincipleInequalities where
  polynomial : ℕ → ℕ → ℤ
  localSolvability : ℕ → Prop
  globalSolvability : Prop
  hassePrincipleHolds : Prop

structure HassePrincipleInequalitiesEvidence (H : HassePrincipleInequalities) where
  hassePrincipleHoldsClosed : H.hassePrincipleHolds

def HassePrincipleInequalitiesClosed (H : HassePrincipleInequalities) : Prop :=
  H.hassePrincipleHolds

theorem hasse_principle_inequalities_closed_from_evidence
    (H : HassePrincipleInequalities) (E : HassePrincipleInequalitiesEvidence H) :
    HassePrincipleInequalitiesClosed H := by
  exact E.hassePrincipleHoldsClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse