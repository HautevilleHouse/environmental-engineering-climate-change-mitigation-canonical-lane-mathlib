import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.EnergyBalanceModelPackage

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure PaleoTemperaturePackage {M : MilankovitchCyclePackage}
    (E : EnergyBalanceModelPackage M) where
  delta18O : Prop
  deltaD : Prop
  temperatureReconstruction : Prop
  calibrationValid : Prop

structure PaleoTemperatureEvidence {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} (P : PaleoTemperaturePackage E) where
  delta18OClosed : P.delta18O
  deltaDClosed : P.deltaD
  temperatureReconstructionClosed : P.temperatureReconstruction
  calibrationValidClosed : P.calibrationValid

def PaleoTemperatureClosed {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} (P : PaleoTemperaturePackage E) : Prop :=
  P.delta18O ∧ P.deltaD ∧ P.temperatureReconstruction ∧ P.calibrationValid

theorem paleo_temperature_closed_from_evidence {M : MilankovitchCyclePackage}
    {E : EnergyBalanceModelPackage M} (P : PaleoTemperaturePackage E)
    (Ev : PaleoTemperatureEvidence P) : PaleoTemperatureClosed P := by
  exact And.intro Ev.delta18OClosed
    (And.intro Ev.deltaDClosed
      (And.intro Ev.temperatureReconstructionClosed Ev.calibrationValidClosed))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse