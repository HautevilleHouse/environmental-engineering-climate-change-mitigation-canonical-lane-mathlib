import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure ClimateFoundationalInhabitants where
  orbitalForcingAvailable : Prop
  energyBalanceAvailable : Prop
  isotopicProxiesAvailable : Prop
  abruptClimateEventsAvailable : Prop
  orbitalForcingTerm : orbitalForcingAvailable
  energyBalanceTerm : energyBalanceAvailable
  isotopicProxiesTerm : isotopicProxiesAvailable
  abruptClimateEventsTerm : abruptClimateEventsAvailable

def ClimateFoundationalClosed (C : ClimateFoundationalInhabitants) : Prop :=
  C.orbitalForcingAvailable ∧ C.energyBalanceAvailable ∧ C.isotopicProxiesAvailable ∧ C.abruptClimateEventsAvailable

theorem climate_foundational_closed_from_inhabitants (C : ClimateFoundationalInhabitants) :
    ClimateFoundationalClosed C := by
  exact And.intro C.orbitalForcingTerm (And.intro C.energyBalanceTerm (And.intro C.isotopicProxiesTerm C.abruptClimateEventsTerm))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse