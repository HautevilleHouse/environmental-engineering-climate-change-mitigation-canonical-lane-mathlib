import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure ClimateAdmittedObject where
  carbonBudget : Prop
  temperatureGoal : Prop
  emissionTrajectory : Prop
  conclusion : emissionTrajectory → carbonBudget → temperatureGoal

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.carbonBudget → O.temperatureGoal

structure AdmissibleClass where
  object : ClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse