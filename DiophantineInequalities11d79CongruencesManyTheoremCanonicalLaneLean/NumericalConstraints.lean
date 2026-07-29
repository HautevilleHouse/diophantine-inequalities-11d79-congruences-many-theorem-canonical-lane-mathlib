import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure NumericalConstraintsPackage where
  variableBounds : ℕ → Prop
  coefficientInequalities : Prop
  solutionSetFinite : Prop
  explicitBoundConstant : ℕ
  boundVerified : explicitBoundConstant ≥ 1

structure NumericalConstraintsEvidence (N : NumericalConstraintsPackage) where
  variableBoundsClosed : ∀ k, N.variableBounds k
  coefficientInequalitiesClosed : N.coefficientInequalities
  solutionSetFiniteClosed : N.solutionSetFinite

def NumericalConstraintsClosed (N : NumericalConstraintsPackage) : Prop :=
  (∀ k, N.variableBounds k) ∧ N.coefficientInequalities ∧ N.solutionSetFinite

theorem numerical_constraints_closed_from_evidence (N : NumericalConstraintsPackage)
    (E : NumericalConstraintsEvidence N) : NumericalConstraintsClosed N := by
  exact And.intro E.variableBoundsClosed
    (And.intro E.coefficientInequalitiesClosed E.solutionSetFiniteClosed)

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse