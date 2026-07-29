import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure CurveInvariantsPackage where
  curve : Type u
  curvature : Type v
  torsion : Type w
  frenetFrame : Prop
  curvatureInvariance : Prop
  torsionInvariance : Prop

structure CurveInvariantsEvidence (C : CurveInvariantsPackage) where
  frenetFrameClosed : C.frenetFrame
  curvatureInvarianceClosed : C.curvatureInvariance
  torsionInvarianceClosed : C.torsionInvariance

def CurveInvariantsClosed (C : CurveInvariantsPackage) : Prop :=
  C.frenetFrame ∧ C.curvatureInvariance ∧ C.torsionInvariance

theorem curve_invariants_closed_from_evidence (C : CurveInvariantsPackage) (E : CurveInvariantsEvidence C) :
    CurveInvariantsClosed C := by
  exact And.intro E.frenetFrameClosed (And.intro E.curvatureInvarianceClosed E.torsionInvarianceClosed)

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse