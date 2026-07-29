import EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.EnergyBalanceModel

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure MitigationScenarioPackage (M : EnergyBalanceModelPackage) where
  emissionReductions : Prop
  carbonBudget : Prop
  implementationPathway : Prop
  temperatureOutcome : Prop

structure MitigationScenarioEvidence {M : EnergyBalanceModelPackage} (S : MitigationScenarioPackage M) where
  emissionReductionsClosed : S.emissionReductions
  carbonBudgetClosed : S.carbonBudget
  implementationPathwayClosed : S.implementationPathway
  temperatureOutcomeClosed : S.temperatureOutcome

def MitigationScenarioClosed {M : EnergyBalanceModelPackage} (S : MitigationScenarioPackage M) : Prop :=
  S.emissionReductions ∧ S.carbonBudget ∧ S.implementationPathway ∧ S.temperatureOutcome

theorem mitigation_scenario_closed_from_evidence
    {M : EnergyBalanceModelPackage} (S : MitigationScenarioPackage M)
    (E : MitigationScenarioEvidence S) : MitigationScenarioClosed S := by
  exact And.intro E.emissionReductionsClosed
    (And.intro E.carbonBudgetClosed
      (And.intro E.implementationPathwayClosed E.temperatureOutcomeClosed))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse