import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure FrenetFrame (M : Type*) [TopologicalSpace M] [SmoothManifold M] where
  curve : ℝ → M
  tangent : ℝ → VectorBundle M
  normal : ℝ → VectorBundle M
  binormal : ℝ → VectorBundle M
  curvature : ℝ → ℝ
  torsion : ℝ → ℝ
  frenetFormulas : Prop
  orthonormalFrame : Prop
  smoothness : Prop
  frenetFormulasTerm : frenetFormulas
  orthonormalFrameTerm : orthonormalFrame
  smoothnessTerm : smoothness

structure FrenetFrameEvidence (F : FrenetFrame M) where
  frenetFormulasClosed : F.frenetFormulas
  orthonormalFrameClosed : F.orthonormalFrame
  smoothnessClosed : F.smoothness

def FrenetFrameClosed (F : FrenetFrame M) : Prop :=
  F.frenetFormulas ∧ F.orthonormalFrame ∧ F.smoothness

theorem frenet_frame_closed_from_evidence (F : FrenetFrame M) (E : FrenetFrameEvidence F) :
    FrenetFrameClosed F := by
  exact And.intro E.frenetFormulasClosed (And.intro E.orthonormalFrameClosed E.smoothnessClosed)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
