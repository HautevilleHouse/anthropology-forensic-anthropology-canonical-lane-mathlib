import AnthropologyForensicAnthropologyCanonicalLaneLean.AdmissibleClass

/-!
# Osteological Analysis Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure OsteologicalAnalysisPackage where
  boneInventory : Prop
  skeletalAgeEstimate : Prop
  ancestryIndicators : Prop
  sexDetermination : Prop
  statureEstimation : Prop

structure OsteologicalAnalysisEvidence (P : OsteologicalAnalysisPackage) where
  boneInventoryClosed : P.boneInventory
  skeletalAgeEstimateClosed : P.skeletalAgeEstimate
  ancestryIndicatorsClosed : P.ancestryIndicators
  sexDeterminationClosed : P.sexDetermination
  statureEstimationClosed : P.statureEstimation

def OsteologicalAnalysisClosed (P : OsteologicalAnalysisPackage) : Prop :=
  P.boneInventory ∧ P.skeletalAgeEstimate ∧ P.ancestryIndicators ∧
  P.sexDetermination ∧ P.statureEstimation

theorem osteological_analysis_closed_from_evidence
    (P : OsteologicalAnalysisPackage) (E : OsteologicalAnalysisEvidence P) :
    OsteologicalAnalysisClosed P := by
  exact And.intro E.boneInventoryClosed
    (And.intro E.skeletalAgeEstimateClosed
      (And.intro E.ancestryIndicatorsClosed
        (And.intro E.sexDeterminationClosed E.statureEstimationClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse