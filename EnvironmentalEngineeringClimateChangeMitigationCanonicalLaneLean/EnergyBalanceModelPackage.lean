import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.MilankovitchCyclePackage

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure EnergyBalanceModelPackage (M : MilankovitchCyclePackage) where
  solarConstant : Prop
  albedo : Prop
  greenhouseEffect : Prop
  feedbacks : Prop
  equilibriumTemperature : Prop

structure EnergyBalanceModelEvidence {M : MilankovitchCyclePackage}
    (E : EnergyBalanceModelPackage M) where
  solarConstantClosed : E.solarConstant
  albedoClosed : E.albedo
  greenhouseEffectClosed : E.greenhouseEffect
  feedbacksClosed : E.feedbacks
  equilibriumTemperatureClosed : E.equilibriumTemperature

def EnergyBalanceModelClosed {M : MilankovitchCyclePackage}
    (E : EnergyBalanceModelPackage M) : Prop :=
  E.solarConstant ∧ E.albedo ∧ E.greenhouseEffect ∧ E.feedbacks ∧ E.equilibriumTemperature

theorem energy_balance_model_closed_from_evidence {M : MilankovitchCyclePackage}
    (E : EnergyBalanceModelPackage M) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro Ev.solarConstantClosed
    (And.intro Ev.albedoClosed
      (And.intro Ev.greenhouseEffectClosed
        (And.intro Ev.feedbacksClosed Ev.equilibriumTemperatureClosed)))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse