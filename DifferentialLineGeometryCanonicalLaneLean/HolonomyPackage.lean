import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialLineGeometryCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure HolonomyPackage where
  connection : ConnectionTheory
  holonomyGroup : Type u
  holonomyAlgebra : Prop
  monodromy : Prop
  holonomyClosed : holonomyAlgebra ∧ monodromy

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyAlgebraClosed : H.holonomyAlgebra
  monodromyClosed : H.monodromy

def holonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyAlgebra ∧ H.monodromy

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    holonomyClosed H := by
  exact And.intro E.holonomyAlgebraClosed E.monodromyClosed

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse