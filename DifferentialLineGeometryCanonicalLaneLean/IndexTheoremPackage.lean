import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialLineGeometryCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimensionTwo : Prop
  lineBundleIndex : Prop
  chernNumber : Prop
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  lineBundleIndexClosed : I.lineBundleIndex
  chernNumberClosed : I.chernNumber
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.lineBundleIndex ∧ I.chernNumber ∧ I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.lineBundleIndexClosed
    (And.intro E.chernNumberClosed
      (And.intro E.analyticIndexClosed
        (And.intro E.topologicalIndexClosed E.indexEqualityClosed)))

end DifferentialLineGeometryCanonicalLaneLean
end HautevilleHouse