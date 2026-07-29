import DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def diProjection : Projection DIEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem di_projection_idempotent (x : DIEndgameState) :
    diProjection.toFun (diProjection.toFun x) = diProjection.toFun x := by
  exact diProjection.idempotent x

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse