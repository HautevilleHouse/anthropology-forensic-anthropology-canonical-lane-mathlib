import canonicalLaneMathlib.AdmissibleClass

/-!
# Skeletal Identification Evidence Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure SkeletalIdentificationPackage where
  metricAnalysisPerformed : Prop
  morphologicalAnalysisPerformed : Prop
  ancestryEstimate : Prop
  sexEstimate : Prop
  statureEstimate : Prop
  metricAnalysisPerformedClosed : metricAnalysisPerformed
  morphologicalAnalysisPerformedClosed : morphologicalAnalysisPerformed
  ancestryEstimateClosed : ancestryEstimate
  sexEstimateClosed : sexEstimate
  statureEstimateClosed : statureEstimate

def SkeletalIdentificationEvidence (S : SkeletalIdentificationPackage) : Prop :=
  S.metricAnalysisPerformed ∧ S.morphologicalAnalysisPerformed ∧
  S.ancestryEstimate ∧ S.sexEstimate ∧ S.statureEstimate

theorem skeletal_identification_closed_from_evidence
    (S : SkeletalIdentificationPackage) : SkeletalIdentificationEvidence S := by
  exact And.intro S.metricAnalysisPerformedClosed
    (And.intro S.morphologicalAnalysisPerformedClosed
      (And.intro S.ancestryEstimateClosed
        (And.intro S.sexEstimateClosed S.statureEstimateClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse