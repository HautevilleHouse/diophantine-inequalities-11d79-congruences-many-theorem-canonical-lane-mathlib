import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure DegreeProfile where
  degreeBounds : List ℕ
  homogeneousPartDegrees : List ℕ
  totalDegree : ℕ

default totalDegree

structure DegreeAnalysisPackage where
  degreeBoundsDetermined : Prop
  criticalDegreeIdentified : Prop
  degreeSeparation : Prop
  degreeBoundsDeterminedTerm : degreeBoundsDetermined
  criticalDegreeIdentifiedTerm : criticalDegreeIdentified
  degreeSeparationTerm : degreeSeparation

structure DegreeAnalysisEvidence (P : DegreeAnalysisPackage) where
  degreeBoundsDeterminedClosed : P.degreeBoundsDetermined
  criticalDegreeIdentifiedClosed : P.criticalDegreeIdentified
  degreeSeparationClosed : P.degreeSeparation

def DegreeAnalysisClosed (P : DegreeAnalysisPackage) : Prop :=
  P.degreeBoundsDetermined ∧ P.criticalDegreeIdentified ∧ P.degreeSeparation

theorem degree_analysis_closed_from_evidence
    (P : DegreeAnalysisPackage) (E : DegreeAnalysisEvidence P) :
    DegreeAnalysisClosed P := by
  exact And.intro E.degreeBoundsDeterminedClosed
    (And.intro E.criticalDegreeIdentifiedClosed E.degreeSeparationClosed)

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse