import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure PopulationAffinityPackage where
  cranialMorphometrics : Prop
  dentalMorphology : Prop
  geneticMarkers : Prop
  referenceSamples : Prop

structure PopulationAffinityEvidence (P : PopulationAffinityPackage) where
  cranialMorphometricsClosed : P.cranialMorphometrics
  dentalMorphologyClosed : P.dentalMorphology
  geneticMarkersClosed : P.geneticMarkers
  referenceSamplesClosed : P.referenceSamples

def PopulationAffinityClosed (P : PopulationAffinityPackage) : Prop :=
  P.cranialMorphometrics ∧ P.dentalMorphology ∧
  P.geneticMarkers ∧ P.referenceSamples

theorem population_affinity_closed_from_evidence
    (P : PopulationAffinityPackage) (Ev : PopulationAffinityEvidence P) :
    PopulationAffinityClosed P := by
  exact And.intro Ev.cranialMorphometricsClosed
    (And.intro Ev.dentalMorphologyClosed
      (And.intro Ev.geneticMarkersClosed Ev.referenceSamplesClosed))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse