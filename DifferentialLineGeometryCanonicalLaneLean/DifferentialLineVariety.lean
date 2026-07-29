import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure DifferentialLineVariety where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimensionOne : Prop
  lineBundle : Prop
  connection : Prop

def differentialLineVarietyClosed (V : DifferentialLineVariety) : Prop :=
  V.smoothStructure ∧ V.dimensionOne ∧ V.lineBundle ∧ V.connection

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse