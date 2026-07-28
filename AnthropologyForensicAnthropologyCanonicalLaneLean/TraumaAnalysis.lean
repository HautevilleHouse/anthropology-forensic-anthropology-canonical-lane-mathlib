import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyForensicAnthropologyCanonicalLaneLean.SkeletalBiologyProfile

/-!
# Trauma Analysis Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure TraumaAnalysisPackage where
  bluntForceTrauma : Prop
  sharpForceTrauma : Prop
  projectileTrauma : Prop
  perimortemTiming : Prop
  fracturePatternClassification : Prop

structure TraumaAnalysisEvidence (P : TraumaAnalysisPackage) where
  bluntForceTraumaClosed : P.bluntForceTrauma
  sharpForceTraumaClosed : P.sharpForceTrauma
  projectileTraumaClosed : P.projectileTrauma
  perimortemTimingClosed : P.perimortemTiming
  fracturePatternClassificationClosed : P.fracturePatternClassification

def TraumaAnalysisClosed (P : TraumaAnalysisPackage) : Prop :=
  P.bluntForceTrauma ∧ P.sharpForceTrauma ∧ P.projectileTrauma ∧
  P.perimortemTiming ∧ P.fracturePatternClassification

theorem trauma_analysis_closed_from_evidence (P : TraumaAnalysisPackage) (E : TraumaAnalysisEvidence P) :
    TraumaAnalysisClosed P := by
  exact And.intro E.bluntForceTraumaClosed
    (And.intro E.sharpForceTraumaClosed
      (And.intro E.projectileTraumaClosed
        (And.intro E.perimortemTimingClosed E.fracturePatternClassificationClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse