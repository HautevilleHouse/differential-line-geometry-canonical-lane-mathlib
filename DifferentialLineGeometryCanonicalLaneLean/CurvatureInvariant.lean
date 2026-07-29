import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialLineGeometryCanonicalLaneLean.DifferentialLineVariety

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure CurvatureInvariant where
  curve : DifferentialLineVariety
  geodesicCurvature : Prop
  torsion : Prop
  normalCurvature : Prop
  curvatureInvariantClosed : geodesicCurvature ∧ torsion ∧ normalCurvature

structure CurvatureInvariantEvidence (C : CurvatureInvariant) where
  geodesicCurvatureClosed : C.geodesicCurvature
  torsionClosed : C.torsion
  normalCurvatureClosed : C.normalCurvature

def curvatureInvariantClosed (C : CurvatureInvariant) : Prop :=
  C.geodesicCurvature ∧ C.torsion ∧ C.normalCurvature

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariant) (E : CurvatureInvariantEvidence C) :
    curvatureInvariantClosed C := by
  exact And.intro E.geodesicCurvatureClosed (And.intro E.torsionClosed E.normalCurvatureClosed)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse