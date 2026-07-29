import HautevilleHouse.EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean

structure MilankovitchCyclePackage where
  eccentricity : Prop
  obliquity : Prop
  precession : Prop
  insolationPattern : Prop
  orbitalParametersConsistent : Prop

structure MilankovitchCycleEvidence (M : MilankovitchCyclePackage) where
  eccentricityClosed : M.eccentricity
  obliquityClosed : M.obliquity
  precessionClosed : M.precession
  insolationPatternClosed : M.insolationPattern
  orbitalParametersConsistentClosed : M.orbitalParametersConsistent

def MilankovitchCycleClosed (M : MilankovitchCyclePackage) : Prop :=
  M.eccentricity ∧ M.obliquity ∧ M.precession ∧ M.insolationPattern ∧ M.orbitalParametersConsistent

theorem milankovitch_cycle_closed_from_evidence (M : MilankovitchCyclePackage)
    (E : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact And.intro E.eccentricityClosed
    (And.intro E.obliquityClosed
      (And.intro E.precessionClosed
        (And.intro E.insolationPatternClosed E.orbitalParametersConsistentClosed)))

end EnvironmentalEngineeringClimateChangeMitigationCanonicalLaneLean
end HautevilleHouse