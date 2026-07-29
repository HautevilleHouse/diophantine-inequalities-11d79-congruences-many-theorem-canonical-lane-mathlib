import DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DICongruenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DICongruenceAdmittedObject where
  space : DICongruenceSpace
  finiteModulus : Prop
  manyCongruenceSolutions : Prop
  targetInequality : Prop
  conclusion : targetInequality

structure DIEndgameState where
  object : DICongruenceAdmittedObject

def DIWitnessClosed (O : DICongruenceAdmittedObject) : Prop :=
  O.targetInequality

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse