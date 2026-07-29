import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  effectiveTemperature : ℝ
  radiativeForcing : Prop
  energyBalanceEquation : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeForcingClosed : E.radiativeForcing
  energyBalanceEquationClosed : E.energyBalanceEquation

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeForcing ∧ E.energyBalanceEquation

theorem energy_balance_model_closed_from_evidence
    (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeForcingClosed Ev.energyBalanceEquationClosed

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse
