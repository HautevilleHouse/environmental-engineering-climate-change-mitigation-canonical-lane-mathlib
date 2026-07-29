import EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  climateModel : Prop
  mitigationPathway : Prop
  temperatureStabilizationTarget : Prop
  conclusion : temperatureStabilizationTarget

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.temperatureStabilizationTarget

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse