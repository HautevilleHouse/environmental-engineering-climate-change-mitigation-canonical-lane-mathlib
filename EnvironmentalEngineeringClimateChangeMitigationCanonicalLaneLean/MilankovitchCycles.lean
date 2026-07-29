import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure MilankovitchCyclesPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  orbitalForcing : Prop
  insolationComputed : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalForcingClosed : M.orbitalForcing
  insolationComputedClosed : M.insolationComputed

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalForcing ∧ M.insolationComputed

theorem milankovitch_cycles_closed_from_evidence
    (M : MilankovitchCyclesPackage) (Ev : MilankovitchCyclesEvidence M) :
    MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalForcingClosed Ev.insolationComputedClosed

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse
