import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SkeletalRemains where
  bones : Type
  measurements : Prop
  completeness : Prop

structure BiologicalProfile where
  ageEstimate : Prop
  sexEstimate : Prop
  ancestryEstimate : Prop
  statureEstimate : Prop
  traumaInferences : Prop
  taphonomyInferences : Prop

structure ForensicAnthropologyAdmittedObject where
  remains : SkeletalRemains
  profile : BiologicalProfile
  conclusion : Prop

structure AdmissibleClass where
  object : ForensicAnthropologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.profile.ageEstimate ∧ A.object.profile.sexEstimate ∧ A.object.profile.ancestryEstimate ∧ A.object.profile.statureEstimate) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse