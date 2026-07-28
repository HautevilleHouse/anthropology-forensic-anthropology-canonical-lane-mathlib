import AnthropologyForensicAnthropologyCanonicalLaneLean.SkeletalIdentification

/-!
# Forensic Anthropology Foundation
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure ForensicAnthropologyFoundation where
  osteology : OsteologicalAnalysisPackage
  osteologyEvidence : OsteologicalAnalysisEvidence osteology
  dna : DNAProfilingPackage osteology
  dnaEvidence : DNAProfilingEvidence dna
  skeletal : SkeletalIdentificationPackage dna
  skeletalEvidence : SkeletalIdentificationEvidence skeletal

def ForensicAnthropologyFoundationClosed (F : ForensicAnthropologyFoundation) : Prop :=
  OsteologicalAnalysisClosed F.osteology ∧
  DNAProfilingClosed F.dna ∧
  SkeletalIdentificationClosed F.skeletal

theorem forensic_anthropology_foundation_closed_from_evidence
    (F : ForensicAnthropologyFoundation) :
    ForensicAnthropologyFoundationClosed F := by
  exact And.intro (osteological_analysis_closed_from_evidence F.osteology F.osteologyEvidence)
    (And.intro (dna_profiling_closed_from_evidence F.dna F.dnaEvidence)
      (skeletal_identification_closed_from_evidence F.skeletal F.skeletalEvidence))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse