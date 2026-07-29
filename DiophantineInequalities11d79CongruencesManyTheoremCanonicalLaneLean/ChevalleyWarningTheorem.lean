import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure ChevalleyWarningTheorem where
  finiteFieldOrder : ℕ
  polynomialDegree : ℕ
  variableCount : ℕ
  zeroCountDivisibleByCharacteristic : Prop
  chevalleyWarningHolds : Prop

structure ChevalleyWarningTheoremEvidence (C : ChevalleyWarningTheorem) where
  chevalleyWarningHoldsClosed : C.chevalleyWarningHolds

def ChevalleyWarningTheoremClosed (C : ChevalleyWarningTheorem) : Prop :=
  C.chevalleyWarningHolds

theorem chevalley_warning_theorem_closed_from_evidence
    (C : ChevalleyWarningTheorem) (E : ChevalleyWarningTheoremEvidence C) :
    ChevalleyWarningTheoremClosed C := by
  exact E.chevalleyWarningHoldsClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse