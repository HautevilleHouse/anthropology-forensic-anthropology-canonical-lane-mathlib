import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyForensicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object.profile.ageEstimate ∧ A.object.profile.sexEstimate ∧ A.object.profile.ancestryEstimate ∧ A.object.profile.statureEstimate) ∧
  A.object.profile.traumaInferences ∧ A.object.profile.taphonomyInferences

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse