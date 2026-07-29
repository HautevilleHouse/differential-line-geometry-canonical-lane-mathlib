import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure CurvatureInvariants (M : Type*) [TopologicalSpace M] [SmoothManifold M] where
  gaussCurvature : ℝ → ℝ
  meanCurvature : ℝ → ℝ
  principalCurvatures : ℝ × ℝ
  shapeOperator : VectorBundle M → VectorBundle M
  gaussCodazziEquations : Prop
  theoremaEgregium : Prop
  gaussCodazziEquationsTerm : gaussCodazziEquations
  theoremaEgregiumTerm : theoremaEgregium

structure CurvatureInvariantsEvidence (C : CurvatureInvariants M) where
  gaussCodazziEquationsClosed : C.gaussCodazziEquations
  theoremaEgregiumClosed : C.theoremaEgregium

def CurvatureInvariantsClosed (C : CurvatureInvariants M) : Prop :=
  C.gaussCodazziEquations ∧ C.theoremaEgregium

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariants M) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.gaussCodazziEquationsClosed E.theoremaEgregiumClosed

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
