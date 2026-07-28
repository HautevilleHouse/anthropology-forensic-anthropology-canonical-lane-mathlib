import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure SkeletalIdentificationPackage where
  boneInventory : Type u
  traumaMarkers : Type v
  pathologyIndicators : Type w
  taphonomicAlterations : Type x
  minimumNumberIndividuals : Prop
  osteometricSorting : Prop
  comminglingResolution : Prop
  biologicalProfileConstrained : Prop

structure SkeletalIdentificationEvidence (S : SkeletalIdentificationPackage) where
  minimumNumberIndividualsClosed : S.minimumNumberIndividuals
  osteometricSortingClosed : S.osteometricSorting
  comminglingResolutionClosed : S.comminglingResolution
  biologicalProfileConstrainedClosed : S.biologicalProfileConstrained

def SkeletalIdentificationClosed (S : SkeletalIdentificationPackage) : Prop :=
  S.minimumNumberIndividuals ∧ S.osteometricSorting ∧
  S.comminglingResolution ∧ S.biologicalProfileConstrained

theorem skeletal_identification_closed_from_evidence (S : SkeletalIdentificationPackage)
    (E : SkeletalIdentificationEvidence S) : SkeletalIdentificationClosed S := by
  exact And.intro E.minimumNumberIndividualsClosed
    (And.intro E.osteometricSortingClosed
      (And.intro E.comminglingResolutionClosed E.biologicalProfileConstrainedClosed))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse