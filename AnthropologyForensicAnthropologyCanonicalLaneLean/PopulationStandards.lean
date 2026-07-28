import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyForensicAnthropologyCanonicalLaneLean.SkeletalBiologyProfile

/-!
# Population Standards Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure PopulationStandardsPackage where
  fordiscReferenceDataset : Prop
  craniometricStandards : Prop
  postcraniometricStandards : Prop
  ancestryEstimationModels : Prop
  statureEstimationEquations : Prop

structure PopulationStandardsEvidence (P : PopulationStandardsPackage) where
  fordiscReferenceDatasetClosed : P.fordiscReferenceDataset
  craniometricStandardsClosed : P.craniometricStandards
  postcraniometricStandardsClosed : P.postcraniometricStandards
  ancestryEstimationModelsClosed : P.ancestryEstimationModels
  statureEstimationEquationsClosed : P.statureEstimationEquations

def PopulationStandardsClosed (P : PopulationStandardsPackage) : Prop :=
  P.fordiscReferenceDataset ∧ P.craniometricStandards ∧ P.postcraniometricStandards ∧
  P.ancestryEstimationModels ∧ P.statureEstimationEquations

theorem population_standards_closed_from_evidence (P : PopulationStandardsPackage) (E : PopulationStandardsEvidence P) :
    PopulationStandardsClosed P := by
  exact And.intro E.fordiscReferenceDatasetClosed
    (And.intro E.craniometricStandardsClosed
      (And.intro E.postcraniometricStandardsClosed
        (And.intro E.ancestryEstimationModelsClosed E.statureEstimationEquationsClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse