import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure TraumaAssessmentPackage where
  fractureClassification : Prop
  woundMorphology : Prop
  forceDynamics : Prop
  timingEstimation : Prop

structure TraumaAssessmentEvidence (T : TraumaAssessmentPackage) where
  fractureClassificationClosed : T.fractureClassification
  woundMorphologyClosed : T.woundMorphology
  forceDynamicsClosed : T.forceDynamics
  timingEstimationClosed : T.timingEstimation

def TraumaAssessmentClosed (T : TraumaAssessmentPackage) : Prop :=
  T.fractureClassification ∧ T.woundMorphology ∧
  T.forceDynamics ∧ T.timingEstimation

theorem trauma_assessment_closed_from_evidence
    (T : TraumaAssessmentPackage) (Ev : TraumaAssessmentEvidence T) :
    TraumaAssessmentClosed T := by
  exact And.intro Ev.fractureClassificationClosed
    (And.intro Ev.woundMorphologyClosed
      (And.intro Ev.forceDynamicsClosed Ev.timingEstimationClosed))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse