import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure BiologicalProfilePackage where
  ageEstimation : Prop
  sexEstimation : Prop
  statureEstimation : Prop
  ancestryEstimation : Prop

structure BiologicalProfileEvidence (B : BiologicalProfilePackage) where
  ageEstimationClosed : B.ageEstimation
  sexEstimationClosed : B.sexEstimation
  statureEstimationClosed : B.statureEstimation
  ancestryEstimationClosed : B.ancestryEstimation

def BiologicalProfileClosed (B : BiologicalProfilePackage) : Prop :=
  B.ageEstimation ∧ B.sexEstimation ∧
  B.statureEstimation ∧ B.ancestryEstimation

theorem biological_profile_closed_from_evidence
    (B : BiologicalProfilePackage) (Ev : BiologicalProfileEvidence B) :
    BiologicalProfileClosed B := by
  exact And.intro Ev.ageEstimationClosed
    (And.intro Ev.sexEstimationClosed
      (And.intro Ev.statureEstimationClosed Ev.ancestryEstimationClosed))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse