import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyForensicAnthropologyCanonicalLaneLean.SkeletalBiologyProfile

/-!
# Taphonomy Analysis Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure TaphonomyAnalysisPackage where
  postmortemIntervalEstimation : Prop
  scavengingModifications : Prop
  weatheringStage : Prop
  burialContext : Prop
  decompositionStage : Prop

structure TaphonomyAnalysisEvidence (P : TaphonomyAnalysisPackage) where
  postmortemIntervalEstimationClosed : P.postmortemIntervalEstimation
  scavengingModificationsClosed : P.scavengingModifications
  weatheringStageClosed : P.weatheringStage
  burialContextClosed : P.burialContext
  decompositionStageClosed : P.decompositionStage

def TaphonomyAnalysisClosed (P : TaphonomyAnalysisPackage) : Prop :=
  P.postmortemIntervalEstimation ∧ P.scavengingModifications ∧ P.weatheringStage ∧
  P.burialContext ∧ P.decompositionStage

theorem taphonomy_analysis_closed_from_evidence (P : TaphonomyAnalysisPackage) (E : TaphonomyAnalysisEvidence P) :
    TaphonomyAnalysisClosed P := by
  exact And.intro E.postmortemIntervalEstimationClosed
    (And.intro E.scavengingModificationsClosed
      (And.intro E.weatheringStageClosed
        (And.intro E.burialContextClosed E.decompositionStageClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse