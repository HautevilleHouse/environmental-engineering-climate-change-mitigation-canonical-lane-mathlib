import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure CarbonCyclePackage where
  atmosphericCO2 : ℝ
  oceanUptake : ℝ
  landUptake : ℝ
  emissions : ℝ
  carbonBudgetEquation : atmosphericCO2 = emissions - oceanUptake - landUptake
  feedbackFactor : ℝ

def CarbonCycleClosure (C : CarbonCyclePackage) : Prop :=
  C.carbonBudgetEquation ∧ C.feedbackFactor > 0

structure CarbonCycleEvidence (C : CarbonCyclePackage) where
  carbonBudgetEquationClosed : C.carbonBudgetEquation
  feedbackPositive : C.feedbackFactor > 0

theorem carbon_cycle_closed_from_evidence (C : CarbonCyclePackage) (Ev : CarbonCycleEvidence C) :
    CarbonCycleClosure C := by
  exact And.intro Ev.carbonBudgetEquationClosed Ev.feedbackPositive

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse