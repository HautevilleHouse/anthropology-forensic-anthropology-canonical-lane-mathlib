import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure OsteometricPackage where
  measurementProtocol : Prop
  populationReferenceData : Prop
  statisticalModel : Prop
  errorRates : Prop

structure OsteometricEvidence (P : OsteometricPackage) where
  measurementProtocolClosed : P.measurementProtocol
  populationReferenceDataClosed : P.populationReferenceData
  statisticalModelClosed : P.statisticalModel
  errorRatesClosed : P.errorRates

def OsteometricClosed (P : OsteometricPackage) : Prop :=
  P.measurementProtocol ∧ P.populationReferenceData ∧
  P.statisticalModel ∧ P.errorRates

theorem osteometric_closed_from_evidence
    (P : OsteometricPackage) (Ev : OsteometricEvidence P) :
    OsteometricClosed P := by
  exact And.intro Ev.measurementProtocolClosed
    (And.intro Ev.populationReferenceDataClosed
      (And.intro Ev.statisticalModelClosed Ev.errorRatesClosed))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse