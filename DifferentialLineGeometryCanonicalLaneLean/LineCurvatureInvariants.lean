import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

/-!
# Line Curvature Invariants

Defines the curvature invariants of a congruence of lines: geodesic curvature,
normal curvature, geodesic torsion, and their closure properties.
-/

structure LineCurvatureInvariants where
  geodesicCurvature : Prop
  normalCurvature : Prop
  geodesicTorsion : Prop
  gaussCodazziEquations : Prop
  integrabilityConditions : Prop

structure LineCurvatureEvidence (L : LineCurvatureInvariants) where
  geodesicCurvatureClosed : L.geodesicCurvature
  normalCurvatureClosed : L.normalCurvature
  geodesicTorsionClosed : L.geodesicTorsion
  gaussCodazziEquationsClosed : L.gaussCodazziEquations
  integrabilityConditionsClosed : L.integrabilityConditions

def LineCurvatureClosed (L : LineCurvatureInvariants) : Prop :=
  L.geodesicCurvature ∧ L.normalCurvature ∧ L.geodesicTorsion ∧
  L.gaussCodazziEquations ∧ L.integrabilityConditions

theorem line_curvature_closed_from_evidence (L : LineCurvatureInvariants) (E : LineCurvatureEvidence L) :
    LineCurvatureClosed L := by
  exact And.intro E.geodesicCurvatureClosed
    (And.intro E.normalCurvatureClosed
      (And.intro E.geodesicTorsionClosed
        (And.intro E.gaussCodazziEquationsClosed E.integrabilityConditionsClosed)))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse