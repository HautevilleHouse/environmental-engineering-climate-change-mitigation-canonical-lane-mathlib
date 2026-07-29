import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  deltaD : ℝ
  delta18O : ℝ
  temperature : ℝ
  fractionationFactor : ℝ
  isotopicCalibration : Prop
  temperatureReconstruction : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  isotopicCalibrationClosed : I.isotopicCalibration
  temperatureReconstructionClosed : I.temperatureReconstruction

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.isotopicCalibration ∧ I.temperatureReconstruction

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.isotopicCalibrationClosed Ev.temperatureReconstructionClosed

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse
