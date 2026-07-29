import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure ConnectionOneForm where
  frameBundleType : Type u
  oneForm : frameBundleType → ℝ
  compatibilityMetric : Prop
  torsionFree : Prop
  structureGroup : Prop

def ConnectionOneFormClosed (C : ConnectionOneForm) : Prop :=
  C.compatibilityMetric ∧ C.torsionFree ∧ C.structureGroup

theorem connection_one_form_closed (C : ConnectionOneForm) :
    ConnectionOneFormClosed C := by
  exact And.intro C.compatibilityMetric (And.intro C.torsionFree C.structureGroup)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse