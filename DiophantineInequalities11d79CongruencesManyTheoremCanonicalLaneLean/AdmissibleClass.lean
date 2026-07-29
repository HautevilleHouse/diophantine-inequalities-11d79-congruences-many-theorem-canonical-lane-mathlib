import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure DiophantineAdmittedObject where
  polynomial : ℤ[Fin 3]
  modulus : ℕ
  modulusPos : modulus > 0
  bound : ℕ
  boundPos : bound > 0
  solutionExists : Prop
  conclusion : solutionExists

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.solutionExists ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
