import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialLineGeometryCanonicalLaneLean.DifferentialLineVariety

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure ConnectionTheory where
  lineBundle : Type u
  connectionForm : Prop
  curvatureForm : Prop
  parallelTransport : Prop
  holonomyGroup : Prop

def connectionTheoryClosed (C : ConnectionTheory) : Prop :=
  C.connectionForm ∧ C.curvatureForm ∧ C.parallelTransport ∧ C.holonomyGroup

structure ConnectionTheoryEvidence (C : ConnectionTheory) where
  connectionFormClosed : C.connectionForm
  curvatureFormClosed : C.curvatureForm
  parallelTransportClosed : C.parallelTransport
  holonomyGroupClosed : C.holonomyGroup

theorem connection_theory_closed_from_evidence (C : ConnectionTheory) (E : ConnectionTheoryEvidence C) :
    connectionTheoryClosed C := by
  exact And.intro E.connectionFormClosed (And.intro E.curvatureFormClosed (And.intro E.parallelTransportClosed E.holonomyGroupClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse