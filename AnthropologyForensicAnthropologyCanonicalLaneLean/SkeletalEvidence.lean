import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure SkeletalEvidencePackage where
  boneFragments : Type
  morphologicalMarkers : Prop
  traumaAnalysis : Prop
  ancestryEstimation : Prop

structure SkeletalEvidenceEvidence (S : SkeletalEvidencePackage) where
  morphologicalMarkersClosed : S.morphologicalMarkers
  traumaAnalysisClosed : S.traumaAnalysis
  ancestryEstimationClosed : S.ancestryEstimation

def SkeletalEvidenceClosed (S : SkeletalEvidencePackage) : Prop :=
  S.morphologicalMarkers ∧ S.traumaAnalysis ∧ S.ancestryEstimation

theorem skeletal_evidence_closed_from_evidence (S : SkeletalEvidencePackage) (E : SkeletalEvidenceEvidence S) :
    SkeletalEvidenceClosed S := by
  exact And.intro E.morphologicalMarkersClosed (And.intro E.traumaAnalysisClosed E.ancestryEstimationClosed)

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse