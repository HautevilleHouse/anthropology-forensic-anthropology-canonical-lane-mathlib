import AnthropologyForensicAnthropologyCanonicalLaneLean.OsteologicalAnalysis

/-!
# DNA Profiling Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure DNAProfilingPackage (O : OsteologicalAnalysisPackage) where
  strProfile : Prop
  mtdnaSequence : Prop
  snpPanel : Prop
  contaminationControl : Prop
  statisticalMatch : Prop

structure DNAProfilingEvidence {O : OsteologicalAnalysisPackage}
    (D : DNAProfilingPackage O) where
  strProfileClosed : D.strProfile
  mtdnaSequenceClosed : D.mtdnaSequence
  snpPanelClosed : D.snpPanel
  contaminationControlClosed : D.contaminationControl
  statisticalMatchClosed : D.statisticalMatch

def DNAProfilingClosed {O : OsteologicalAnalysisPackage}
    (D : DNAProfilingPackage O) : Prop :=
  D.strProfile ∧ D.mtdnaSequence ∧ D.snpPanel ∧
  D.contaminationControl ∧ D.statisticalMatch

theorem dna_profiling_closed_from_evidence
    {O : OsteologicalAnalysisPackage} (D : DNAProfilingPackage O)
    (E : DNAProfilingEvidence D) : DNAProfilingClosed D := by
  exact And.intro E.strProfileClosed
    (And.intro E.mtdnaSequenceClosed
      (And.intro E.snpPanelClosed
        (And.intro E.contaminationControlClosed E.statisticalMatchClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse