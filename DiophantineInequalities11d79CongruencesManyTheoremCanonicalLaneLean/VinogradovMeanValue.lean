import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean

structure VinogradovMeanValuePackage where
  degree : ℕ
  variables : ℕ
  meanValue : ℕ → ℕ
  mainTerm : ℕ → ℕ
  errorTerm : ℕ → ℕ
  asymptoticEstimate : Prop

structure VinogradovMeanValueEvidence (V : VinogradovMeanValuePackage) where
  meanValueComputed : ∀ t : ℕ, V.meanValue t = V.mainTerm t + V.errorTerm t
  asymptoticEstimateClosed : V.asymptoticEstimate

def VinogradovMeanValueClosed (V : VinogradovMeanValuePackage) : Prop :=
  V.asymptoticEstimate

theorem vinogradov_mean_value_closed_from_evidence (V : VinogradovMeanValuePackage)
    (E : VinogradovMeanValueEvidence V) : VinogradovMeanValueClosed V := by
  exact E.asymptoticEstimateClosed

end DiophantineInequalities11d79CongruencesManyTheoremCanonicalLaneLean
end HautevilleHouse
