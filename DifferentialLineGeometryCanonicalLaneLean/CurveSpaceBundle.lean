import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

/-!
# Curve Space Bundle

This module defines the bundle of directed lines in a Riemannian 3-manifold,
recording the geometric data needed for line geometry invariants.
-/

structure CurveSpaceBundle where
  base : Type u
  fiber : Type v
  projection : base → fiber
  smoothFiberwiseMetric : Prop
  connectionData : Prop
  holonomyRepresentation : Prop

structure CurveSpaceEvidence (B : CurveSpaceBundle) where
  smoothFiberwiseMetricClosed : B.smoothFiberwiseMetric
  connectionDataClosed : B.connectionData
  holonomyRepresentationClosed : B.holonomyRepresentation

def CurveSpaceClosed (B : CurveSpaceBundle) : Prop :=
  B.smoothFiberwiseMetric ∧ B.connectionData ∧ B.holonomyRepresentation

theorem curve_space_closed_from_evidence (B : CurveSpaceBundle) (E : CurveSpaceEvidence B) :
    CurveSpaceClosed B := by
  exact And.intro E.smoothFiberwiseMetricClosed
    (And.intro E.connectionDataClosed E.holonomyRepresentationClosed)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse