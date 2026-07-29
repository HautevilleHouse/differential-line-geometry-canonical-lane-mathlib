import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure LineCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  curvatureForm : Type w
  lineBundle : Type x
  smoothStructure : Prop
  metricSmooth : Prop
  connectionFlat : Prop
  curvatureClosed : Prop
  chernClass : Prop

structure LineCurvatureEvidence (L : LineCurvaturePackage) where
  smoothStructureClosed : L.smoothStructure
  metricSmoothClosed : L.metricSmooth
  connectionFlatClosed : L.connectionFlat
  curvatureClosedClosed : L.curvatureClosed
  chernClassClosed : L.chernClass

def LineCurvatureClosed (L : LineCurvaturePackage) : Prop :=
  L.smoothStructure ∧ L.metricSmooth ∧ L.connectionFlat ∧ L.curvatureClosed ∧ L.chernClass

theorem line_curvature_closed_from_evidence (L : LineCurvaturePackage) (E : LineCurvatureEvidence L) :
    LineCurvatureClosed L := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.connectionFlatClosed
        (And.intro E.curvatureClosedClosed E.chernClassClosed)))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse