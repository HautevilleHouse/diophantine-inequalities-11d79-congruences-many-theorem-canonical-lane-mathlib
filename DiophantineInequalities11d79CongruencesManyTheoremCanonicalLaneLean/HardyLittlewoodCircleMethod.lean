import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure HardyLittlewoodPackage where
  exponentialSum : ℂ → ℂ
  majorArcs : Prop
  minorArcs : Prop
  singularIntegralConverges : Prop
  singularSeriesSum : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodPackage) where
  majorArcsClosed : H.majorArcs
  minorArcsClosed : H.minorArcs
  singularIntegralConvergesClosed : H.singularIntegralConverges
  singularSeriesSumClosed : H.singularSeriesSum

def HardyLittlewoodClosed (H : HardyLittlewoodPackage) : Prop :=
  H.majorArcs ∧ H.minorArcs ∧ H.singularIntegralConverges ∧ H.singularSeriesSum

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodPackage)
    (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H := by
  exact And.intro E.majorArcsClosed (And.intro E.minorArcsClosed
    (And.intro E.singularIntegralConvergesClosed E.singularSeriesSumClosed))

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
