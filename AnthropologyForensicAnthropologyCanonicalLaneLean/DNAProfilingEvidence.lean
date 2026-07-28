import canonicalLaneMathlib.AdmissibleClass

/-!
# DNA Profiling Evidence Package
-/

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure DNAProfilingPackage where
  strMarkersAnalyzed : Prop
  mtDNAAnalyzed : Prop
  yChromosomeAnalyzed : Prop
  profileMatch : Prop
  statisticalWeight : Prop
  strMarkersAnalyzedClosed : strMarkersAnalyzed
  mtDNAAnalyzedClosed : mtDNAAnalyzed
  yChromosomeAnalyzedClosed : yChromosomeAnalyzed
  profileMatchClosed : profileMatch
  statisticalWeightClosed : statisticalWeight

def DNAProfilingEvidence (D : DNAProfilingPackage) : Prop :=
  D.strMarkersAnalyzed ∧ D.mtDNAAnalyzed ∧ D.yChromosomeAnalyzed ∧
  D.profileMatch ∧ D.statisticalWeight

theorem dna_profiling_closed_from_evidence
    (D : DNAProfilingPackage) : DNAProfilingEvidence D := by
  exact And.intro D.strMarkersAnalyzedClosed
    (And.intro D.mtDNAAnalyzedClosed
      (And.intro D.yChromosomeAnalyzedClosed
        (And.intro D.profileMatchClosed D.statisticalWeightClosed)))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse