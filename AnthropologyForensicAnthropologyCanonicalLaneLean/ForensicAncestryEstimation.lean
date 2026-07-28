import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure AncestryEstimationPackage where
  cranialMorphometrics : Type u
  dentalTraits : Type v
  postcranialIndices : Type w
  populationReferenceData : Prop
  ancestryAssignmentError : Prop
  populationAffinityConfidence : Prop

structure AncestryEstimationEvidence (A : AncestryEstimationPackage) where
  populationReferenceDataClosed : A.populationReferenceData
  ancestryAssignmentErrorClosed : A.ancestryAssignmentError
  populationAffinityConfidenceClosed : A.populationAffinityConfidence

def AncestryEstimationClosed (A : AncestryEstimationPackage) : Prop :=
  A.populationReferenceData ∧ A.ancestryAssignmentError ∧ A.populationAffinityConfidence

theorem ancestry_estimation_closed_from_evidence (A : AncestryEstimationPackage)
    (E : AncestryEstimationEvidence A) : AncestryEstimationClosed A := by
  exact And.intro E.populationReferenceDataClosed
    (And.intro E.ancestryAssignmentErrorClosed E.populationAffinityConfidenceClosed)

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse