import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.MilankovitchCycles
import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.EnergyBalanceModel
import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.ClimateFoundationalInhabitants
import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.ClimateMitigationRoute

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

-- Root file for the Environmental Engineering Climate Change Mitigation canonical lane.
-- All domain packages are imported above.

def ConstrainedClimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_endgame (A : AdmissibleClass) :
    ConstrainedClimateClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse