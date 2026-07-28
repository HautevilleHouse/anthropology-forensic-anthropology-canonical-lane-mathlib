import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyForensicAnthropologyCanonicalLaneLean.AdmissibleClass

/-!
# Skeletal Biology Profile Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure SkeletalBiologyPackage where
  ageEstimationMethod : Prop
  sexEstimationMethod : Prop
  ancestryEstimationMethod : Prop
  statureEstimationMethod : Prop
  metricMeasurements : Prop
  morphologicalTraits : Prop

structure SkeletalBiologyEvidence (P : SkeletalBiologyPackage) where
  ageEstimationMethodClosed : P.ageEstimationMethod
  sexEstimationMethodClosed : P.sexEstimationMethod
  ancestryEstimationMethodClosed : P.ancestryEstimationMethod
  statureEstimationMethodClosed : P.statureEstimationMethod
  metricMeasurementsClosed : P.metricMeasurements
  morphologicalTraitsClosed : P.morphologicalTraits

def SkeletalBiologyClosed (P : SkeletalBiologyPackage) : Prop :=
  P.ageEstimationMethod ∧ P.sexEstimationMethod ∧ P.ancestryEstimationMethod ∧
  P.statureEstimationMethod ∧ P.metricMeasurements ∧ P.morphologicalTraits

theorem skeletal_biology_closed_from_evidence (P : SkeletalBiologyPackage) (E : SkeletalBiologyEvidence P) :
    SkeletalBiologyClosed P := by
  exact And.intro E.ageEstimationMethodClosed
    (And.intro E.sexEstimationMethodClosed
      (And.intro E.ancestryEstimationMethodClosed
        (And.intro E.statureEstimationMethodClosed
          (And.intro E.metricMeasurementsClosed E.morphologicalTraitsClosed))))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse