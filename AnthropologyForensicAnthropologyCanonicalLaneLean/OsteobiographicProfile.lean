import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyForensicAnthropologyCanonicalLaneLean

structure OsteobiographicProfilePackage where
  sexEstimation : Prop
  ageAtDeathEstimation : Prop
  statureEstimation : Prop
  pathologicalLesionsRecorded : Prop
  occupationalMarkersRecorded : Prop
  dentalCharting : Prop
  skeletalIdiosyncrasies : Prop

structure OsteobiographicProfileEvidence (O : OsteobiographicProfilePackage) where
  sexEstimationClosed : O.sexEstimation
  ageAtDeathEstimationClosed : O.ageAtDeathEstimation
  statureEstimationClosed : O.statureEstimation
  pathologicalLesionsRecordedClosed : O.pathologicalLesionsRecorded
  occupationalMarkersRecordedClosed : O.occupationalMarkersRecorded
  dentalChartingClosed : O.dentalCharting
  skeletalIdiosyncrasiesClosed : O.skeletalIdiosyncrasies

def OsteobiographicProfileClosed (O : OsteobiographicProfilePackage) : Prop :=
  O.sexEstimation ∧ O.ageAtDeathEstimation ∧ O.statureEstimation ∧
  O.pathologicalLesionsRecorded ∧ O.occupationalMarkersRecorded ∧
  O.dentalCharting ∧ O.skeletalIdiosyncrasies

theorem osteobiographic_profile_closed_from_evidence (O : OsteobiographicProfilePackage)
    (E : OsteobiographicProfileEvidence O) : OsteobiographicProfileClosed O := by
  exact And.intro E.sexEstimationClosed
    (And.intro E.ageAtDeathEstimationClosed
      (And.intro E.statureEstimationClosed
        (And.intro E.pathologicalLesionsRecordedClosed
          (And.intro E.occupationalMarkersRecordedClosed
            (And.intro E.dentalChartingClosed E.skeletalIdiosyncrasiesClosed)))))

end AnthropologyForensicAnthropologyCanonicalLaneLean
end HautevilleHouse