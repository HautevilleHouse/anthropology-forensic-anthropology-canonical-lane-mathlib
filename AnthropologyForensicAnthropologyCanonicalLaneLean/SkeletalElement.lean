import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure SkeletalElement where
  boneType : String
  completeness : Prop
  taphonomicAlteration : Prop
  measurementAvailability : Prop

structure SkeletalElementEvidence (E : SkeletalElement) where
  completenessClosed : E.completeness
  taphonomicAlterationClosed : E.taphonomicAlteration
  measurementAvailabilityClosed : E.measurementAvailability

def SkeletalElementClosed (E : SkeletalElement) : Prop :=
  E.completeness ∧ E.taphonomicAlteration ∧ E.measurementAvailability

theorem skeletal_element_closed_from_evidence
    (E : SkeletalElement) (Ev : SkeletalElementEvidence E) :
    SkeletalElementClosed E := by
  exact And.intro Ev.completenessClosed
    (And.intro Ev.taphonomicAlterationClosed Ev.measurementAvailabilityClosed)

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse