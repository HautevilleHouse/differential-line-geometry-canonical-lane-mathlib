import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure ComplexLineGeometryPackage where
  complexManifold : Type u
  topology : TopologicalSpace complexManifold
  holomorphicLineBundle : Type v
  chernConnection : Type w
  firstChernClass : Prop
  hermiteanMetric : Prop
  curvatureCompatible : Prop
  chernClassFromCurvature : Prop

structure ComplexLineGeometryEvidence (C : ComplexLineGeometryPackage) where
  firstChernClassClosed : C.firstChernClass
  hermiteanMetricClosed : C.hermiteanMetric
  curvatureCompatibleClosed : C.curvatureCompatible
  chernClassFromCurvatureClosed : C.chernClassFromCurvature

def ComplexLineGeometryClosed (C : ComplexLineGeometryPackage) : Prop :=
  C.firstChernClass ∧ C.hermiteanMetric ∧ C.curvatureCompatible ∧ C.chernClassFromCurvature

theorem complex_line_geometry_closed_from_evidence (C : ComplexLineGeometryPackage) (E : ComplexLineGeometryEvidence C) :
    ComplexLineGeometryClosed C := by
  exact And.intro E.firstChernClassClosed
    (And.intro E.hermiteanMetricClosed
      (And.intro E.curvatureCompatibleClosed E.chernClassFromCurvatureClosed))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse