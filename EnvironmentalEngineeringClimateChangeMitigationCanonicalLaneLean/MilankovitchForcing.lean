import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.AdmissibleClass

/-!
# Milankovitch Forcing Package
-/

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure MilankovitchForcingPackage where
  eccentricityCycle : Prop
  obliquityCycle : Prop
  precessionCycle : Prop
  insolationAnomaly : Prop

structure MilankovitchForcingEvidence (M : MilankovitchForcingPackage) where
  eccentricityCycleClosed : M.eccentricityCycle
  obliquityCycleClosed : M.obliquityCycle
  precessionCycleClosed : M.precessionCycle
  insolationAnomalyClosed : M.insolationAnomaly

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.eccentricityCycle ∧ M.obliquityCycle ∧ M.precessionCycle ∧ M.insolationAnomaly

theorem milankovitch_forcing_closed_from_evidence (M : MilankovitchForcingPackage)
    (Ev : MilankovitchForcingEvidence M) : MilankovitchForcingClosed M := by
  exact And.intro Ev.eccentricityCycleClosed
    (And.intro Ev.obliquityCycleClosed
      (And.intro Ev.precessionCycleClosed Ev.insolationAnomalyClosed))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse