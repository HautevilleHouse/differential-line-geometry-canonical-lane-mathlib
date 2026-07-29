import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure ParallelTransport (M : Type*) [TopologicalSpace M] [SmoothManifold M] where
  connection : VectorBundle M → VectorBundle M → VectorBundle M
  metricCompatible : Prop
  torsionFree : Prop
  parallelTransportCurve : (ℝ → M) → (ℝ → VectorBundle M) → Prop
  holonomyGroup : Type u
  parallelTransportCurveTerm : parallelTransportCurve
  holonomyGroupDefined : Prop
  metricCompatibleTerm : metricCompatible
  torsionFreeTerm : torsionFree
  holonomyGroupDefinedTerm : holonomyGroupDefined

structure ParallelTransportEvidence (P : ParallelTransport M) where
  parallelTransportCurveClosed : P.parallelTransportCurve
  metricCompatibleClosed : P.metricCompatible
  torsionFreeClosed : P.torsionFree
  holonomyGroupDefinedClosed : P.holonomyGroupDefined

def ParallelTransportClosed (P : ParallelTransport M) : Prop :=
  P.parallelTransportCurve ∧ P.metricCompatible ∧ P.torsionFree ∧ P.holonomyGroupDefined

theorem parallel_transport_closed_from_evidence (P : ParallelTransport M) (E : ParallelTransportEvidence P) :
    ParallelTransportClosed P := by
  exact And.intro E.parallelTransportCurveClosed
    (And.intro E.metricCompatibleClosed (And.intro E.torsionFreeClosed E.holonomyGroupDefinedClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse
