import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.PaleoTemperaturePackage

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure CarbonClimatePackage {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} {P : PaleoTemperaturePackage E} where
  carbonReservoirs : Prop
  carbonFluxes : Prop
  climateSensitivity : Prop
  feedbackConsistency : Prop

structure CarbonClimateEvidence {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} {P : PaleoTemperaturePackage E}
    (C : CarbonClimatePackage P) where
  carbonReservoirsClosed : C.carbonReservoirs
  carbonFluxesClosed : C.carbonFluxes
  climateSensitivityClosed : C.climateSensitivity
  feedbackConsistencyClosed : C.feedbackConsistency

def CarbonClimateClosed {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} {P : PaleoTemperaturePackage E}
    (C : CarbonClimatePackage P) : Prop :=
  C.carbonReservoirs ∧ C.carbonFluxes ∧ C.climateSensitivity ∧ C.feedbackConsistency

theorem carbon_climate_closed_from_evidence {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} {P : PaleoTemperaturePackage E}
    (C : CarbonClimatePackage P) (Ev : CarbonClimateEvidence C) :
    CarbonClimateClosed C := by
  exact And.intro Ev.carbonReservoirsClosed
    (And.intro Ev.carbonFluxesClosed
      (And.intro Ev.climateSensitivityClosed Ev.feedbackConsistencyClosed))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse