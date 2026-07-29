import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.AdmissibleClass

/-!
# Paleoclimate Proxies Package
-/

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure PaleoclimateProxiesPackage where
  oxygenIsotopeRatio : Prop
  deuteriumExcess : Prop
  iceCoreDating : Prop
  temperatureReconstruction : Prop

structure PaleoclimateProxiesEvidence (P : PaleoclimateProxiesPackage) where
  oxygenIsotopeRatioClosed : P.oxygenIsotopeRatio
  deuteriumExcessClosed : P.deuteriumExcess
  iceCoreDatingClosed : P.iceCoreDating
  temperatureReconstructionClosed : P.temperatureReconstruction

def PaleoclimateProxiesClosed (P : PaleoclimateProxiesPackage) : Prop :=
  P.oxygenIsotopeRatio ∧ P.deuteriumExcess ∧ P.iceCoreDating ∧ P.temperatureReconstruction

theorem paleoclimate_proxies_closed_from_evidence (P : PaleoclimateProxiesPackage)
    (Ev : PaleoclimateProxiesEvidence P) : PaleoclimateProxiesClosed P := by
  exact And.intro Ev.oxygenIsotopeRatioClosed
    (And.intro Ev.deuteriumExcessClosed
      (And.intro Ev.iceCoreDatingClosed Ev.temperatureReconstructionClosed))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse