import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialLineGeometryCanonicalLaneLean.LineCongruence

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure RuledSurfacePackage {L : LineCongruencePackage} where
  surface : Type u
  generatingCurves : Prop
  strictionCurve : Prop
  developabilityCondition : Prop
  gaussianCurvature : Prop

structure RuledSurfaceEvidence {L : LineCongruencePackage} (R : RuledSurfacePackage L) where
  generatingCurvesClosed : R.generatingCurves
  strictionCurveClosed : R.strictionCurve
  developabilityConditionClosed : R.developabilityCondition
  gaussianCurvatureClosed : R.gaussianCurvature

def RuledSurfaceClosed {L : LineCongruencePackage} (R : RuledSurfacePackage L) : Prop :=
  R.generatingCurves ∧ R.strictionCurve ∧ R.developabilityCondition ∧ R.gaussianCurvature

theorem ruled_surface_closed_from_evidence {L : LineCongruencePackage} (R : RuledSurfacePackage L) (E : RuledSurfaceEvidence R) :
    RuledSurfaceClosed R := by
  exact And.intro E.generatingCurvesClosed (And.intro E.strictionCurveClosed (And.intro E.developabilityConditionClosed E.gaussianCurvatureClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse