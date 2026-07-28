import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SkeletalIdentificationClosed (A.object.skeletalPackage) ∧
  AncestryEstimationClosed (A.object.ancestryPackage) ∧
  OsteobiographicProfileClosed (A.object.osteobiographicPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have hSkel := A.object.skeletalEvidence
  have hAnc := A.object.ancestryEvidence
  have hOsteo := A.object.osteobiographicEvidence
  exact And.intro (skeletal_identification_closed_from_evidence _ hSkel)
    (And.intro (ancestry_estimation_closed_from_evidence _ hAnc)
      (osteobiographic_profile_closed_from_evidence _ hOsteo))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedForensicAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_forensic_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedForensicAnthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse