import DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DIWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse